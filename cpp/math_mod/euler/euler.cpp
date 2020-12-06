#include <iostream>
#include <math.h>

using namespace std;

double fex(double x)
{
	return x + exp(-x);
}
double f(double x, double y)
{
	return -y + x + 1;
}

int main ()
{
	double x[100], z[100], Yel[100], Yel1[100], Erel1[100], Erel[100], h=0.001;
	int i;
	Yel[0] = 1;
	Yel1[0] = 1;
	
	x[0] = 0;
	z[0] = 0;
	cout<<"X Yel1 error(el)"<<endl;
	for(i=1; i<40; i++){
		x[i] = x[i-1] + h;
		Yel[i] = Yel[i-1] + h*f(x[i-1], Yel[i-1]);
		Erel[i] = fabs((fex(x[i])-Yel[i])/fex(x[i]));
		cout<<x[i]<<"\t"<<Yel[i]<<"\t"<<Erel[i]<<"\t"<<endl;
	}
	h = h/2;
	for(i=1; i<40; i++){
		z[i] = z[i-1] + h;
		Yel1[i] = Yel1[i-1] + h*f(z[i-1], Yel1[i-1]);
		Erel1[i] = fabs((fex(z[i]) - Yel1[i])/fex(z[i]));
		cout<<x[i]<<"\t"<<Yel1[i]<<"\t"<<Erel[i]<<"\t"<<endl;
	}
	
		cout<<" X Yel1 error(el)"<<endl;
	for(i=1; i<20; i++){
		cout<<z[2*i]<<"\t"<<Erel1[2*i]/Erel[i]<<"\t"<<endl;
	}
	return 0;
}


