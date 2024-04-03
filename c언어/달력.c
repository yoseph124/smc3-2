#include<stdio.h>
void printMonth(int year, int month);
void printMonthTitle(int year, int month);
void printMonthName(int month);
void printMonthBody(int year, int month);
int getStartDay(int year, int month);
int getTotalNumberOfDays(int year, int month);
int getNumberOfDaysInMonth(int year, int month);
int isLeapYear(int year);

void printMonth(int year, int month) {
	printMonthTitle(year, month);
	printMonthBody(year, month);
}

void printMonthTitle(int year, int month) {
	printf(" %d년", year);
	printMonthName(month);printf("\n");
	printf("-----------------------------\n");
	printf("  일  월  화  수  목  금  토\n");
}

void printMonthName(int month) {
	switch (month) {
	case 1: printf("1월"); break;
	case 2: printf("2월"); break;
	case 3: printf("3월"); break;
	case 4: printf("4월"); break;
	case 5: printf("5월"); break;
	case 6: printf("6월"); break;
	case 7: printf("7월"); break;
	case 8: printf("8월"); break;
	case 9: printf("9월"); break;
	case 10: printf("10월"); break;
	case 11: printf("11월"); break;
	case 12: printf("12월월"); break;
	}
}

void printMonthBody(int year, int month) {
	int startday = getStartDay(year, month);
	int numberofdaysinmonth = getNumberOfDaysInMonth(year, month);

	for (int i = 0; i < startday; i++) printf("    ");
	for (int i = 1; i <= numberofdaysinmonth; i++) {
		printf("%4d", i);
		if ((i + startday) % 7 == 0) printf("\n");
	}
}

int getStartDay(int year, int month) {
	int startday1800 = 3;
	int totalnumberofdays = getTotalNumberOfDays(year, month);
	return (startday1800 + totalnumberofdays) % 7;
}

int getTotalNumberOfDays(int year, int month) {
	int total = 0;
	for (int i = 1800; i < year; i++) {
		if (isLeapYear(i)) total += 366;
		else total += 365;
	}
	for (int i = 1; i < month; i++) total = total + getNumberOfDaysInMonth(year, i);
	return total;
}

int getNumberOfDaysInMonth(int year, int month) {
	if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) return 31;
	if (month == 4 || month == 6 || month == 9 || month == 11) return 30;
	if (month == 2) {
		if (isLeapYear(year) == 1) return 29;
		else return 28;
	}
}

int isLeapYear(int year) {
	if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) return 1;
	else return 0;
}

int main(void) {
	int year, month;
    printf("년도 : ");
	scanf("%d", &year);
    printf("달 : ");
	scanf("%d", &month);
	printMonth(year, month);
	return 0;
}
