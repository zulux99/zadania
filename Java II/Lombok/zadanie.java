package Lombok;

import lombok.*;

import java.util.Objects;

public class zadanie {
    public static class Osoba {
        private Integer id;
        private String imie;
        private String nazwisko;
        private String miasto;
        private String telefon;
        private String email;
        private String opis;

        @Override
        public String toString() {
            return "Osoba{" +
                    "id=" + id +
                    ", imie='" + imie + '\'' +
                    ", nazwisko='" + nazwisko + '\'' +
                    ", miasto='" + miasto + '\'' +
                    ", telefon='" + telefon + '\'' +
                    ", email='" + email + '\'' +
                    ", opis='" + opis + '\'' +
                    '}';
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Osoba osoba = (Osoba) o;
            return Objects.equals(id, osoba.id) && Objects.equals(imie, osoba.imie) && Objects.equals(nazwisko, osoba.nazwisko) && Objects.equals(miasto, osoba.miasto) && Objects.equals(telefon, osoba.telefon) && Objects.equals(email, osoba.email) && Objects.equals(opis, osoba.opis);
        }

        @Override
        public int hashCode() {
            return Objects.hash(id, imie, nazwisko, miasto, telefon, email, opis);
        }

        public Osoba() {
        }

        public Osoba(Integer id, String imie, String nazwisko, String miasto, String telefon, String email, String opis) {
            this.id = id;
            this.imie = imie;
            this.nazwisko = nazwisko;
            this.miasto = miasto;
            this.telefon = telefon;
            this.email = email;
            this.opis = opis;
        }

        public Osoba(String imie, String nazwisko, String miasto) {
            this.imie = imie;
            this.nazwisko = nazwisko;
            this.miasto = miasto;
        }


        public Integer getId() {
            return id;
        }

        public String getImie() {
            return imie;
        }

        public String getNazwisko() {
            return nazwisko;
        }

        public String getMiasto() {
            return miasto;
        }

        public String getTelefon() {
            return telefon;
        }

        public String getEmail() {
            return email;
        }

        public String getOpis() {
            return opis;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public void setImie(String imie) {
            this.imie = imie;
        }

        public void setNazwisko(String nazwisko) {
            this.nazwisko = nazwisko;
        }

        public void setMiasto(String miasto) {
            this.miasto = miasto;
        }

        public void setTelefon(String telefon) {
            this.telefon = telefon;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public void setOpis(String opis) {
            this.opis = opis;
        }
    }
    @NoArgsConstructor
    @AllArgsConstructor
    @Setter
    @Getter
    @ToString
    @EqualsAndHashCode
    @Builder
    public static class Osoba2 {
        private Integer id;
        private String imie;
        private String nazwisko;
        private String miasto;
        private String telefon;
        private String email;
        private String opis;

    }
    public static void main(String[] args) {

    }
}
