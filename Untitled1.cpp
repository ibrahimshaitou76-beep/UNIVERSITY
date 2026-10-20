#include<iostream>
using namespace std;
int main()
{
	float m;
	cout<<"please enter your mark   ";
	cin>>m;
	if(m>=90 && m<=100)
	{
		cout<<"A";
	}
else if(m>=80 && m<=89)
{
	cout<<"B";
}
else if (m>=70&&m<=79)
{
	cout<<"c";
}
	else if (m<60)
	{ cout<<"f";
	}
	else 
		cout<<"invalid mark";
	
	return 0;
}