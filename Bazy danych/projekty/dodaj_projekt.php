<?php
session_start();
require("header.php");
if (isset($_POST['dodaj']))
{
    if (empty($_POST['data_zakonczenia']))
        $data_z = 'NULL';
    else
        $data_z = "'".$_POST['data_zakonczenia']."'";
    if (empty($_POST['uwagi']))
        $uwagi = 'NULL';
    else
        $uwagi = "'".$_POST['uwagi']."'";
    if(!empty($_POST['nr_projektu']) && !empty($_POST['temat_projektu']) && !empty($_POST['data_rozpoczecia']) && !empty($_POST['kwota_projektu']) && !empty($_POST['rodzaj_projektu']) && !empty($_POST['status_projektu']))
    {
        $connect -> query("INSERT INTO `projekty`.`projekt` (`id_projekt`, `nr_projekt`, `temat_projekt`, `data_rozpoczecia`, `data_zakonczenia`, `kwota`, `uwagi`, `id_rodzaj`, `id_status`)
        VALUES (NULL, '".$_POST['nr_projektu']."', '".$_POST['temat_projektu']."', '".$_POST['data_rozpoczecia']."', $data_z, '".$_POST['kwota_projektu']."', $uwagi, '".$_POST['rodzaj_projektu']."', '".$_POST['status_projektu']."');");
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Projekty</title>

<body>
    <div class="form-group d-flex justify-content-center">
        <form method="POST" action="dodaj_projekt.php">
            <select name="rodzaj_projektu" type="text" class="form-control">
                <option selected disabled hidden>Rodzaj projektu</option>
                <?php
                $rodzaje = $connect->query("SELECT * FROM rodzaj ORDER BY nazwa_rodzaj");
                while ($row = $rodzaje->fetch_assoc())
                {
                    echo '<option value="' . $row['id_rodzaj'] . '">' . $row['nazwa_rodzaj'] . '';
                }
                ?>
            </select>
            <select name="status_projektu" type="text" class="form-control">
                <option selected disabled hidden>Status projektu</option>
                <?php
                $rodzaje = $connect->query("SELECT * FROM `status` ORDER BY nazwa_status");
                while ($row = $rodzaje->fetch_assoc())
                {
                    echo '<option value="' . $row['id_status'] . '">' . $row['nazwa_status'] . '';
                }
                ?>
            </select>
            <input type="text" placeholder="Nr projektu" name="nr_projektu" class="form-control">
            <textarea rows="3" placeholder="Temat projektu" name="temat_projektu" class="form-control"></textarea>
            Data rozpoczęcia:
            <input type="date" name="data_rozpoczecia" placeholder="Date" class="form-control">
            Data zakończenia:
            <input type="date" name="data_zakonczenia" class="form-control">
            <input type="number" name="kwota_projektu" step="0.01" min="0.01" placeholder="Kwota projektu" class="form-control">
            <textarea rows="3" placeholder="Uwagi" name="uwagi" class="form-control"></textarea>
            <input type="submit" value="Dodaj" class="btn btn-success" name="dodaj">
        </form>
    </div>
    <footer class="d-flex justify-content-center fixed-bottom mb-2">
        <i>Wszelkie prawa zastrzeżone</i>
    </footer>
    </div>
</body>

</html>