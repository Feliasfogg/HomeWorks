#include <iostream>
#include "mergesorting.h"
using namespace std;

void mergeSort(int a[], int left int right) //лефт и райт - это стороны массива правая и левая. т.к массив мы делим на лапопам
{
    if(left<right)
    {
        mergeSort(a, left, (left+right)/2);
        mergeSort(a, (left+right)/2+1, right);
        merge(a,left,right);
    }
}