import java.util.Scanner;
public class CircleManager {
	public static void main(String args[]) {
		 Scanner scan = new Scanner(System.in);// 스캐너 객체 생성

		 System.out.print("반지름 값 >>");
         int radius=scan.nextInt();   // 입력받은 반지름 값 radius 변수에 넣기

		 Circle c = new Circle(radius); //  Circle 클래스를 통해 객체 c생성
 
		 System.out.println("반지름 "+ radius + "인 원의 넓이는 " + c.Area() + "이다.");  
	}
}

class Circle{
	int radius;
	public Circle(int radius) { 

	this.radius= radius;	// 생성자(radius) 값 초기화

	}
	public double Area() {   // 원의 넓이 return (원의 넓이 = 반지름*반지름*3.14)
		
		return radius*radius*3.14;// 원의 넓이 return (원의 넓이 = 반지름*반지름*3.14)
	}
}