// -----------------------------------------------------------------
//   |    �{���\��. ��Q���R    |    �d�ҽs��. Study5_02.dev    |  
//    |    ���γ��. ���K�q��    |    �M�׳]�p. Tsaigo Ho        |  
// -----------------------------------------------------------------

#include <iostream>
#include <iomanip>
#include <cstring>

/* run this program using the console pauser or add your own getch, 
   system("pause") or input loop */

using namespace std;

int main(int argc, char** argv) {
    double Sum[3]={0},Amount=0;
    string Company[]={"�x�_�`��","�x������","��������"};	
	int Sale[][4]={{ 0,27954000,3938000,16854690 },
                   { 0,336850,419000,243815 },
                   { 0,882489,1042350,590480 }};
	cout<<"\n\t\t�i���K�ʳf���ߡE���u��Q���R�j\n\n";
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
	   cout<<"\n\t�i"<<Company[i]<<"�u���J�j"
	       <<setw(12)<<Sum[i]<<endl;
	cout<<endl<<endl
	    <<setw(38)<<Amount<<"\t�i�ʳf�����`���J�j"
	    <<endl<<endl; 
	system("pause");
	return 0;
}
