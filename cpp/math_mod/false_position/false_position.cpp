#include <iostream>
#include <math.h>
using namespace std;

double f(double x)
{
	double g;
	if (x==0)
		g=-10000;
	else
		g=x-exp(1/x);
	return g;
}

double falsePoint(double A, double B)
{
	double C;
	C = B - f(B)*(B-A)/(f(B) - f(A));
	return C;
}

int main()
{
	double point_A, point_B, accuracity, answer;
	bool PoitsIsGood = false;
	cout << "This is a program for calculating the false position root method";
	cout << "\nPlease enter needed accuracity - ";
	cin >> accuracity;
	cout << "Now the program will ask you to enter the interval in which the function crosses zero\n";
	while (PoitsIsGood == false)
	{ 
		cout << "Please enter point A - ";
		cin >> point_A;
		cout << "Please enter point B - ";
		cin >> point_B;
		if ( (f(point_A)*f(point_B)) < 0 )
		{
			PoitsIsGood = true;
			cout << "Good job\n";
		} else
		{
			cout << "Try again\n";
		};
	};
	answer = falsePoint(point_A, point_B);
	while (abs(f(answer) - 0) > accuracity)
	{
		if ((f(answer) * f(point_A)) < 0 )
		{
			point_B = answer;
			answer = falsePoint(point_A, point_B);
		} else
		{
			point_A = answer;
			answer = falsePoint(point_A, point_B);
		};
	};
	cout << "Answer - " << answer; 
	
	return 0;
}
