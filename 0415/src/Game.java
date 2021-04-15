import java.util.Random;
import java.util.Scanner;
public class Game {

public static void game(int user,int com) {
	String userstring="", comstring="";
	
	switch (user) {
	case 1: userstring = "가위";
			break;
	case 2: userstring = "바위";
			break;
	case 3: userstring = "보자기";
			break;
	}
	switch (com) {
	case 1: comstring = "가위";
			break;
	case 2: comstring = "바위";
			break;
	case 3: comstring = "보자기";
			break;
	}
	System.out.println("--------가위 바위 보--------");
	System.out.println("[나:"+userstring+"]VS[컴퓨터:"+comstring+"]");
	if ((com == 1 && user == 1) || (com == 2 && user == 2) || (com == 3 && user == 3)) { 
		System.out.println("무승부..."); } 
	else if ((com == 1 && user == 2) || (com == 2 && user == 3) || (com == 3 && user == 1)) { 
		System.out.println("승리!"); } 
	else if ((com == 1 && user == 3) || (com == 2 && user == 1) || (com == 3 && user == 2)) { 
		System.out.println("패배ㅠㅠ"); }
	
}
	public static void main(String[] args) {
		Random ra = new Random();
		Scanner scnn = new Scanner(System.in);
		System.out.println("[1:가위 2:바위 3:보]");
		game(scnn.nextInt(),ra.nextInt(3)+1);
		
		

	}



}

