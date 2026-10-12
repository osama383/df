#include<stdio.h> 

int main(){
	
	int c;
	while((c = getchar()) != EOF){
		if(c >= 65 && c <= 90){
			putchar('_');
			putchar(c+32);
		}else {
			putchar(c);
		}
	}

	return 0;
}
