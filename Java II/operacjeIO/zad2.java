package operacjeIO;

import java.io.*;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Scanner;

public class zad2 {
    public static void main(String[] args) throws IOException {
            File file = new File("C:\\Users\\Szymo\\Desktop\\studia\\zadania\\Java II\\operacjeIO\\dane1.txt");
            Scanner scanner = new Scanner(file);
            int suma = 0;
            while (scanner.hasNext()){
                suma += scanner.nextInt();
            }
            System.out.println("Suma: " + suma);
    }
}
