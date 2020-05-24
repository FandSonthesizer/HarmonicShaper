
uint16_t TriLengthInt = 2048;
// tri, 2048 byte
const int16_t PROGMEM triInt[] = {
-2046,-2042,-2038,-2034,-2030,-2026,-2022,-2018,-2014,-2010,-2006,-2002,-1998,-1994,-1990,-1986,
-1982,-1978,-1974,-1970,-1966,-1962,-1958,-1954,-1950,-1946,-1942,-1938,-1934,-1930,-1926,-1922,
-1918,-1914,-1910,-1906,-1902,-1898,-1894,-1890,-1886,-1882,-1878,-1874,-1870,-1866,-1862,-1858,
-1854,-1850,-1846,-1842,-1838,-1834,-1830,-1826,-1822,-1818,-1814,-1810,-1806,-1802,-1798,-1794,
-1790,-1786,-1782,-1778,-1774,-1770,-1766,-1762,-1758,-1754,-1750,-1746,-1742,-1738,-1734,-1730,
-1726,-1722,-1718,-1714,-1710,-1706,-1702,-1698,-1694,-1690,-1686,-1682,-1678,-1674,-1670,-1666,
-1662,-1658,-1654,-1650,-1646,-1642,-1638,-1634,-1630,-1626,-1622,-1618,-1614,-1610,-1606,-1602,
-1598,-1594,-1590,-1586,-1582,-1578,-1574,-1570,-1566,-1562,-1558,-1554,-1550,-1546,-1542,-1538,
-1534,-1530,-1526,-1522,-1518,-1514,-1510,-1506,-1502,-1498,-1494,-1490,-1486,-1482,-1478,-1474,
-1470,-1466,-1462,-1458,-1454,-1450,-1446,-1442,-1438,-1434,-1430,-1426,-1422,-1418,-1414,-1410,
-1406,-1402,-1398,-1394,-1390,-1386,-1382,-1378,-1374,-1370,-1366,-1362,-1358,-1354,-1350,-1346,
-1342,-1338,-1334,-1330,-1326,-1322,-1318,-1314,-1310,-1306,-1302,-1298,-1294,-1290,-1286,-1282,
-1278,-1274,-1270,-1266,-1262,-1258,-1254,-1250,-1246,-1242,-1238,-1234,-1230,-1226,-1222,-1218,
-1214,-1210,-1206,-1202,-1198,-1194,-1190,-1186,-1182,-1178,-1174,-1170,-1166,-1162,-1158,-1154,
-1150,-1146,-1142,-1138,-1134,-1130,-1126,-1122,-1118,-1114,-1110,-1106,-1102,-1098,-1094,-1090,
-1086,-1082,-1078,-1074,-1070,-1066,-1062,-1058,-1054,-1050,-1046,-1042,-1038,-1034,-1030,-1026,
-1022,-1018,-1014,-1010,-1006,-1002,-998,-994,-990,-986,-982,-978,-974,-970,-966,-962,
-958,-954,-950,-946,-942,-938,-934,-930,-926,-922,-918,-914,-910,-906,-902,-898,
-894,-890,-886,-882,-878,-874,-870,-866,-862,-858,-854,-850,-846,-842,-838,-834,
-830,-826,-822,-818,-814,-810,-806,-802,-798,-794,-790,-786,-782,-778,-774,-770,
-766,-762,-758,-754,-750,-746,-742,-738,-734,-730,-726,-722,-718,-714,-710,-706,
-702,-698,-694,-690,-686,-682,-678,-674,-670,-666,-662,-658,-654,-650,-646,-642,
-638,-634,-630,-626,-622,-618,-614,-610,-606,-602,-598,-594,-590,-586,-582,-578,
-574,-570,-566,-562,-558,-554,-550,-546,-542,-538,-534,-530,-526,-522,-518,-514,
-510,-506,-502,-498,-494,-490,-486,-482,-478,-474,-470,-466,-462,-458,-454,-450,
-446,-442,-438,-434,-430,-426,-422,-418,-414,-410,-406,-402,-398,-394,-390,-386,
-382,-378,-374,-370,-366,-362,-358,-354,-350,-346,-342,-338,-334,-330,-326,-322,
-318,-314,-310,-306,-302,-298,-294,-290,-286,-282,-278,-274,-270,-266,-262,-258,
-254,-250,-246,-242,-238,-234,-230,-226,-222,-218,-214,-210,-206,-202,-198,-194,
-190,-186,-182,-178,-174,-170,-166,-162,-158,-154,-150,-146,-142,-138,-134,-130,
-126,-122,-118,-114,-110,-106,-102,-98,-94,-90,-86,-82,-78,-74,-70,-66,
-62,-58,-54,-50,-46,-42,-38,-34,-30,-26,-22,-18,-14,-10,-6,-2,
1,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,
64,68,72,76,80,84,88,92,96,100,104,108,112,116,120,124,
128,132,136,140,144,148,152,156,160,164,168,172,176,180,184,188,
192,196,200,204,208,212,216,220,224,228,232,236,240,244,248,252,
256,260,264,268,272,276,280,284,288,292,296,300,304,308,312,316,
320,324,328,332,336,340,344,348,352,356,360,364,368,372,376,380,
384,388,392,396,400,404,408,412,416,420,424,428,432,436,440,444,
448,452,456,460,464,468,472,476,480,484,488,492,496,500,504,508,
512,516,520,524,528,532,536,540,544,548,552,556,560,564,568,572,
576,580,584,588,592,596,600,604,608,612,616,620,624,628,632,636,
640,644,648,652,656,660,664,668,672,676,680,684,688,692,696,700,
704,708,712,716,720,724,728,732,736,740,744,748,752,756,760,764,
768,772,776,780,784,788,792,796,800,804,808,812,816,820,824,828,
832,836,840,844,848,852,856,860,864,868,872,876,880,884,888,892,
896,900,904,908,912,916,920,924,928,932,936,940,944,948,952,956,
960,964,968,972,976,980,984,988,992,996,1000,1004,1008,1012,1016,1020,
1024,1028,1032,1036,1040,1044,1048,1052,1056,1060,1064,1068,1072,1076,1080,1084,
1088,1092,1096,1100,1104,1108,1112,1116,1120,1124,1128,1132,1136,1140,1144,1148,
1152,1156,1160,1164,1168,1172,1176,1180,1184,1188,1192,1196,1200,1204,1208,1212,
1216,1220,1224,1228,1232,1236,1240,1244,1248,1252,1256,1260,1264,1268,1272,1276,
1280,1284,1288,1292,1296,1300,1304,1308,1312,1316,1320,1324,1328,1332,1336,1340,
1344,1348,1352,1356,1360,1364,1368,1372,1376,1380,1384,1388,1392,1396,1400,1404,
1408,1412,1416,1420,1424,1428,1432,1436,1440,1444,1448,1452,1456,1460,1464,1468,
1472,1476,1480,1484,1488,1492,1496,1500,1504,1508,1512,1516,1520,1524,1528,1532,
1536,1540,1544,1548,1552,1556,1560,1564,1568,1572,1576,1580,1584,1588,1592,1596,
1600,1604,1608,1612,1616,1620,1624,1628,1632,1636,1640,1644,1648,1652,1656,1660,
1664,1668,1672,1676,1680,1684,1688,1692,1696,1700,1704,1708,1712,1716,1720,1724,
1728,1732,1736,1740,1744,1748,1752,1756,1760,1764,1768,1772,1776,1780,1784,1788,
1792,1796,1800,1804,1808,1812,1816,1820,1824,1828,1832,1836,1840,1844,1848,1852,
1856,1860,1864,1868,1872,1876,1880,1884,1888,1892,1896,1900,1904,1908,1912,1916,
1920,1924,1928,1932,1936,1940,1944,1948,1952,1956,1960,1964,1968,1972,1976,1980,
1984,1988,1992,1996,2000,2004,2008,2012,2016,2020,2024,2028,2032,2036,2040,2044,
2048,2044,2040,2036,2032,2028,2024,2020,2016,2012,2008,2004,2000,1996,1992,1988,
1984,1980,1976,1972,1968,1964,1960,1956,1952,1948,1944,1940,1936,1932,1928,1924,
1920,1916,1912,1908,1904,1900,1896,1892,1888,1884,1880,1876,1872,1868,1864,1860,
1856,1852,1848,1844,1840,1836,1832,1828,1824,1820,1816,1812,1808,1804,1800,1796,
1792,1788,1784,1780,1776,1772,1768,1764,1760,1756,1752,1748,1744,1740,1736,1732,
1728,1724,1720,1716,1712,1708,1704,1700,1696,1692,1688,1684,1680,1676,1672,1668,
1664,1660,1656,1652,1648,1644,1640,1636,1632,1628,1624,1620,1616,1612,1608,1604,
1600,1596,1592,1588,1584,1580,1576,1572,1568,1564,1560,1556,1552,1548,1544,1540,
1536,1532,1528,1524,1520,1516,1512,1508,1504,1500,1496,1492,1488,1484,1480,1476,
1472,1468,1464,1460,1456,1452,1448,1444,1440,1436,1432,1428,1424,1420,1416,1412,
1408,1404,1400,1396,1392,1388,1384,1380,1376,1372,1368,1364,1360,1356,1352,1348,
1344,1340,1336,1332,1328,1324,1320,1316,1312,1308,1304,1300,1296,1292,1288,1284,
1280,1276,1272,1268,1264,1260,1256,1252,1248,1244,1240,1236,1232,1228,1224,1220,
1216,1212,1208,1204,1200,1196,1192,1188,1184,1180,1176,1172,1168,1164,1160,1156,
1152,1148,1144,1140,1136,1132,1128,1124,1120,1116,1112,1108,1104,1100,1096,1092,
1088,1084,1080,1076,1072,1068,1064,1060,1056,1052,1048,1044,1040,1036,1032,1028,
1024,1020,1016,1012,1008,1004,1000,996,992,988,984,980,976,972,968,964,
960,956,952,948,944,940,936,932,928,924,920,916,912,908,904,900,
896,892,888,884,880,876,872,868,864,860,856,852,848,844,840,836,
832,828,824,820,816,812,808,804,800,796,792,788,784,780,776,772,
768,764,760,756,752,748,744,740,736,732,728,724,720,716,712,708,
704,700,696,692,688,684,680,676,672,668,664,660,656,652,648,644,
640,636,632,628,624,620,616,612,608,604,600,596,592,588,584,580,
576,572,568,564,560,556,552,548,544,540,536,532,528,524,520,516,
512,508,504,500,496,492,488,484,480,476,472,468,464,460,456,452,
448,444,440,436,432,428,424,420,416,412,408,404,400,396,392,388,
384,380,376,372,368,364,360,356,352,348,344,340,336,332,328,324,
320,316,312,308,304,300,296,292,288,284,280,276,272,268,264,260,
256,252,248,244,240,236,232,228,224,220,216,212,208,204,200,196,
192,188,184,180,176,172,168,164,160,156,152,148,144,140,136,132,
128,124,120,116,112,108,104,100,96,92,88,84,80,76,72,68,
64,60,56,52,48,44,40,36,32,28,24,20,16,12,8,4,
1,-2,-6,-10,-14,-18,-22,-26,-30,-34,-38,-42,-46,-50,-54,-58,
-62,-66,-70,-74,-78,-82,-86,-90,-94,-98,-102,-106,-110,-114,-118,-122,
-126,-130,-134,-138,-142,-146,-150,-154,-158,-162,-166,-170,-174,-178,-182,-186,
-190,-194,-198,-202,-206,-210,-214,-218,-222,-226,-230,-234,-238,-242,-246,-250,
-254,-258,-262,-266,-270,-274,-278,-282,-286,-290,-294,-298,-302,-306,-310,-314,
-318,-322,-326,-330,-334,-338,-342,-346,-350,-354,-358,-362,-366,-370,-374,-378,
-382,-386,-390,-394,-398,-402,-406,-410,-414,-418,-422,-426,-430,-434,-438,-442,
-446,-450,-454,-458,-462,-466,-470,-474,-478,-482,-486,-490,-494,-498,-502,-506,
-510,-514,-518,-522,-526,-530,-534,-538,-542,-546,-550,-554,-558,-562,-566,-570,
-574,-578,-582,-586,-590,-594,-598,-602,-606,-610,-614,-618,-622,-626,-630,-634,
-638,-642,-646,-650,-654,-658,-662,-666,-670,-674,-678,-682,-686,-690,-694,-698,
-702,-706,-710,-714,-718,-722,-726,-730,-734,-738,-742,-746,-750,-754,-758,-762,
-766,-770,-774,-778,-782,-786,-790,-794,-798,-802,-806,-810,-814,-818,-822,-826,
-830,-834,-838,-842,-846,-850,-854,-858,-862,-866,-870,-874,-878,-882,-886,-890,
-894,-898,-902,-906,-910,-914,-918,-922,-926,-930,-934,-938,-942,-946,-950,-954,
-958,-962,-966,-970,-974,-978,-982,-986,-990,-994,-998,-1002,-1006,-1010,-1014,-1018,
-1022,-1026,-1030,-1034,-1038,-1042,-1046,-1050,-1054,-1058,-1062,-1066,-1070,-1074,-1078,-1082,
-1086,-1090,-1094,-1098,-1102,-1106,-1110,-1114,-1118,-1122,-1126,-1130,-1134,-1138,-1142,-1146,
-1150,-1154,-1158,-1162,-1166,-1170,-1174,-1178,-1182,-1186,-1190,-1194,-1198,-1202,-1206,-1210,
-1214,-1218,-1222,-1226,-1230,-1234,-1238,-1242,-1246,-1250,-1254,-1258,-1262,-1266,-1270,-1274,
-1278,-1282,-1286,-1290,-1294,-1298,-1302,-1306,-1310,-1314,-1318,-1322,-1326,-1330,-1334,-1338,
-1342,-1346,-1350,-1354,-1358,-1362,-1366,-1370,-1374,-1378,-1382,-1386,-1390,-1394,-1398,-1402,
-1406,-1410,-1414,-1418,-1422,-1426,-1430,-1434,-1438,-1442,-1446,-1450,-1454,-1458,-1462,-1466,
-1470,-1474,-1478,-1482,-1486,-1490,-1494,-1498,-1502,-1506,-1510,-1514,-1518,-1522,-1526,-1530,
-1534,-1538,-1542,-1546,-1550,-1554,-1558,-1562,-1566,-1570,-1574,-1578,-1582,-1586,-1590,-1594,
-1598,-1602,-1606,-1610,-1614,-1618,-1622,-1626,-1630,-1634,-1638,-1642,-1646,-1650,-1654,-1658,
-1662,-1666,-1670,-1674,-1678,-1682,-1686,-1690,-1694,-1698,-1702,-1706,-1710,-1714,-1718,-1722,
-1726,-1730,-1734,-1738,-1742,-1746,-1750,-1754,-1758,-1762,-1766,-1770,-1774,-1778,-1782,-1786,
-1790,-1794,-1798,-1802,-1806,-1810,-1814,-1818,-1822,-1826,-1830,-1834,-1838,-1842,-1846,-1850,
-1854,-1858,-1862,-1866,-1870,-1874,-1878,-1882,-1886,-1890,-1894,-1898,-1902,-1906,-1910,-1914,
-1918,-1922,-1926,-1930,-1934,-1938,-1942,-1946,-1950,-1954,-1958,-1962,-1966,-1970,-1974,-1978,
-1982,-1986,-1990,-1994,-1998,-2002,-2006,-2010,-2014,-2018,-2022,-2026,-2030,-2034,-2038,-2042
};

int16_t getTriInt(uint16_t index) {
  return pgm_read_word( &triInt[index] );
}
