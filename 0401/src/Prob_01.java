import java.util.Scanner;
public class Prob_01 {
	
	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		System.out.println("수학, 과학, 영어 순으로 3개의 점수 입력>>");
		Grade me=new Grade();
		me.math=s.nextInt();
		me.science=s.nextInt();
		me.english=s.nextInt();
		System.out.println("평균은"+me.average());
	}

}

class Grade{
	int math,science,english;
	public int average(){
		return (math+science+english)/3;
	}
}//ㅋㅋ 개굴잼