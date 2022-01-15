<?php
session_start();
require("header.php");
if(isset($_POST['zapisz']))
{
    if(!empty($_POST['rodzaj_projektu']))
    {
        $query = $connect -> query("SELECT * FROM rodzaj ORDER BY nazwa_rodzaj;");
        while ($row = $query -> fetch_assoc())
        {
           if($row['nazwa_rodzaj'] == $_POST['rodzaj_projektu'])
           {
               $_SESSION['komunikat1'] = "Taki rodzaj projektu już istnieje";
           }
        }
        $connect->query("INSERT INTO `rodzaj` (`nazwa_rodzaj`) VALUES ('".$_POST['rodzaj_projektu']."')");
    }
    else
    {
        $_SESSION['komunikat1'] = "Nie wprowadzono nazwy rodzaju projektu!";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projekty</title>
<body>
    <form method="POST" action="dodaj_rodzaj_projektu.php">
        <div class="d-flex justify-content-center">
            <h4>Rodzaj projektu:</h4>
            <div class="form-group col-sm-2">
                <input type="text" class="form-control col-sm" name="rodzaj_projektu">
            </div>
            <div class="form-group">
                <input type="submit" value="Zapisz" class="btn btn-success" name="zapisz">
            </div>
        </div>
        <div class="d-flex justify-content-center text-danger">
            <?php 
            if(!empty($_SESSION['komunikat1']))
            {
                echo $_SESSION['komunikat1'];
                unset($_SESSION['komunikat1']);
            }
            ?>
        </div>
        <footer class="d-flex justify-content-center fixed-bottom mb-2">
            <i>Wszelkie prawa zastrzeżone</i>
        </footer>
    </form>
</div>
</body>
</html>