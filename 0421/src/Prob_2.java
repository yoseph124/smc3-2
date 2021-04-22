import java.util.Scanner;

public class Prob_2 {

	public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		int num1, sum=0, i=1;
		System.out.println("1000 이하의 자연수를 입력하세요.");
		num1=scan.nextInt();
		
		
		while(i<=num1) {
			if(i%4==0) {
				System.out.println(i);
				sum+=i;
			}
			i++;
		}
		System.out.println("1~"+num1+"까지 4의 배수의 합은 "+sum+"입니다.");

	}

}
