import java.util.Random;
import java.util.Scanner;
public class Number {
	public static void main(String[] args) {
		Random ra = new Random();
		Scanner scnn = new Scanner(System.in);
		System.out.print("10개의 랜덤 숫자 중 하나를 맞춰보세요(1~50까지):");
		int number = scnn.nextInt(), i, a, b=0;
		for(i=0;i<=9;i++) {
			a = ra.nextInt(50)+1;
			System.out.print(a+" ");
			if(number==a) b=1;
		}
		if(b==1) System.out.println("\n당첨! 일치하는 숫자가 있습니다.");
		else System.out.println("\n아쉽군요! 일치하는 숫자가 없습니다.");
	}
}
