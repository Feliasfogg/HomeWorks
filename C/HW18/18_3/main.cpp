/*3. Создать приложение для вычисления значения арифметического
выражения, которое может включать в себя действительные числа, а также
круглые скобки и следующие операции: +, -, *, /, ^ (возведение в степень).
Вычисления должны производиться с учетом скобок и приоритетов
используемых операций. Предусмотреть корректную обработку возможных
ошибок и информирование о них пользователя.*/
#include "main.h"
int main() {
    char str[SIZE]= {}, str1[SIZE]= {}, str2[SIZE]= {}, str_buf[SIZE]= {};
    char* p=NULL;//указатель на знак в строке
    char signs[]="+-*/";
    char sgn;
    int len, len1, len2;
    double dig1, dig2;
    cout<<"\tКалькулятор, введите выражение\n";
    scanf("%s", &str);
    len=strlen(str);//общая длина строки
    //убираем из строки все левые знаки
    repair(str, str_buf, len);
    //цикл ищет знак действия
    if(p=strpbrk(str_buf, signs)) {
		//функция ищет в строке str_buf первое вхождение любого символа из строки signs, возвращая указатель на это вохождение
        sgn=*p;//разыменовываем указатель на занк и записываем сам знак действия в перменную sgn
    }
    //проверка наличия знака действия
    if(p!=NULL) {
        len2=strlen(p)-1;//длина строки после знака + - * / это и будет длина второго числа
        len1=len-len2-1;//длина первого числа
        strncpy(str1,str_buf,len1);//копирование строки с первой цифрой
        strncpy(str2, p+1 ,len2);//копирование строки со второй цифрой
        dig1=atof(str1);
        dig2=atof(str2);
        calculate(dig1, dig2, sgn);

    } else {
        cout<<"\tВы пропустили ввод знака действия, повторите ввод\n";
    }
    return 0;
}