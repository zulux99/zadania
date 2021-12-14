package Zadania_obiektowe;

class zadanie1_7 {
    public static void main(String[] args) {
        class Komputer {
            String plyta_glowna;
            String procesor;
            String karta_graficzna;
            Integer ilosc_ram;
            String obudowa;
            Double pojemnosc_dysku;
            public Komputer(String plyta_glowna, String procesor, String karta_graficzna, Integer ilosc_ram, String obudowa, Double pojemnosc_dysku) {
                this.plyta_glowna = plyta_glowna;
                this.procesor = procesor;
                this.karta_graficzna = karta_graficzna;
                this.ilosc_ram = ilosc_ram;
                this.obudowa = obudowa;
                this.pojemnosc_dysku = pojemnosc_dysku;
            }
            public Komputer(String plyta_glowna, String procesor, Integer ilosc_ram, String obudowa, Double pojemnosc_dysku) {
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
            public String getPlyta_glowna() {
                return plyta_glowna;
            }
            public void setPlyta_glowna(String plyta_glowna) {
                this.plyta_glowna = plyta_glowna;
            }
            public String getProcesor() {
                return procesor;
            }
            public void setProcesor(String procesor) {
                this.procesor = procesor;
            }
            public String getKarta_graficzna() {
                return karta_graficzna;
            }
            public void setKarta_graficzna(String karta_graficzna) {
                this.karta_graficzna = karta_graficzna;
            }
            public Integer getIlosc_ram() {
                return ilosc_ram;
            }
            public void setIlosc_ram(Integer ilosc_ram) {
                this.ilosc_ram = ilosc_ram;
            }
            public String getObudowa() {
                return obudowa;
            }
            public void setObudowa(String obudowa) {
                this.obudowa = obudowa;
            }
            public Double getPojemnosc_dysku() {
                return pojemnosc_dysku;
            }
            public void setPojemnosc_dysku(Double pojemnosc_dysku) {
                this.pojemnosc_dysku = pojemnosc_dysku;
            }
        }
        Komputer komputer1 = new Komputer("Gigabyte GA-D525TUD", "INTEL Core i3-10100F");
        Komputer komputer2 = new Komputer("MSI H510M-A PRO", "AMD Ryzen Threadripper 3990X", "RTX 3090", 32, "Thermaltake V3", 2000.0);
        Komputer komputer3 = new Komputer("MSI B560M PRO-VDH WIFI ", "Intel Core i9-12900KF", 16, "Revoltec Sixty 3", 500.0);
        Komputer komputer4 = new Komputer("ASUS TUF Gaming Z490-PLUS WI-FI", "Intel Core i9-10980XE", 16);
        Komputer komputer5 = new Komputer("Gigabyte Z590 Aorus Elite AX", "AMD Ryzen 9 5900X", "RTX 3080", 32, "NZXT Source 210 ELITE", 1000.0);
        Komputer komputer6 = new Komputer("ASUS PRIME X299-A II", "AMD Ryzen 9 3900XT", 8);
        komputer1.setObudowa("NZXT Source 210 ELITE");
        komputer1.setKarta_graficzna("GTX 1080");
        komputer1.setIlosc_ram(12);
        komputer1.setPojemnosc_dysku(1000.0);
        komputer4.setObudowa("Zalman Z9 Plus");
        komputer6.setObudowa("Revoltec Fifty 5");
        komputer6.setPojemnosc_dysku(3000.0);
        String zmienna = komputer2.getObudowa();
    }
}
