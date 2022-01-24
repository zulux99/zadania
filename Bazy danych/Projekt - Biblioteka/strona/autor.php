<?php
session_start();
require("header.php");
if (!empty($_POST))
{
    if (isset($_POST['usun']))
    {
        $connect->query("DELETE FROM autor WHERE id_autora='" . $_POST['id_autora'] . "'");
    }
    if (isset($_POST['zapisz']))
    {
        $connect->query("UPDATE autor SET imie_autora='" . $_POST['imie_autora'] . "', nazwisko_autora='" . $_POST['nazwisko_autora'] . "' WHERE id_autora='" . $_POST['id_autora'] . "'");
    }
    if (isset($_POST['dodaj']))
    {
        $connect->query("INSERT INTO `autor` (`imie_autora`, `nazwisko_autora`) VALUES ('" . $_POST['imie_autora'] . "', '" . $_POST['nazwisko_autora'] . "');");
    }
}
?>
<!DOCTYPE html>
<html>

<head>

<body>
    <div class="d-flex justify-content-center">
        <table class="table">
            <thead>
                <tr>
                    <th colspan="3" class="text-center">Autor</th>
                </tr>
                <tr>
                    <th class="text-center">Imię autora</th>
                    <th class="text-center">Nazwisko autora</th>
                    <th class="text-center"></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $query = $connect->query("SELECT * FROM autor ORDER BY nazwisko_autora;");
                while ($row = $query->fetch_assoc())
                {
                    echo '<form method="POST">';
                    echo "<tr>";
                    echo '<td><input type="text" class="form-control text-center" value="' . $row["imie_autora"] . '" name="imie_autora"></td>';
                    echo '<td><input type="text" class="form-control text-center" value="' . $row["nazwisko_autora"] . '" name="nazwisko_autora"></td>';
                    echo '<td>';
                    echo '<input type="submit" name="zapisz" value="Zapisz" class="btn btn-success">';
                    echo '<input type="hidden" name="id_autora" value="' . $row["id_autora"] . '">';
                    echo '<input type="submit" name="usun" value="Usuń" class="btn btn-danger"></td>';
                    echo "</tr>";
                    echo "</form>";
                }
                ?>
                <tr>
                    <th colspan="3" class="text-center">Dodaj autora</th>
                </tr>
                <form method="POST">
                    <tr>
                        <td>
                            <input type="text" name="imie_autora" placeholder="Imię autora" class="form-control text-center">
                        </td>
                        <td>
                            <input type="text" name="nazwisko_autora" placeholder="Nazwisko autora" class="form-control text-center">
                        </td>
                        <td>
                            <input type="submit" name="dodaj" value="Dodaj" class="btn btn-success">
                        </td>
                    </tr>
                </form>
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