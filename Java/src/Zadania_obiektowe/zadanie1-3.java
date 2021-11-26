package Zadania_obiektowe;

class zadanie1_3 {
    public class Komputer {
        String plyta_glowna;
        String procesor;
        String karta_graficzna;
        Integer ilosc_ram;
        String obudowa;
        Float pojemnosc_dysku;
        public Komputer(String plyta_glowna, String procesor, String karta_graficzna, Integer ilosc_ram, String obudowa, Float pojemnosc_dysku) {
            this.plyta_glowna = plyta_glowna;
            this.procesor = procesor;
            this.karta_graficzna = karta_graficzna;
            this.ilosc_ram = ilosc_ram;
            this.obudowa = obudowa;
            this.pojemnosc_dysku = pojemnosc_dysku;
        }
        public Komputer(String plyta_glowna, String procesor, Integer ilosc_ram, String obudowa, Float pojemnosc_dysku) {
            this.plyta_glowna = plyta_glowna;
            this.procesor = procesor;
            this.ilosc_ram = ilosc_ram;
            this.obudowa = obudowa;
            this.pojemnosc_dysku = pojemnosc_dysku;
        }
        public Komputer(String plyta_glowna, String procesor) {
            this.plyta_glowna = plyta_glowna;
            this.procesor = procesor;
        }
        public Komputer(String plyta_glowna, String procesor, Integer ilosc_ram) {
            this(plyta_glowna, procesor);
            this.ilosc_ram = ilosc_ram;
        }
    }
}
