<?php
session_start();
require("header.php");
if(!empty($_POST))
{
    if(isset($_POST['usun']))
    {
        $connect -> query("DELETE FROM `status` WHERE id_status='".$_POST['id_status']."'");
    }
    if(isset($_POST['zapisz']))
    {
        $connect -> query("UPDATE `status` SET nazwa_status='".$_POST['nazwa_status']."' WHERE id_status='".$_POST['id_status']."'");
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
                        <th colspan="2" class="text-center">Status projektu</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $query = $connect -> query("SELECT * FROM `status` ORDER BY nazwa_status;");
                        while ($row = $query -> fetch_assoc())
                        {
                            echo '<form method="POST" action="edytuj_status_projektu.php">';
                            echo "<tr>";
                            echo '<td class="text-center"><input type="text" class="input-no-styles" value="'.$row["nazwa_status"].'" name="nazwa_status"></td>';
                            echo '<td class="text-center">';
                            echo '<input type="submit" name="zapisz" value="Zapisz" class="btn btn-success">';
                            echo '<input type="hidden" name="id_status" value="'.$row["id_status"].'" class="btn btn-success">';
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