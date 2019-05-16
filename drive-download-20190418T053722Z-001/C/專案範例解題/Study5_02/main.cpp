// -----------------------------------------------------------------
//   |    程式功能. 營利分析    |    範例編號. Study5_02.dev    |  
//    |    應用單位. 巨匠電腦    |    專案設計. Tsaigo Ho        |  
// -----------------------------------------------------------------

#include <iostream>
#include <iomanip>
#include <cstring>

/* run this program using the console pauser or add your own getch, 
   system("pause") or input loop */

using namespace std;

int main(int argc, char** argv) {
    double Sum[3]={0},Amount=0;
    string Company[]={"台北總店","台中分店","高雄分店"};	
	int Sale[][4]={{ 0,27954000,3938000,16854690 },
                   { 0,336850,419000,243815 },
                   { 0,882489,1042350,590480 }};
	cout<<"\n\t\t【巨匠百貨中心‧首季營利分析】\n\n";
	for (int i=0;i<=2;i++)  {
	   cout<<setw(12)<<Company[i];
	   for (int j=1;j<=3;j++) {
	      Sum[i]+=static_cast<double>(Sale[i][j]);
		  cout<<" | "<<setw(12)<<Sale[i][j];
	   }	
	   Amount+=Sum[i]; cout<<endl<<endl;
	}
	cout.precision(12);
	for (int i=0;i<=2;i++)
	   cout<<"\n\t【"<<Company[i]<<"季收入】"
	       <<setw(12)<<Sum[i]<<endl;
	cout<<endl<<endl
	    <<setw(38)<<Amount<<"\t【百貨中心總收入】"
	    <<endl<<endl; 
	system("pause");
	return 0;
}
