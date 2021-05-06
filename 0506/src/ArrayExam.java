import java.util.Scanner;
public class ArrayExam {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] arr=new int[5];
		int i,a=0,b=0;
		for(i=0;i<=4;i++){
			System.out.println((1+i)+"번 입력 :");
			arr[i]=sc.nextInt();
			if(a<arr[i]){
				a=arr[i];
				b=i+1;
			}
		}
		System.out.println("가장 큰 수는"+b+"번째 숫자인"+a);
	}

}
