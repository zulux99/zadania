<?php
session_start();
require("header.php");
if (isset($_POST['zapisz']))
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
        $connect -> query("UPDATE `projekt` 
        SET `id_rodzaj` = '".$_POST['rodzaj_projektu']."',
        `id_status` = '".$_POST['status_projektu']."',
        `nr_projekt` = '".$_POST['nr_projektu']."',
        `temat_projekt` = '".$_POST['temat_projektu']."',
        `data_rozpoczecia` = '".$_POST['data_rozpoczecia']."',
        `data_zakonczenia` = $data_z,
        `kwota` = '".$_POST['kwota_projektu']."',
        `uwagi` = $uwagi
        WHERE `id_projekt` = '".$_POST['projekt']."';");
    }

}
if(isset($_POST['usun']))
{
    if(!empty($_POST['projekt']))
    {
        $connect -> query("DELETE FROM `projekt` WHERE `id_projekt` = '".$_POST['projekt']."'");
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
        <form method="POST" action="edycja_projektu.php">
            <select name="projekt" id="projekt" type="text" class="form-control">
                <option selected disabled hidden>Wybierz projekt</option>
                <?php
                $rodzaje = $connect->query("SELECT * FROM projekt ORDER BY data_rozpoczecia DESC");
                while ($row = $rodzaje->fetch_assoc())
                {
                    echo '<option data-rodzaj="'.$row['id_rodzaj'].'" data-status="'.$row['id_status'].'" 
                    data-nr="'.$row['nr_projekt'].'" data-temat="'.$row['temat_projekt'].'" 
                    data-data_r="'.$row['data_rozpoczecia'].'" data-data_z="'.$row['data_zakonczenia'].'"
                    data-kwota="'.$row['kwota'].'" data-uwagi="'.$row['uwagi'].'"
                    value="' . $row['id_projekt'] . '">' . $row['nr_projekt'] . ' - ' . $row['temat_projekt'] . '';
                }
                ?>
            </select></br>
            <script type="text/javascript">
                     var projekt = document.getElementById('projekt');
                     projekt.addEventListener('change', function() {
                        var option = projekt.options[projekt.selectedIndex];
                        document.getElementById('rodzaj_projektu').value = option.dataset.rodzaj;
                        document.getElementById('status_projektu').value = option.dataset.status;
                        document.getElementById('nr_projektu').value = option.dataset.nr;
                        document.getElementById('temat_projektu').value = option.dataset.temat;
                        document.getElementById('data_r').value = option.dataset.data_r;
                        document.getElementById('data_z').value = option.dataset.data_z;
                        document.getElementById('kwota').value = option.dataset.kwota;
                        document.getElementById('uwagi').value = option.dataset.uwagi;
                     });
            </script>
            <select name="rodzaj_projektu" id="rodzaj_projektu" type="text" class="form-control">
                <option selected disabled hidden>Rodzaj projektu</option>
                <?php
                $rodzaje = $connect->query("SELECT * FROM rodzaj ORDER BY nazwa_rodzaj");
                while ($row = $rodzaje->fetch_assoc())
                {
                    echo '<option value="' . $row['id_rodzaj'] . '">' . $row['nazwa_rodzaj'] . '';
                }
                ?>
            </select>
            <select name="status_projektu" id="status_projektu" type="text" class="form-control">
                <option selected disabled hidden>Status projektu</option>
                <?php
                $rodzaje = $connect->query("SELECT * FROM `status` ORDER BY nazwa_status");
                while ($row = $rodzaje->fetch_assoc())
                {
                    echo '<option value="' . $row['id_status'] . '">' . $row['nazwa_status'] . '';
                }
                ?>
            </select>
            <input type="text" placeholder="Nr projektu" name="nr_projektu" id="nr_projektu" id class="form-control">
            <textarea rows="3" placeholder="Temat projektu" name="temat_projektu" id="temat_projektu" class="form-control"></textarea>
            Data rozpoczęcia:
            <input type="date" name="data_rozpoczecia" id="data_r" placeholder="Date" class="form-control">
            Data zakończenia:
            <input type="date" name="data_zakonczenia" id="data_z" class="form-control">
            <input type="number" name="kwota_projektu" id="kwota" step="0.01" min="0.01" placeholder="Kwota projektu" class="form-control">
            <textarea rows="3" placeholder="Uwagi" name="uwagi" id="uwagi" class="form-control"></textarea>
            <input type="submit" value="Zapisz" class="btn btn-success" name="zapisz">
            <input type="submit" value="Usuń" class="btn btn-danger" name="usun">
        </form>
    </div>
    <footer class="d-flex justify-content-center fixed-bottom mb-2">
        <i>Wszelkie prawa zastrzeżone</i>
    </footer>
    </div>
</body>

</html>