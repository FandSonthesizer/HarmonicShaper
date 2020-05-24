
#include "Voice.h"
#include "PWM.h"
#include "Dac.h" 
#include "Controls.h" 

uint32_t triggerCount, mil;
uint64_t gTick = 0;
uint64_t startMeasureTime = 0, measureFreqCounter, triggerTime;
uint64_t lastActiveTime = 0;

uint64_t period = 0;
const uint64_t maxPeriod = 2000000;

int uTick = 0, globalTic;
uint16_t freq = 0, q;
float f2 = 0.0;
uint16_t measureFreqInterval = 1000; //0.1 sec Interval

uint64_t lastSampleTime = 0;
uint16_t sampleInterval = 50;
int controlNumber = 0;


const uint16_t highMuteTime = 100, lowMuteTime = 3000; // [ms]
uint16_t muteTime = highMuteTime;
const bool align = false; 
bool updateC = true, mute = false;
int lifeRate = 499;
bool test = false;
bool start = true, life;


void setup() {
  pinMode(PC13, OUTPUT); //  Onboard LED
  initControls();
  initDac();
  initPwm();
  initVoices();
  initISR();
  
  
  pinMode(clockPin, INPUT_PULLDOWN);
  attachInterrupt(clockPin, TriggerReceived, FALLING); //LOW, FALLING, RISING, CHANGE
  Serial.begin(115200);
}


  
void loop() {
  if (millis() > 500 && start) {
    start = false;
    if (align) {
      //Serial.println("Start Alignment");
      pwmWrite(PWM_OUT, maxPWMAmplitude);
      pwmWrite(PWM_OUT2, maxPWMAmplitude);
      sendToDAC(DAC0, maxDACAmplitude);
      sendToDAC(DAC1, maxDACAmplitude);
    }
    else {
      Serial.println("Harmonic Shaper");
    }
    startMeasureTime = 0;
    triggerCount = 0;
  }
  else {
   // 0-4095
   /*uint64_t actual = micros();
   uint16_t diff = lastSampleTime - actual;
   if (diff >= sampleInterval ) {
     lastSampleTime = actual;
     uint16_t v = adc_read(ADC2, PA2);
     sendToDAC(DAC0, v);
   }
   test = !test;
   */
  /* Serial.print(period);
   Serial.print(" ");
   Serial.print(period > 0);
   Serial.print(" step=");
   Serial.print(harmonys[2].step);
   Serial.print(" div=");
   Serial.println(harmonys[2].divider);
   */
   
    
   // Update analog input:
  if (!start && updateC) {
    uTick = false;
    updateAnalogControls(controlNumber);
    controlNumber++;
    if (controlNumber >= MAXPOT) {
      controlNumber = 0;
     
    }
    updateC = false;
   /* Serial.print(harmonys[0].step);
    Serial.print(" ");
    Serial.println(harmonys[0].vOutput);
    */
  }
  
  uint16_t diff = mil - lastActiveTime; // time since last trigger
  if (!mute && diff > muteTime) {
    mute = true;
 /*  Serial.print("Go Mute! muteTime=");
   Serial.print( muteTime);
  Serial.print(" diff=");
  Serial.print(diff);
  Serial.print("mute=");
  Serial.println(mute);
  */
    
  }
  digitalWrite(OUT1, mute?0:1); 
  }
}

void updateAnalogControls(int which) {
  // Buttons
  int old,val,diff, r_val, shift, high;

  shift = digitalRead(buttons[SHIFT].portPin) == 0;
  high = digitalRead(buttons[HIGH_SW].portPin);
  muteTime = (high == 0)?highMuteTime:lowMuteTime;
 /* Serial.print("Shift=");
  Serial.print(shift);
  Serial.print(" High=");
  Serial.println(high);
  */
  switch(which) {
    case 0:
      //------------Waveform: ---------------------------
      if (readAnalogChannel(P_WAVEFORM, mil)) {
          int sel = SIN;
          int val = a_channel[P_WAVEFORM].Avalue;
          if (val > 3950 )
            sel = SQR;  
          else if (val > 2800 )
            sel = RMP;  
          else if (val > 1200 )
            sel = SAW;  
          else if (val > 200 )
            sel = TRI;     
          for (int n = 0; n < VOICES; n++)
            harmonys[n].waveForm = sel;
      }
      break;
    case 1:
      //------------Volume/Divider poti: ---------------------------
      if (readAnalogChannel(P_H1, mil)) {
        if (shift) {
            setVolume(a_channel[P_H1].Avalue, 0);
        }
        else {
            setDivider(a_channel[P_H1].Avalue, 0);
        }
      }
      break;
    case 2:
      //------------Volume/Divider poti: ---------------------------
      if (readAnalogChannel(P_H2, mil)) {
        if (shift)
            setVolume(a_channel[P_H2].Avalue, 1);
        else
            setDivider(a_channel[P_H2].Avalue, 1);
      }
      break;
    case 3:
      //------------Volume/Divider poti: ---------------------------
      if (readAnalogChannel(P_H3, mil)) {
        if (shift)
            setVolume(a_channel[P_H3].Avalue, 2);
        else
            setDivider(a_channel[P_H3].Avalue, 2);
      }
      break;
    case 4:
      //------------Volume/Divider poti: ---------------------------
      if (readAnalogChannel(P_H4, mil)) {
        if (shift)
            setVolume(a_channel[P_H4].Avalue, 3);
        else
            setDivider(a_channel[P_H4].Avalue, 3);
      }
      break;
  }
}
void initISR() {
  /** 
   *  Setup Timer 2 to 25u (40000 per second)
   */
  Timer2.setMode(TIMER_CH1, TIMER_OUTPUTCOMPARE);
  Timer2.setPeriod(isr_cnt);                          // in microseconds (100u = 10kHz)
  Timer2.setCompare(TIMER_CH1, 1);                   
  Timer2.attachInterrupt(TIMER_CH1, handler_Synth);   // in this routine the synth moves through the wave-table
}

/**
 * Here we measure one period of the trigger signal
 */
void TriggerReceived() {
 uint64_t actual = micros();
  period = actual - triggerTime;
 // Serial.println(period);
  if (period > 40 && period  < maxPeriod) { // Range: 26KHz to 0.5 Hz
   // Serial.println("Valid!");
    uint32_t base = z20 / period;
    for (int n = 0; n  < VOICES; n++) {
      
       if (harmonys[n].multiply)
          harmonys[n].step = base * harmonys[n].divider;
       else 
          harmonys[n].step = base / harmonys[n].divider;   
      // harmonys[n].step = base; // test : no change
    }
  }
  else {
    period = 0;
  //  Serial.println("Invalid!");
  }
  triggerTime = actual;
  lastActiveTime = mil;
  if (mute) {
    //Serial.println("Unmute!");
    mute = false;
  }
  
 // life = !life;
 // digitalWrite(PC13, life); // Lifesign
}

void handler_Synth(void) {
  gTick++;   // count up all the time at 40khz
  globalTic++;            
  if (globalTic > 39) {
    globalTic = 0;        // 40 tics at 40 khz is one millisec.
    // one millisecond has passed--------------
    mil++;                // increase millisecond tic, used for button debounce etc.
     // Lifesign of interrupt routine, let the onboard LED blink
    uint16_t dif = mil - q;
     uTick++;
    if (uTick > 24) { // analog in update every 25 ms 
       updateC = true;
       uTick = 0;
    }
    if (dif > lifeRate ) {  // Lifesign routine 499
      q = mil;
      life = !life;
      digitalWrite(PC13, life); // Lifesign
    }
  }
 
  if (!start && !align && period > 0 && !mute) {
    // doVoice
     
       uint16_t ch2 = 0;
       addStep(0);
       ch2 = harmonys[0].vOutput + maxDACAmplitude2;
       sendToDAC(DAC0, ch2); 
       
      
       addStep(1);
       sendToDAC(DAC1, harmonys[1].vOutput + maxDACAmplitude2); 

       addStep(2);
       ch2 = (harmonys[2].vOutput * maxPWMAmplitude2) / 2047; // use maxAmplitude to scale it
       ch2 += maxPWMAmplitude2;
       pwmWrite(PWM_OUT, ch2); 

       addStep(3);
       ch2 = (harmonys[3].vOutput * maxPWMAmplitude2) / 2047; // use maxAmplitude to scale it
       ch2 += maxPWMAmplitude2;
       pwmWrite(PWM_OUT2, ch2); 
       
   }
   
}


  

  
