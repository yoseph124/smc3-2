import java.util.Random;
import java.util.Scanner;//스케너와 렌덤 생성
public class Number {
	public static void main(String[] args) {
		Random ra = new Random();//랜덤문 생성
		Scanner scnn = new Scanner(System.in);//스케너 생성
		System.out.print("10개의 랜덤 숫자 중 하나를 맞춰보세요(1~50까지):");
		int number = scnn.nextInt(), i, a, b=0;//스켄받기& 정수형 생성
		for(i=0;i<=9;i++) {//반복문 생성
			a = ra.nextInt(50)+1;//랜덤숫자 받기
			System.out.print(a+" ");//랜덤숫자 출력
			if(number==a) b=1;//랜덤숫자 일치확인
		}
		if(b==1) System.out.println("\n당첨! 일치하는 숫자가 있습니다.");//일치확인
		else System.out.println("\n아쉽군요! 일치하는 숫자가 없습니다.");//일치확인
	}
}
