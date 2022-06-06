package generyki;

public class zad1 {
    public static void main(String[] args) {
        class Generyk <T>{
            T x;
            public Generyk(T x) { this.x = x; }
            public Generyk() {
            }
            public String showType(){ return x.getClass().getName(); }
        }
        Generyk obiektGeneryczny = new Generyk(50);
        System.out.println(obiektGeneryczny.showType());
        obiektGeneryczny.x = "testowe coś";
        System.out.println(obiektGeneryczny.showType());
    }
}
