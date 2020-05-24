// Ky-040 encoder
const int ky_clk  = PB14;   // Connected to CLK on KY-040
const int ky_dt   = PA12;   // Connected to DT on KY-040
const int ky_sw   = PA15;   // Der Switch wird mit Pin D2 Verbunden. 

const int CHANGELIMIT = 3000;
const int adjustDiff = 110, stableDiff = 30;
const int stableTime = 800; //[ms]

const uint16_t P_WAVEFORM  = 0;
const uint16_t P_H1  = 1;
const uint16_t P_H2  = 2;
const uint16_t P_H3  = 3;
const uint16_t P_H4  = 4;  //
const uint16_t MAXPOT  = 5;
const int clockPin = PB4;

const int AVERAGE =       10;     // For the gliding average method (LP filter for noisy analog values)



const int VCO_diff = 1360;
const int LFO_diff = 450;
int VCO_diff2 = VCO_diff / 2;
int LFO_diff2 = LFO_diff / 2;


typedef struct {
  bool adjustStart;
  bool adjustEnd;
  uint32_t adjustTime;
  uint16_t Avalue;
  uint32_t avgsum;
  uint16_t mcount;
  uint16_t pin;
} Analog_type;
Analog_type a_channel[MAXPOT]; 

// Encoder vars:
uint32_t TimeOfLastDebounce = 0;
uint16_t DelayofDebounce = 10;
int16_t encoderPosCount = 0; 
uint16_t dtVal_Old = 1;
boolean bCW;
/*
LFO LED @analog pins
ADSR1 LED
ADSR2 LED

PWM1 = CV     - analog 1
PWM2 = ADSR1  - analog 2
DAC0 = LFO    - analog 3
DAC1 = ADSR2  - analog 4
*/
//Switches & buttons
const uint16_t ENCODERBT  = 0;  // Switch on encoder
const uint16_t SHIFT  = 1;  // 
const uint16_t HIGH_SW  = 2;  // 
const int noOfButtons = 3;

const int OUT1 = PB9;           // to analog adsr trigger on note on
const int OUT2 = PC15;          // Aftertouch - glide in
const int OUT3 = PB8;           // Midi clock pulses to keystep 24/4
const int OUT4 = PA7;           // NC

typedef struct {
  int portPin;                 // Pin Nunber to read;
  uint16_t debounceDelay;      // debounceDelay = 50;    // the debounce time; increase if the output flickers
  uint16_t lastDebounceTime;   // lastDebounceTime = 0;  // the last time the output pin was toggled
  uint16_t lastButtonState;    // actual state
  uint16_t buttonState; 
  bool changeInprogress = false;
 } Button_type;
Button_type buttons[noOfButtons];

void initControls() {
  // output Pins:
  pinMode(PC13, OUTPUT); // 
  pinMode(OUT1, OUTPUT);  // o1
  pinMode(OUT2, OUTPUT); // o2
  pinMode(OUT3, OUTPUT);  // o3
  pinMode(OUT4, OUTPUT); // o4
  
  // define and init input pins:
  buttons[ENCODERBT].portPin   = ky_sw;  // ky
  buttons[SHIFT].portPin       = PB5;   // Input 1
  buttons[HIGH_SW].portPin     = PB6;   // Input 2
  for(int n = 0; n < noOfButtons; n++) {
    buttons[n].debounceDelay = 200;  // 4000
    buttons[n].lastDebounceTime = 0;
    pinMode(buttons[n].portPin, INPUT_PULLUP);
    buttons[n].lastButtonState = digitalRead(buttons[n].portPin);
    buttons[n].buttonState = buttons[n].lastButtonState;
    buttons[n].changeInprogress = false;
  }

  // Define the analog input pins: 
  a_channel[P_WAVEFORM].pin   = PA4;
  a_channel[P_H1].pin    = PA0;
  a_channel[P_H2].pin  = PA1;
  a_channel[P_H3].pin  = PA2; 
  a_channel[P_H4].pin     = PA3;
 
  /*
  pin[P_LFO_PWM]      = PA7;
*/
  for (int n = 0; n < MAXPOT; n++) {
     a_channel[n].mcount = 0;
     a_channel[n].avgsum = 0;
     a_channel[n].Avalue = 0;
     pinMode(a_channel[n].pin, INPUT_ANALOG);
  }

 
}

/**
 * Gliding Average value.
 * This method simulates a capacitor to even out the noisyness of the stm32's adc.
 * @param newval the ne value, read from adc
 * @param potCh which channel to read
 */
uint32 glidingAverage(uint16 newval, uint16 potCh) {
   uint32 average = 0; 
   if (a_channel[potCh].mcount < AVERAGE) { // initial loading of the capacitor
      a_channel[potCh].avgsum += newval;
      average = a_channel[potCh].avgsum / a_channel[potCh].mcount;
      a_channel[potCh].mcount++;
   }
   else {
    // now hold and change the charge
      a_channel[potCh].avgsum -= a_channel[potCh].avgsum / AVERAGE;
      a_channel[potCh].avgsum += newval;
      average = a_channel[potCh].avgsum / AVERAGE;
   }
   return average;
}


/**
 * read an analog channel. Store value in Avalue[potCh]
 * @param potCh the analoge channel to read
 * @return true if the value was changed
 */
bool updateAnalogChannel(uint16 potCh) {
   // Read the Potentiometer value 
   bool c = false;
   /*Serial.print("Channel=");
   Serial.print(potCh);
   */
   int Nscale = adc_read(ADC2, a_channel[potCh].pin);       // ADC2 read noisy voltage value from pot.
   //Serial.print(" Nscale=");
  // Serial.print(Nscale);
   uint32 m = glidingAverage(  Nscale, potCh );   // Add the new adc value into a gliding average value
   //Serial.print(" GAverage=");
  // Serial.print(m);
   uint32 d = abs(m - a_channel[potCh].Avalue);
   //Serial.print(" diff=");
   //Serial.println(d);
   if (d > 5) {
      a_channel[potCh].Avalue = m;
      c = true;
   }
   return c;
}
// ----------- switches amd buttons: -------------------------
/**
 * @param btn number of the button/switch
 * @param mil is in 1/10 milliseconds
 * @return true if changed
 */
boolean readInputPin(uint32_t mil, int btn) {
  // Reset Button:
    bool res = false;
    uint16_t bt = digitalRead(buttons[btn].portPin); // 0=clear, 1 = neutral
   // Serial.println(bt);
    uint32_t diff = mil - buttons[btn].lastDebounceTime;
    //  Serial.println(diff);
    if (buttons[btn].lastButtonState != bt && diff > buttons[btn].debounceDelay ) {
      if (bt == 0) {
        // pressed
          buttons[btn].lastDebounceTime = mil;
        }
    }
    res = buttons[btn].lastButtonState != bt;
    buttons[btn].lastButtonState = bt; // here we save the actual button state
    return res;
}

boolean buttonWasPressed(uint32_t gtick, int btn) {
  // Reset Button:
    bool res = false;
    uint16_t bt;
    if (!buttons[btn].changeInprogress) {
        bt = digitalRead(buttons[btn].portPin); // 0=pressed, 1 = not pressed
        if (bt != buttons[btn].lastButtonState) {
          /*Serial.print("change started! oldbt=");
          Serial.print(buttons[btn].lastButtonState);
          Serial.print(" gtick=");
          Serial.print(gtick);
          Serial.print(" delay=");
          Serial.println(buttons[btn].debounceDelay);
          */
          buttons[btn].changeInprogress = true;
          buttons[btn].lastDebounceTime = gtick;
        }
    }
    else {
       uint32_t diff = gtick - buttons[btn].lastDebounceTime;
      // Serial.print("Changing diff=");
      // Serial.println(diff);
       if (diff > buttons[btn].debounceDelay) {
          buttons[btn].changeInprogress = false;
          buttons[btn].lastButtonState = buttons[btn].buttonState;
          bt = digitalRead(buttons[btn].portPin); 
          if (bt != buttons[btn].buttonState){
           buttons[btn].buttonState = bt;
            //Serial.print("Change wait done bt=");
            //Serial.println(bt);
            res = true;
         }
       }
    }
    
    return res;
}
//--- Encoder ------------------------

bool readEncoder(uint32_t mil) {
  int inc = 1;
  int dtVal = digitalRead(ky_dt);
  bool change = false;
  unsigned long diff = mil - TimeOfLastDebounce;
  if (dtVal != dtVal_Old && diff > 10 && dtVal == 0) {
    // falling flank on dt !
    bCW = digitalRead(ky_clk) == 1;
    (bCW)?encoderPosCount +=inc: encoderPosCount -=inc;
      TimeOfLastDebounce = mil; 
      change = true;
  }
  dtVal_Old = dtVal;
  return change;
}

//------- Read analog input
bool readAnalogChannel(int ch, uint32_t mil) {
    bool change = false;
    int old = a_channel[ch].Avalue;
    int r_val = adc_read(ADC2, a_channel[ch].pin); 
    int diff = abs(r_val - old);
    //Serial.print(" diff=");
    //Serial.println(diff);
     int val = r_val; 
     //int val = glidingAverage(r_val, ch ); 
     diff = abs(val - old);
     if (!a_channel[ch].adjustStart) {
          if (diff > adjustDiff) {
            //Serial.print(" Not yet in adjust mode, Diff="); 
            /*Serial.print(" r-val=");
            Serial.print(r_val);
            Serial.print(" avg-val=");
            Serial.print(val);
            Serial.print(" diff=");
            Serial.println(diff);
            */
            //Serial.println(" Start adjust mode!");
            a_channel[ch].adjustStart = true;
            a_channel[ch].adjustTime = mil;
            a_channel[ch].Avalue = val;
          }
        }
        else {
        // already in adjust mode
          if (diff < stableDiff) {
            // is the same value
            int tdiff = mil - a_channel[ch].adjustTime;
            if (tdiff > stableTime) {
              a_channel[ch].adjustStart = false;
              //Serial.println("Adjust Mode finished!");
            }
          }
          a_channel[ch].Avalue = val;
          change = true;
         //Serial.print("Adjust mode: Attack Value=");
          //Serial.println(val);
          //EEPROM.write(EEP_L1_Wave, sel);
        }
}




