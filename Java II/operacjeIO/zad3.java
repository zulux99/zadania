package operacjeIO;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class zad3 {
    public static void main(String[] args) throws IOException {
        String tekst = Files.readString(Path.of("C:\\Users\\Szymo\\Desktop\\studia\\zadania\\Java II\\operacjeIO\\dane2.txt"));
        System.out.print(tekst);
    }
}
