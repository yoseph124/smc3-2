import java.util.Random;
import java.util.Scanner;
public class Game {

public static void game(int user,int com) {
	String userstring="", comstring="";
	
	switch (user) {
	case 1: userstring = "����";
			break;
	case 2: userstring = "����";
			break;
	case 3: userstring = "���ڱ�";
			break;
	}
	switch (com) {
	case 1: comstring = "����";
			break;
	case 2: comstring = "����";
			break;
	case 3: comstring = "���ڱ�";
			break;
	}
	System.out.println("--------���� ���� ��--------");
	System.out.println("[��:"+userstring+"]VS[��ǻ��:"+comstring+"]");
	if ((com == 1 && user == 1) || (com == 2 && user == 2) || (com == 3 && user == 3)) { 
		System.out.println("���º�..."); } 
	else if ((com == 1 && user == 2) || (com == 2 && user == 3) || (com == 3 && user == 1)) { 
		System.out.println("�¸�!"); } 
	else if ((com == 1 && user == 3) || (com == 2 && user == 1) || (com == 3 && user == 2)) { 
		System.out.println("�й�Ф�"); }
	
}
	public static void main(String[] args) {
		Random ra = new Random();
		Scanner scnn = new Scanner(System.in);
		System.out.println("[1:���� 2:���� 3:��]");
		game(scnn.nextInt(),ra.nextInt(3)+1);
		
		

	}



}

