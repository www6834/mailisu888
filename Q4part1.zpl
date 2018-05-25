var y1;
var y2;

maximize mat_1:
	y1 + y2;

subto constrain_1:
	y1 - y2 <= 2;
subto constrain_2:
	3*y1 + y2 <= 21;
subto constrain_3:
	y1 + 5*y2 <= 34;