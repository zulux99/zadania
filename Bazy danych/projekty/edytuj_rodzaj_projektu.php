<?php
session_start();
require("header.php");
if(!empty($_POST))
{
    if(isset($_POST['usun']))
    {
        $connect -> query("DELETE FROM rodzaj WHERE id_rodzaj='".$_POST['id_rodzaj']."'");
    }
    if(isset($_POST['zapisz']))
    {
        $connect -> query("UPDATE rodzaj SET nazwa_rodzaj='".$_POST['nazwa_rodzaj']."' WHERE id_rodzaj='".$_POST['id_rodzaj']."'");
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projekty</title>
<body>
        <div class="d-flex justify-content-center">
            <table class="table">
                <thead>
                    <tr>
                        <th colspan="2" class="text-center">Rodzaj projektu</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $query = $connect -> query("SELECT * FROM rodzaj ORDER BY nazwa_rodzaj;");
                        while ($row = $query -> fetch_assoc())
                        {
                            echo '<form method="POST" action="edytuj_rodzaj_projektu.php">';
                            echo "<tr>";
                            echo '<td class="text-center"><input type="text" class="input-no-styles" value="'.$row["nazwa_rodzaj"].'" name="nazwa_rodzaj"></td>';
                            echo '<td class="text-center">';
                            echo '<input type="submit" name="zapisz" value="Zapisz" class="btn btn-success">';
                            echo '<input type="hidden" name="id_rodzaj" value="'.$row["id_rodzaj"].'" class="btn btn-success">';
                            echo '<input type="submit" name="usun" value="Usuń" class="btn btn-danger"></td>';
                            echo "</tr>";
                            echo "</form>";
                            }
                    ?>
                </tbody>
            </table>
        </div>
        <div class="form-group d-flex justify-content-center">
        </div>
        <footer class="d-flex justify-content-center fixed-bottom mb-2">
            <i>Wszelkie prawa zastrzeżone</i>
        </footer>
</div>
</body>
</html>