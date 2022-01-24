<?php
require("connect.php");
?>
<!DOCTYPE html>
<html>

<head>
    <title>Biblioteka</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">

<body>
    <header class="d-flex justify-content-center">
        <img src="logo.jpg" width="300px">
    </header>
    <form>
        <div class="d-flex justify-content-center">
            <button formaction="index.php" class="btn btn-primary border-radius">Strona główna</button>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Menu
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="autor.php">Autor</a>
                    <a class="dropdown-item" href="dzial.php">Dział</a>
                    <a class="dropdown-item" href="karta.php">Karta</a>
                    <a class="dropdown-item" href="ksiazka.php">Książka</a>
                    <a class="dropdown-item" href="osoba.php">Osoba</a>
                    <a class="dropdown-item" href="pracownik.php">Pracownik</a>
                    <a class="dropdown-item" href="wydawca.php">Wydawca</a>
                    <a class="dropdown-item" href="wypozyczenie.php">Wypożyczenie</a>
                </div>
            </div>
        </div>
    </form>
</body>

</html>