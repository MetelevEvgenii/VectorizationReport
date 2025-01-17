// Vectorization.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include <iostream>
#include <ctime>
using namespace std;
int N;

void condition(int U,int* R1,int * R2, int * L1, int* L2) {
	int i;
#pragma vector always
	for (i = 1; i <= U; i++)
		if (R1[i] > R2[i])
			L1[i] = R1[i];
		else
			L2[i] = R2[i];
}

void conditionMASK(int* MASK, int* R1, int* R2, int* L1, int* L2) {
#pragma vector always
	for (int k = 0; k < N; k++)
	{
		L1[k] = (MASK[k]) ? R1[k] : L1[k];
		L2[k] = (MASK[k]) ? L2[k] : R2[k];
	};
}

void dependencyByFour(double* a, int n) {
	for (int i = 4; i < n; i += 4)
	{
		a[i] = a[i - 1] + 1;
		a[i + 1] = 5 / a[i - 1] - a[i - 2];
		a[i + 2] = a[i - 2] + a[i - 3];
		a[i + 3] = a[i - 2] - a[i - 4];
	}
}
struct _x { int bound; };
void unsupprtStructLoop(double* x, _x* stX) {
	int local = stX->bound;
	for (int i = 0; i < local; i++)
	{
		x[i] = 1000 * 531.14;
	}
}

int main()
{
	N = 1000000;
	int* x = new int[N];
	int* x2 = new int[N];
	int* D = new int[N];
	int * A = new int[N];
	double * a = new double[N];
	int * MASK = new int[N];
	int* B = new int[N];
	for (int k = 0; k < N; k++)
	{
		x[k] = (int)rand();
		x2[k] = (int)rand();
		D[k] = (int)rand() ;
		A[k] = (int)rand();
		B[k] = (int)rand();
	}
	//test(N, x, x2, D, A);
	//dependence(N,x,B);
	for (int k = 0; k < N; k++)
	{
		MASK[k] = x[k] > x2[k];
	}
	conditionMASK(MASK, x, x2, D, A);
    return 0;
}

