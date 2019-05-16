// -----------------------------------------------------------------
//   |    程式功能. 收費機制    |    範例編號. Study5_01.dev    |  
//    |    應用單位. 巨匠電腦    |    專案設計. Tsaigo Ho        |  
// -----------------------------------------------------------------

#include <iostream>
#include <iomanip>

/* run this program using the console pauser or add your own getch, 
   system("pause") or input loop */

using namespace std;

int main(int argc, char** argv) {
	float Rate[]={0,0.08,0.15,0.18,0.2,0.25} ; 
	cout<<"\n\t【巨匠市集‧收費機制】\n\n";
	for (int i=0;i<6;i++)  {
		int Pay=(1-Rate[i])*100; 
		cout<<" | 貴賓等級 - "<<i<<" | " 
		    <<setw(3)<<Pay<<"% 本金"; 
	    cout<<" | 折扣"
		    <<setw(3)<<100-Pay<<"% |";
		cout<<endl;
	}
	cout<<endl;
	system("pause");
	return 0;
}
