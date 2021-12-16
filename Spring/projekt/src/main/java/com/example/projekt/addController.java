package com.example.projekt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class addController {
    private KsiazkaRepo ksiazkaRepo;
    @Autowired
    public addController(KsiazkaRepo ksiazkaRepo) {
        this.ksiazkaRepo = ksiazkaRepo;
    }
    @RequestMapping("/")
    public String wyswietlamyFormularz(Model model)
            throws Exception {
        return "formularz";
    }
    @RequestMapping("/dodaj")
    public String dodajemyDane(
            @RequestParam(value = "tytul", required = false) String tytul,
            @RequestParam(value = "autor", required = false) String autor,
            @RequestParam(value = "rok_wydania", required = false) Integer rok_wydania,
            Model model)
            throws Exception {
        Ksiazka ksiazka = new Ksiazka(tytul, autor, rok_wydania);
        System.out.println(ksiazka);
        ksiazkaRepo.save(ksiazka);
        model.addAttribute("ksiazka", ksiazka);
        return "Widok";
    }
        @RequestMapping("/pokaz")
        public String wyswietlBaze(Model model){
        model.addAttribute("ksiazka", ksiazkaRepo.findAll());
        int i = 0;
        for (Ksiazka ksiazka : ksiazkaRepo.findAll()){
            System.out.println(ksiazka);
        }
            return "Pokaz";
        }
        @RequestMapping("/kasuj")
        public String kasuj(@RequestParam("id") Integer id, Model model){
            ksiazkaRepo.deleteById(id);
            model.addAttribute("ksiazka", ksiazkaRepo.findAll());
            return "Pokaz";
        }
        @RequestMapping("/wyszukaj")
        public String wyszukaj(@RequestParam("kryterium") String kryterium, Model model){
            model.addAttribute("ksiazka", ksiazkaRepo.findAllByAutor(kryterium));
            return "Pokaz";
        }
        @RequestMapping("/przekieruj")
        public String przekieruj(
                @RequestParam("id") Integer id, Model model
        )
                throws Exception {
            model.addAttribute("ksiazka", ksiazkaRepo.findById(id));
            model.addAttribute("id", id);
            return "aktualizuj";
        }
        @RequestMapping("/aktualizuj")
        public String update(
                @RequestParam(value = "id") Integer id,
                @RequestParam(value = "tytul", required = false) String tytul,
                @RequestParam(value = "autor", required = false) String autor,
                @RequestParam(value = "rok_wydania", required = false) Integer rok_wydania,
                Model model)
                throws Exception {
            Ksiazka ksiazka = new Ksiazka(id, tytul, autor, rok_wydania);
            ksiazkaRepo.save(ksiazka);
            model.addAttribute("ksiazka", ksiazka);
            return "Pokaz";
        }

}


