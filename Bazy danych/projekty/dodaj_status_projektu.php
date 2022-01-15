<?php
session_start();
require("header.php");
if(isset($_POST['zapisz']))
{
    if(!empty($_POST['status_projektu']))
    {
        $query = $connect -> query("SELECT * FROM `status` ORDER BY `nazwa_status`;");
        while ($row = $query -> fetch_assoc())
        {
           if($row['nazwa_status'] == $_POST['status_projektu'])
           {
               $_SESSION['komunikat1'] = "Taki status projektu już istnieje";
           }
        }
        $connect->query("INSERT INTO `status` (`nazwa_status`) VALUES ('".$_POST['status_projektu']."')");
    }
    else
    {
        $_SESSION['komunikat1'] = "Nie wprowadzono nazwy statusu projektu!";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projekty</title>
<body>
    <form method="POST" action="dodaj_status_projektu.php">
        <div class="d-flex justify-content-center">
            <h4>Status projektu:</h4>
            <div class="form-group col-sm-2">
                <input type="text" class="form-control col-sm" name="status_projektu">
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