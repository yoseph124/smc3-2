import java.util.Random;
import java.util.Scanner;
public class Number {
	public static void main(String[] args) {
		Random ra = new Random();
		Scanner scnn = new Scanner(System.in);
		System.out.print("10���� ���� ���� �� �ϳ��� ���纸����(1~50����):");
		int number = scnn.nextInt(), i, a, b=0;
		for(i=0;i<=9;i++) {
			a = ra.nextInt(50)+1;
			System.out.print(a+" ");
			if(number==a) b=1;
		}
		if(b==1) System.out.println("\n��÷! ��ġ�ϴ� ���ڰ� �ֽ��ϴ�.");
		else System.out.println("\n�ƽ�����! ��ġ�ϴ� ���ڰ� �����ϴ�.");
	}
}
