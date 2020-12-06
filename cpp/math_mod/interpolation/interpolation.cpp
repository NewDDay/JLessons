#include <iostream>
#include <fstream>
using namespace std;

double x[100],f[100];

double interpol(double z, int N)
{
	double fun=0 ;
	double l[100];

	int i,j;
		
	for(i=0;i<N;i++)
	{
		l[i]=1;
		for(j=0;j<N;j++)
		{
			if(j!=i)
				l[i]=l[i]*((z-x[j])/(x[i]-x[j]));
		}
		fun=fun+l[i]*f[i];
	}
	return fun;
}

int main() 
{ 
	ifstream input_file("C:\\Users\\Thinkpad\\Desktop\\Lessons\\MatMod\\Gold_n.txt");
	if(!input_file.is_open()){
			cout<<"Input file could not be opened"<<endl;
			return 1;
	}
	
	ofstream output_file("C:\\Users\\Thinkpad\\Desktop\\Lessons\\MatMod\\Out_Gold_n.txt");
	if(!output_file.is_open()){
		cout<<"Output file could not be opened"<<endl;
		return 1;
	}
	
	for (int i=0; i!=7; i++) {
		input_file >> x[i];
		input_file >> f[i];
	}

    for (double i=0.4; i < 1.033; i+=0.025) {
	output_file<<interpol(i, 7)<<endl;
	}
	
    return 0; 
}

