/// @description Update angle and day.

currentAngle = (currentAngle - degreesPerTick) % 360;
currentDay = floor(currentAngle * 28 / -360);

camera = view_get_camera(view_current);

x = camera_get_view_x(camera) + camera_get_view_width(camera) - sprite_width / 2;
y = camera_get_view_y(camera) + sprite_height / 2;

switch currentDay
{
	// periodt.
	case 0:
		global.state = "m";
		global.player.jumpSpeed = 14; // 2 blocks
		global.estrogen = 0.15;
		global.follicleStimulatingHormone = 0.18;
		global.luteinizingHormone = 0.20;
		global.progesterone = 0.05;
	break;
	
	case 1:
		global.estrogen = 0.20;
		global.follicleStimulatingHormone = 0.17;
		global.luteinizingHormone = 0.10;
		global.progesterone = 0.03;
	break;
	
	case 2:
		global.estrogen = 0.22;
		global.follicleStimulatingHormone = 0.15;
		global.luteinizingHormone = 0.05;
		global.progesterone = 0.02;
	break;
	
	case 3:
		global.estrogen = 0.24;
		global.follicleStimulatingHormone = 0.12;
		global.luteinizingHormone = 0.03;
		global.progesterone = 0.1;
	break;
	
	case 4:
		global.estrogen = 0.25;
		global.follicleStimulatingHormone = 0.07;
		global.luteinizingHormone = 0.02;
		global.progesterone = 0.01;
	break;
	
	// follicular phase
	case 5:
		global.state = "f";
		global.estrogen = 0.24;
		global.follicleStimulatingHormone = 0.05;
		global.luteinizingHormone = 0.01;
		global.progesterone = 0.0;
	break;
	
	case 6:
		global.estrogen = 0.22;
		global.follicleStimulatingHormone = 0.07;
		global.luteinizingHormone = 0.0;
		global.progesterone = 0.0;
	break;
	
	case 7:
		global.estrogen = 0.23;
		global.follicleStimulatingHormone = 0.15;
		global.luteinizingHormone = 0.01;
		global.progesterone = 0.01;
	break;
	
	case 8:
		global.estrogen = 0.30;
		global.follicleStimulatingHormone = 0.30;
		global.luteinizingHormone = 0.04;
		global.progesterone = 0.01;
	break;
	
	case 9:
		global.estrogen = 0.50;
		global.follicleStimulatingHormone = 0.57;
		global.luteinizingHormone = 0.15;
		global.progesterone = 0.02;
	break;
	
	case 10:
		global.estrogen = 0.90;
		global.follicleStimulatingHormone = 0.80;
		global.luteinizingHormone = 0.50;
		global.progesterone = 0.03;
	break;
	
	// ovulation
	case 11:
		global.state = "o";
		global.estrogen = 1.00;
		global.follicleStimulatingHormone = 0.92;
		global.luteinizingHormone = 0.90;
		global.progesterone = 0.05;
	break;
	
	case 12:
		global.estrogen = 0.97;
		global.follicleStimulatingHormone = 1.00;
		global.luteinizingHormone = 1.00;
		global.progesterone = 0.10;
	break;
	
	case 13:
		global.estrogen = 0.90;
		global.follicleStimulatingHormone = 0.95;
		global.luteinizingHormone = 0.90;
		global.progesterone = 0.15;
	break;
	
	case 14:
		global.estrogen = 0.76;
		global.follicleStimulatingHormone = 0.70;
		global.luteinizingHormone = 0.50;
		global.progesterone = 0.20;
	break;
	
	case 15:
		global.estrogen = 0.63;
		global.follicleStimulatingHormone = 0.50;
		global.luteinizingHormone = 0.30;
		global.progesterone = 0.25;
	break;
	
	// luteal
	case 16:
		global.state = "l";
		global.estrogen = 0.51;
		global.follicleStimulatingHormone = 0.35;
		global.luteinizingHormone = 0.15;
		global.progesterone = 0.35;
	break;
	
	case 17:
		global.estrogen = 0.40;
		global.follicleStimulatingHormone = 0.25;
		global.luteinizingHormone = 0.10;
		global.progesterone = 0.60;
	break;
	
	case 18:
		global.estrogen = 0.30;
		global.follicleStimulatingHormone = 0.15;
		global.luteinizingHormone = 0.09;
		global.progesterone = 0.80;
	break;
	
	case 19:
		global.estrogen = 0.20;
		global.follicleStimulatingHormone = 0.07;
		global.luteinizingHormone = 0.08;
		global.progesterone = 0.95;
	break;
	
	case 20:
		global.estrogen = 0.12;
		global.follicleStimulatingHormone = 0.02;
		global.luteinizingHormone = 0.07;
		global.progesterone = 1.00;
	break;
	
	case 21:
		global.estrogen = 0.07;
		global.follicleStimulatingHormone = 0.0;
		global.luteinizingHormone = 0.08;
		global.progesterone = 0.98;
	break;
	
	case 22:
		global.estrogen = 0.02;
		global.follicleStimulatingHormone = 0.02;
		global.luteinizingHormone = 0.09;
		global.progesterone = 0.95;
	break;
	
	case 23:
		global.estrogen = 0.0;
		global.follicleStimulatingHormone = 0.07;
		global.luteinizingHormone = 0.10;
		global.progesterone = 0.85;
	break;
	
	case 24:
		global.estrogen = 0.02;
		global.follicleStimulatingHormone = 0.12;
		global.luteinizingHormone = 0.12;
		global.progesterone = 0.65;
	break;
	
	case 25:
		global.estrogen = 0.07;
		global.follicleStimulatingHormone = 0.17;
		global.luteinizingHormone = 0.17;
		global.progesterone = 0.30;
	break;
	
	case 26:
		global.estrogen = 0.12;
		global.follicleStimulatingHormone = 0.20;
		global.luteinizingHormone = 0.22;
		global.progesterone = 0.15;
	break;
	
	case 27:
		global.estrogen = 0.17;
		global.follicleStimulatingHormone = 0.19;
		global.luteinizingHormone = 0.25;
		global.progesterone = 0.10;
	break;
}