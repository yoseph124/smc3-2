
public class TriangleExam {

	public static void main(String[] args) {
		Triangle t = new Triangle(10.2,17.3);
		System.out.println("변경전 "+t.nullbe());
		t.met(7.5,9.2);
		System.out.println("변경후 "+t.nullbe());
	}

}
class Triangle{
	double garo,sero;
	public Triangle(double garo,double sero){
		this.garo=garo;
		this.sero=sero;
		
	}
	public void met(double garo,double sero) {
		this.garo=garo;
		this.sero=sero;
	}
	public double nullbe() {
		return garo*sero/2;
	}
}