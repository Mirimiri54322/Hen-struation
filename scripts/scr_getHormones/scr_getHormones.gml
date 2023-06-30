/// @description Get the estrogen level as a percentage of the maximum for a given cycle day.
function GetEstrogen(day){
	return 0.01 * (0.166 - 0.227 * day + 0.395 * power(day, 2) - 0.174 * power(day, 3) + 0.036 *power(day, 4) - 4.02 * power(10, -3) * power(day, 5) + 2.61 * power(10, -0.4) * power(day, 6) - power(10, -5) * power(day, 7) + 2.18 * power(10, -7) * power(day, 8) - 2.36 * power(10, -9) * power(day, 9) + 8.56 * power(10, -12) * power(day, 10));
}