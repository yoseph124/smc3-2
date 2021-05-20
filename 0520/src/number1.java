import java.util.Scanner;

public class number1 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("500 이하의 자연수를 입력하세요.");
		int a=scan.nextInt(),b=0;
		for(int i=0;i<=a;i++){
			if(i%3==0){
				if(i%2!=0){
					System.out.println(i);
					b+=i;
				}
			}
		}
		System.out.println("1~"+a+"까지의 3의 배수이면서 홀수인 수의 합은"+b+"입니다.");
	}

}

