<?php
require("header.php");
session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Projekty</title>

<body>
    <form method="GET">
        <select name="status_projektu" type="text" class="form-control" onchange="this.form.submit()">
            <option selected disabled hidden>Status projektu</option>
            <?php
            $rodzaje = $connect->query("SELECT * FROM `status` ORDER BY nazwa_status");
            while ($row = $rodzaje->fetch_assoc())
            {
                echo '<option value="' . $row['id_status'] . '">' . $row['nazwa_status'] . '';
            }
            ?>
        </select>
    </form>
    <div class="d-flex justify-content-center">
        <table class="table">
            <thead>
                <tr>
                    <th class="text-center">Rodzaj projektu</th>
                    <th class="text-center">Status projektu</th>
                    <th class="text-center">Nr projektu</th>
                    <th class="text-center">Temat projektu</th>
                    <th class="text-center">Data rozpoczęcia</th>
                    <th class="text-center">Data zakończenia</th>
                    <th class="text-center">Kwota</th>
                    <th class="text-center">Uwagi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if (!empty($_GET['status_projektu']))
                {
                    $id = $_GET['status_projektu'];
                    $query = $connect -> query("SELECT rodzaj.nazwa_rodzaj, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi
                        FROM projekty.projekt INNER JOIN
                        projekty.rodzaj ON projekt.id_rodzaj = rodzaj.id_rodzaj 
                        INNER JOIN projekty.`status` ON projekt.id_status = status.id_status
                        WHERE status.id_status = $id;");
                    if ($query -> num_rows == 0)
                    {
                        $_SESSION['komunikat'] = "Brak projektów wybranego statusu.";
                    }
                    while ($row = $query->fetch_assoc())
                    {
                        echo "<tr>";
                        echo '<td class="text-center">' . $row["nazwa_rodzaj"] . '</td>';
                        echo '<td class="text-center">' . $row["nazwa_status"] . '</td>';
                        echo '<td class="text-center">' . $row["nr_projekt"] . '</td>';
                        echo '<td class="text-center">' . $row["temat_projekt"] . '</td>';
                        echo '<td class="text-center">' . $row["data_rozpoczecia"] . '</td>';
                        echo '<td class="text-center">' . $row["data_zakonczenia"] . '</td>';
                        echo '<td class="text-center">' . $row["kwota"] . '</td>';
                        echo '<td class="text-center">' . $row["uwagi"] . '</td>';
                        echo "</tr>";
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
    <div class="d-flex justify-content-center">
        <h3>
            <?php
            if (!empty($_SESSION['komunikat']))
            {
                echo $_SESSION['komunikat'];
                unset($_SESSION['komunikat']);
            }
            ?>
        </h3>
    </div>
    <footer class="d-flex justify-content-center fixed-bottom mb-2">
        <i>Wszelkie prawa zastrzeżone</i>
    </footer>
    </div>
</body>

</html>