<?php
require("header.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projekty</title>
<body>
    <form method="POST">
        <div class="d-flex justify-content-center">
            <h4>Rodzaj projektu:</h4>
            <div class="form-group col-sm-2">
                <input type="text" class="form-control col-sm" name="rodzaj_projektu">
            </div>
            <div class="form-group">
                <input type="submit" value="Zapisz" class="btn btn-success" name="zapisz">
            </div>
        </div>
        <footer class="d-flex justify-content-center fixed-bottom mb-2">
            <i>Wszelkie prawa zastrzeżone</i>
        </footer>
    </form>
</div>
</body>
</html>
<?php
if(isset($_POST['zapisz']))
{
    if(!empty($_POST['rodzaj_projektu']))
    {
        $connect->query("INSERT INTO `rodzaj` (`nazwa_rodzaj`) VALUES ('".$_POST['rodzaj_projektu']."')");
    }
}
?>