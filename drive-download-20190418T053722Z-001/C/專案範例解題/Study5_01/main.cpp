// -----------------------------------------------------------------
//   |    �{���\��. ���O����    |    �d�ҽs��. Study5_01.dev    |  
//    |    ���γ��. ���K�q��    |    �M�׳]�p. Tsaigo Ho        |  
// -----------------------------------------------------------------

#include <iostream>
#include <iomanip>

/* run this program using the console pauser or add your own getch, 
   system("pause") or input loop */

using namespace std;

int main(int argc, char** argv) {
	float Rate[]={0,0.08,0.15,0.18,0.2,0.25} ; 
	cout<<"\n\t�i���K�����E���O����j\n\n";
	for (int i=0;i<6;i++)  {
		int Pay=(1-Rate[i])*100; 
		cout<<" | �Q������ - "<<i<<" | " 
		    <<setw(3)<<Pay<<"% ����"; 
	    cout<<" | �馩"
		    <<setw(3)<<100-Pay<<"% |";
		cout<<endl;
	}
	cout<<endl;
	system("pause");
	return 0;
}
