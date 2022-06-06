package string;

public class zad2 {
    public static void main(String[] args) {
        String tekst = "Witaj swiecie";
        char[] tab = tekst.toCharArray();
        for (char c : tab) {
            System.out.print(Integer.toHexString(c) + " ");
        }
    }
}