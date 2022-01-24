package obiektowe_v3;

class Pojazd {
    int rokProdukcji;
    String rodzajSilnika;
    String kolor;
    int masa;

    public Pojazd(int rokProdukcji, String rodzajSilnika, String kolor, int masa) {
        this.rokProdukcji = rokProdukcji;
        this.rodzajSilnika = rodzajSilnika;
        this.kolor = kolor;
        this.masa = masa;
    }

    public Pojazd() {

    }

    void uruchomSilnik() {
        System.out.println("Silnik uruchomiono");
    }

    public int getRokProdukcji() {
        return rokProdukcji;
    }

    public String getRodzajSilnika() {
        return rodzajSilnika;
    }

    public String getKolor() {
        return kolor;
    }

    public int getMasa() {
        return masa;
    }

    public void setRokProdukcji(int rokProdukcji) {
        this.rokProdukcji = rokProdukcji;
    }

    public void setRodzajSilnika(String rodzajSilnika) {
        this.rodzajSilnika = rodzajSilnika;
    }

    public void setKolor(String kolor) {
        this.kolor = kolor;
    }

    public void setMasa(int masa) {
        this.masa = masa;
    }
}

class Kolowe extends Pojazd {
    String rozmiarOpony;

    public Kolowe() {
        super();
    }

    void uruchomSilnik(String rodzaj) {
        System.out.println("Uruchomiono silnik " + rodzaj);
    }

    public Kolowe(int rokProdukcji, String rodzajSilnika, String kolor, int masa, String rozmiarOpony) {
        super(rokProdukcji, rodzajSilnika, kolor, masa);
        this.rozmiarOpony = rozmiarOpony;
    }

    public String getRozmiarOpony() {
        return rozmiarOpony;
    }

    public void setRozmiarOpony(String rozmiarOpony) {
        this.rozmiarOpony = rozmiarOpony;
    }
}

class Ciężarówka extends Kolowe {
    int udzwig;

    public Ciężarówka(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
            String rozmiarOpony, int udzwig) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony);
        this.udzwig = udzwig;
    }

    void podnieśSkrzynie() {

    }

    public int getUdzwig() {
        return udzwig;
    }

    public void setUdźwig(int udzwig) {
        this.udzwig = udzwig;
    }
}

class Osobowy extends Kolowe {
    int iloscOsob;

    public Osobowy(int rokProdukcji, String rodzajSilnika, String kolor, int masa, String rozmiarOpony,
            int iloscOsob) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony);
        this.iloscOsob = iloscOsob;
    }

    public Osobowy() {
        super();
    }

    public int getiloscOsob() {
        return iloscOsob;
    }

    public void setiloscOsob(int iloscOsob) {
        this.iloscOsob = iloscOsob;
    }
}

class Pickup extends Osobowy {

    public Pickup(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
            String rozmiarOpony, int iloscOsob) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob);
    }
}

class Sedan extends Osobowy {
    String model;
    String symbol;

    public Sedan(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
            String rozmiarOpony, int iloscOsob, String model, String symbol) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob);
        this.model = model;
        this.symbol = symbol;
    }

    public Sedan() {
        super();
    }

    public String getModel() {
        return model;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

}

class VW extends Sedan {
    public VW(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
            String rozmiarOpony, int iloscOsob, String model, String symbol) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob, model, symbol);
    }

    public VW() {
        super();
    }
}

class Golf extends VW {

    public Golf(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
                String rozmiarOpony, int iloscOsob, String model, String symbol) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob, model,
                symbol);
    }

    public Golf() {
        super();
    }
}

class Skoda extends Sedan {
    public Skoda(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
                 String rozmiarOpony, int iloscOsob, String model, String symbol) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob, model, symbol);
    }
}

class SuperB extends Skoda {

    public SuperB(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
                  String rozmiarOpony, int iloscOsob, String model, String symbol) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob, model,
                symbol);
    }
}

final class Octavia extends Skoda {

    public Octavia(int rokProdukcji, String rodzajSilnika, String kolor, int masa,
                   String rozmiarOpony, int iloscOsob, String model, String symbol) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, rozmiarOpony, iloscOsob, model,
                symbol);
    }
}
class Szynowe extends Pojazd {
    void uruchomSilnik() {
        System.out.println("Uruchomiono silnik pojazdu szynowego");
    }

    public Szynowe(int rokProdukcji, String rodzajSilnika, String kolor, int masa) {
        super(rokProdukcji, rodzajSilnika, kolor, masa);
    }
}
class Pociąg extends Szynowe {
    static String wlasciciel = "P.K.P.";

    public Pociąg(int rokProdukcji, String rodzajSilnika, String kolor, int masa) {
        super(rokProdukcji, rodzajSilnika, kolor, masa);
    }
}
class Gasienicowe extends Pojazd {
    int moc;

    void uruchomSilnik() {
        uruchomSilnik();
        System.out.println("Jest to pojazd gąsienicowy");
    }

    public Gasienicowe(int rokProdukcji, String rodzajSilnika, String kolor, int masa, int moc) {
        super(rokProdukcji, rodzajSilnika, kolor, masa);
        this.moc = moc;
    }

    public int getMoc() {
        return moc;
    }

    public void setMoc(int moc) {
        this.moc = moc;
    }
}
class Czołg extends Gasienicowe {

    public Czołg(int rokProdukcji, String rodzajSilnika, String kolor, int masa, int moc) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, moc);
    }
}

class Spychacz extends Gasienicowe {

    public Spychacz(int rokProdukcji, String rodzajSilnika, String kolor, int masa, int moc) {
        super(rokProdukcji, rodzajSilnika, kolor, masa, moc);
    }
}
public class zadanie{
    public static void main(String[] args) {
        Golf golf1 = new Golf();
        golf1.setRokProdukcji(2019);
        golf1.setRodzajSilnika("elektryczny");
        golf1.setKolor("biały");
        golf1.setMasa(1200);
        golf1.setRozmiarOpony("195/70 R15");
        golf1.setiloscOsob(4);
        Golf golf2 = new Golf();
        golf2.setRokProdukcji(2012);
        golf2.setRodzajSilnika("benzynowy");
        golf2.setKolor("czerwony");
        golf2.setMasa(1500);
        golf2.setRozmiarOpony("195/80 R17");
        golf2.setiloscOsob(5);
        Golf golf3 = new Golf();
        golf3.setRokProdukcji(2009);
        golf3.setRodzajSilnika("diesel");
        golf3.setKolor("niebieski");
        golf3.setMasa(1800);
        golf3.setRozmiarOpony("195/80 R17");
        golf3.setiloscOsob(5);
    }
}