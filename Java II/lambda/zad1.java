package lambda;

@FunctionalInterface
interface klasa {
    double licz(double r);
}
public class zad1 {
    public static void main(String[] args) throws InterruptedException {
        klasa pole_kola = (r) -> {
            return (Math.PI * r * r);
        };
        klasa obwod_kola = (r) -> {
            return (2 * Math.PI * r );
        };
        klasa objetosc_kuli = (r) -> {
            return (4 / 3 * Math.PI * Math.pow(r, 3));
        };
        klasa powierzchnia_kuli = (r) -> {
            return (4  * Math.PI * Math.pow(r, 2));
        };
        System.out.println("Pole koła: "+ pole_kola.licz(5));
        System.out.println("Obwód koła: " + obwod_kola.licz(5));
        System.out.println("Objętość kuli: " + objetosc_kuli.licz(5));
        System.out.println("Powierzchnia kuli: " + powierzchnia_kuli.licz(5));
    }
}
