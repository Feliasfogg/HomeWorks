#include <iostream>
#include <stdlib.h>
#include "average.h"

using namespace std;


int main()
{
    int n=0;
    cout<<"\t\tвведи количество необоходимых чисел для расчета\n\t\tсреднего арифмитического"<<endl;
    cin>>n;
    cout<<"\t\tвведи сами числа"<<endl;
    double array[100];/* массив больше, чем требуется, изначально он заполнен случайными числами, но
    мы будем использовать запись в него только до той ячейки, номер которой совпадет с количеством
	цифр введеных пользователем. т.е если ему требуется среднее арифмитическое 5 чисел, то массив будет
    заполняться от 0 до 4 ячейки включительно(всего 5). И делиться будет на то же число, которое ввел пользователь: на 5
    т.к в функцию передается именно количество цифр которые ввел пользователь*/
    for( int i=0; i<n; ++i)
    {
        cin>>array[i];//вводим значения в массив,  я его оставил т.к в задинии требуют чтобы я передал массив в функцию.
        //иначе я бы его вынес в функцию и тут оставил бы только ее вызов и ее вывод
    }
    cout<<"\t\tсреднее арифмитическое: "<<average(n, array);

    return 0;
}
