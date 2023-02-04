--H� th�ng ti�p nh�n ��ng k� v� x�p h�ng 10 ng��i level cao nh�t server - Created by DinhHQ - 20110614

tbTop10 = {}
tbTop10.tbSubcribers = {}
tbTop10.tbTopList = {}
tbTop10.nST1_LVL = 1
tbTop10.nST2_LVL = 2
tbTop10.nST3_LVL = 3
tbTop10.nCUR_LVL = 4
tbTop10.nCUR_EXP = 5
tbTop10.nCUR_EXP_PERCENT = 6
tbTop10.tbFileHeader = {"Name", "TransLife_1", "TransLife_2", "TransLife_3", "CurrentLevel", "CurrentExp", "CurrentExpPercent"}
tbTop10.tbTopListFileHeader = {"Name", "CurrentLevel", "CurrentExpPercent", "TotalExp", "MonPhai", "Time"}
tbTop10.strFilePath = "vng_data/top10/"
tbTop10.strFileName = "subcribers_all.txt"
tbTop10.strTopListFileName = "toplist_all.txt"
tbTop10.nRegisterCount = 0
tbTop10.nTaskDayLimit = 2719
tbTop10.tbCurLvl_Exp =
{
	 [10] = 0.0000321,
	 [11] = 0.000043,
	 [12] = 0.0000561,
	 [13] = 0.0000718,
	 [14] = 0.0000905,
	 [15] = 0.0001126,
	 [16] = 0.0001385,
	 [17] = 0.0001686,
	 [18] = 0.0002033,
	 [19] = 0.000243,
	 [20] = 0.0002881,
	 [21] = 0.000339,
	 [22] = 0.0003961,
	 [23] = 0.00046,
	 [24] = 0.0005313,
	 [25] = 0.0006106,
	 [26] = 0.0006985,
	 [27] = 0.0007956,
	 [28] = 0.0009025,
	 [29] = 0.0010198,
	 [30] = 0.0011481,
	 [31] = 0.001288,
	 [32] = 0.0014401,
	 [33] = 0.0016055,
	 [34] = 0.0017853,
	 [35] = 0.0019806,
	 [36] = 0.0021925,
	 [37] = 0.0024221,
	 [38] = 0.0026705,
	 [39] = 0.0029388,
	 [40] = 0.0032281,
	 [41] = 0.0035395,
	 [42] = 0.0038741,
	 [43] = 0.0042345,
	 [44] = 0.0046233,
	 [45] = 0.0050431,
	 [46] = 0.0054965,
	 [47] = 0.0059861,
	 [48] = 0.0065145,
	 [49] = 0.0070843,
	 [50] = 0.0076981,
	 [51] = 0.0083585,
	 [52] = 0.0090681,
	 [53] = 0.0098341,
	 [54] = 0.0106637,
	 [55] = 0.0115641,
	 [56] = 0.0125425,
	 [57] = 0.0136061,
	 [58] = 0.0147621,
	 [59] = 0.0160177,
	 [60] = 0.0173801,
	 [61] = 0.0188565,
	 [62] = 0.0204541,
	 [63] = 0.0221923,
	 [64] = 0.0240905,
	 [65] = 0.0261681,
	 [66] = 0.0284445,
	 [67] = 0.0309391,
	 [68] = 0.0336713,
	 [69] = 0.0366605,
	 [70] = 0.0399261,
	 [71] = 0.0434875,
	 [72] = 0.0473641,
	 [73] = 0.0516043,
	 [74] = 0.0562565,
	 [75] = 0.0613691,
	 [76] = 0.0669905,
	 [77] = 0.0731691,
	 [78] = 0.0799533,
	 [79] = 0.0873915,
	 [80] = 0.0955321,
	 [81] = 0.1044235,
	 [82] = 0.1141141,
	 [83] = 0.1247149,
	 [84] = 0.1363369,
	 [85] = 0.1490911,
	 [86] = 0.1630885,
	 [87] = 0.1784401,
	 [88] = 0.1952569,
	 [89] = 0.2136499,
	 [90] = 0.2337301,
	 [91] = 0.2556085,
	 [92] = 0.2793961,
	 [93] = 0.3053291,
	 [94] = 0.3336437,
	 [95] = 0.3645761,
	 [96] = 0.3983625,
	 [97] = 0.4352391,
	 [98] = 0.4754421,
	 [99] = 0.5192077,
	 [100] = 0.5667721,
	 [101] = 0.6167721,
	 [102] = 0.6667721,
	 [103] = 0.7167721,
	 [104] = 0.7667721,
	 [105] = 0.8167721,
	 [106] = 0.8667721,
	 [107] = 0.9167721,
	 [108] = 0.9667721,
	 [109] = 1.0167721,
	 [110] = 1.0667721,
	 [111] = 1.1267721,
	 [112] = 1.1867721,
	 [113] = 1.2467721,
	 [114] = 1.3067721,
	 [115] = 1.3667721,
	 [116] = 1.4267721,
	 [117] = 1.4867721,
	 [118] = 1.5467721,
	 [119] = 1.6067721,
	 [120] = 1.6667721,
	 [121] = 1.7667721,
	 [122] = 1.8667721,
	 [123] = 1.9667721,
	 [124] = 2.0667721,
	 [125] = 2.1667721,
	 [126] = 2.2867721,
	 [127] = 2.4067721,
	 [128] = 2.5267721,
	 [129] = 2.6467721,
	 [130] = 2.7667721,
	 [131] = 3.5667721,
	 [132] = 4.3667721,
	 [133] = 5.1667721,
	 [134] = 5.9667721,
	 [135] = 6.7667721,
	 [136] = 7.7667721,
	 [137] = 8.7667721,
	 [138] = 9.7667721,
	 [139] = 10.7667721,
	 [140] = 11.7667721,
	 [141] = 13.2667721,
	 [142] = 14.7667721,
	 [143] = 16.2667721,
	 [144] = 17.7667721,
	 [145] = 19.2667721,
	 [146] = 21.7667721,
	 [147] = 24.2667721,
	 [148] = 26.7667721,
	 [149] = 29.2667721,
	 [150] = 31.7667721,
	 [151] = 35.7667721,
	 [152] = 39.7667721,
	 [153] = 43.7667721,
	 [154] = 47.7667721,
	 [155] = 51.7667721,
	 [156] = 57.7667721,
	 [157] = 63.7667721,
	 [158] = 69.7667721,
	 [159] = 75.7667721,
	 [160] = 81.7667721,
	 [161] = 90.7667721,
	 [162] = 99.7667721,
	 [163] = 108.7667721,
	 [164] = 117.7667721,
	 [165] = 126.7667721,
	 [166] = 136.7667721,
	 [167] = 146.7667721,
	 [168] = 156.7667721,
	 [169] = 166.7667721,
	 [170] = 176.7667721,
	 [171] = 186.7667721,
	 [172] = 196.7667721,
	 [173] = 206.7667721,
	 [174] = 216.7667721,
	 [175] = 226.7667721,
	 [176] = 236.7667721,
	 [177] = 246.7667721,
	 [178] = 256.7667721,
	 [179] = 266.7667721,
	 [180] = 276.7667721,
	 [181] = 286.7667721,
	 [182] = 296.7667721,
	 [183] = 306.7667721,
	 [184] = 316.7667721,
	 [185] = 326.7667721,
	 [186] = 336.7667721,
	 [187] = 346.7667721,
	 [188] = 356.7667721,
	 [189] = 366.7667721,
	 [190] = 376.7667721,
	 [191] = 386.7667721,
	 [192] = 396.7667721,
	 [193] = 406.7667721,
	 [194] = 416.7667721,
	 [195] = 426.7667721,
	 [196] = 436.7667721,
	 [197] = 446.7667721,
	 [198] = 456.7667721,
	 [199] = 466.7667721,
	 [200] = 486.7667721,
}