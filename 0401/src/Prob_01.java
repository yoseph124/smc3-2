import java.util.Scanner;
public class Prob_01 {
	
	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		System.out.println("����, ����, ���� ������ 3���� ���� �Է�>>");
		Grade me=new Grade();
		me.math=s.nextInt();
		me.science=s.nextInt();
		me.english=s.nextInt();
		System.out.println("�����"+me.average());
	}

}

class Grade{
	int math,science,english;
	public int average(){
		return (math+science+english)/3;
	}
}//���� ������