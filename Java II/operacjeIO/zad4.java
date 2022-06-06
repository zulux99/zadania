package operacjeIO;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public class zad4 {
    public static void main(String[] args) throws IOException {
        FileInputStream fis = new FileInputStream("C:\\Users\\Szymo\\Desktop\\studia\\zadania\\Java II\\operacjeIO\\napis.txt");
        FileChannel fc = fis.getChannel();
        fc.position(15464);
    }
}
