import java.util.Scanner;

public class number1 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("500 ������ �ڿ����� �Է��ϼ���.");
		int a=scan.nextInt(),b=0;
		for(int i=0;i<=a;i++){
			if(i%3==0){
				if(i%2!=0){
					System.out.println(i);
					b+=i;
				}
			}
		}
		System.out.println("1~"+a+"������ 3�� ����̸鼭 Ȧ���� ���� ����"+b+"�Դϴ�.");
	}

}

