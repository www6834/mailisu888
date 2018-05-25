var y1;
var y2;
var y3;
var y4;
var y5;
var y6;

maximize profit:
	y1 + y2 + y3;
subto constrain_1:
	3 * y1 + 5 * y2 - y3 + y4 == 12;
subto constrain_2:
	y1 + y3 + y5 == 7;
subto constrain_3:
	y1 - y2 + 2*y3 + y6 == 9;
subto constrain_4:
	y1 >= 0;
subto constrain_5:
	y2 >= 0;
subto constrain_6:
	y3 >= 0;