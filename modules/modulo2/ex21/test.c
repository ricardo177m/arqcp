extern int i;

short func() {
	short result = 5;

	switch(i) {
		case 15:
			result = 10;
			break;
		case 16:
		case 17:
			result += 4;
			break;
		case 18:
			result -= 10;
			break;
		case 19:
		case 20:
			result += 18;
			break;
		case 21:
			result += 11;
			break;
		case 22:
			result = 100;
			break;
		case 23:
			result = 1000;
			break;

		default:
			result = 0;

	}
	
	return result;
}
