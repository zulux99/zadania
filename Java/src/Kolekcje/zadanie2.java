package Innalistazadanlosowanie;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

class zadanie2 {

    public static void main(String[] args) {
        String[] tablica = new String[1000];
        try {
            File myObj = new File(System.getProperty("user.dir") + "\\src\\Innalistazadanlosowanie\\" + "NAPIS.txt");
            Scanner myReader = new Scanner(myObj);
            int i = 0;
            while (myReader.hasNextLine()) {
                String data = myReader.nextLine();
                tablica[i] = data;
                for (int j = 0; j < i; j++)
                {
                    if (data.equals(tablica[j]))
                    {
                        System.out.println(data);
                        break;
                    }
                }
                i++;
            }
            myReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }
}
