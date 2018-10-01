#include <stdio.h>
 
#define thirtytwo 32
#define D_CONST thirtytwo

int pascals(int *x, int *y, int d)
{
	int i;
	for (i = 1; i < d; i++)
		printf("%d%c", y[i] = x[i - 1] + x[i],
			i < d - 1 ? ' ' : '\n');
 
	return D_CONST > d ? pascals(y, x, d + 1) : 0;
}
 
int main()
{
	int x[D_CONST] = {0, 1, 0}, y[D_CONST] = {0};
	return pascals(x, y, 0);
}