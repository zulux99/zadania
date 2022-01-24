<?php
session_start();
require("header.php");
if (!empty($_POST))
{
    if (isset($_POST['usun']))
    {
        $connect->query("DELETE FROM dzial WHERE id_dzialu='" . $_POST['id_dzialu'] . "'");
    }
    if (isset($_POST['zapisz']))
    {
        $connect->query("UPDATE dzial SET nazwa='" . $_POST['nazwa'] . "' WHERE id_dzialu='" . $_POST['id_dzialu'] . "'");
    }
    if (isset($_POST['dodaj']))
    {
        $connect->query("INSERT INTO `dzial` (`nazwa`) VALUES ('" . $_POST['nazwa'] . "');");
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
                    <th colspan="2" class="text-center">Dział</th>
                </tr>
                <tr>
                    <th class="text-center">Nazwa</th>
                    <th class="text-center"></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $query = $connect->query("SELECT * FROM dzial ORDER BY nazwa;");
                while ($row = $query->fetch_assoc())
                {
                    echo '<form method="POST">';
                    echo "<tr>";
                    echo '<td><input type="text" class="form-control text-center" value="' . $row["nazwa"] . '" name="nazwa"></td>';
                    echo '<td>';
                    echo '<input type="submit" name="zapisz" value="Zapisz" class="btn btn-success">';
                    echo '<input type="hidden" name="id_dzialu" value="' . $row["id_dzialu"] . '">';
                    echo '<input type="submit" name="usun" value="Usuń" class="btn btn-danger"></td>';
                    echo "</tr>";
                    echo "</form>";
                }
                ?>
                <tr>
                    <th colspan="2" class="text-center">Dodaj dział</th>
                </tr>
                <form method="POST">
                    <tr>
                        <td>
                            <input type="text" name="nazwa" placeholder="Nazwa działu" class="form-control text-center">
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