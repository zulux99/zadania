<?php
session_start();
require("header.php");
if (!empty($_POST))
{
    if (isset($_POST['usun']))
    {
        $connect->query("DELETE FROM ksiazka WHERE idksiazka='" . $_POST['id_ksiazki'] . "'");
    }
    if (isset($_POST['zapisz']))
    {
        $connect->query("UPDATE ksiazka SET tytul='" . $_POST['tytul'] . "',
        ISBN='" . $_POST['isbn'] . "',
        rok_wydania='" . $_POST['rok_wydania'] . "',
        id_dzialu='" . $_POST['id_dzialu'] . "',
        autor_id_autora='" . $_POST['id_autora'] . "'
        WHERE idksiazka='" . $_POST['id_ksiazki'] . "'");
    }
    if (isset($_POST['dodaj']))
    {
        $connect->query("INSERT INTO `ksiazka` (`tytul`, `ISBN`, `rok_wydania`, `id_dzialu`, `autor_id_autora`)
        VALUES ('" . $_POST['tytul'] . "', '" . $_POST['isbn'] . "', '" . $_POST['rok_wydania'] . "',
        '" . $_POST['id_dzialu'] . "', '" . $_POST['id_autora'] . "');");
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
                    <th colspan="6" class="text-center">Książka</th>
                </tr>
                <tr>
                    <th class="text-center">Tytuł</th>
                    <th class="text-center">ISBN</th>
                    <th class="text-center">Rok wydania</th>
                    <th class="text-center">Dział</th>
                    <th class="text-center">Autor</th>
                    <th class="text-center"></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $query = $connect->query("SELECT * FROM ksiazka ORDER BY tytul;");
                while ($row = $query->fetch_assoc())
                {
                    echo '<form method="POST">';
                    echo "<tr>";
                    echo '<input hidden type="text" value="' . $row["idksiazka"] . '" name="id_ksiazki">';
                    echo '<td><input type="text" class="form-control text-center" value="' . $row["tytul"] . '" name="tytul"></td>';
                    echo '<td><input type="text" class="form-control text-center" value="' . $row["ISBN"] . '" name="isbn"></td>';
                    echo '<td><input type="text" class="form-control text-center" value="' . $row["rok_wydania"] . '" name="rok_wydania"></td>';
                    echo '<td>';
                    echo '<select name="id_dzialu" type="text" class="form-control">';
                    $dzial = $connect->query("SELECT * FROM dzial ORDER BY nazwa");
                    while ($row1 = $dzial->fetch_assoc())
                    {
                        if ($row['id_dzialu'] == $row1['id_dzialu'])
                            echo '<option selected value="' . $row1['id_dzialu'] . '">' . $row1['nazwa'] . '';
                        else
                            echo '<option value="' . $row1['id_dzialu'] . '">' . $row1['nazwa'] . '';
                    }
                    echo '</select>
                    </td>';
                    echo '<td>';
                    echo '<select name="id_autora" type="text" class="form-control">';
                    $autor = $connect->query("SELECT * FROM autor ORDER BY nazwisko_autora");
                    while ($row1 = $autor->fetch_assoc())
                    {
                        if ($row['autor_id_autora'] == $row1['id_autora'])
                            echo '<option selected value="' . $row1['id_autora'] . '">' . $row1['imie_autora'] . ' ' . $row1['nazwisko_autora'] . '';
                        else
                            echo '<option value="' . $row1['id_autora'] . '">' . $row1['imie_autora'] . ' ' . $row1['nazwisko_autora'] . '';
                    }
                    echo '</select>
                    </td>';
                    echo '<td>';
                    echo '<input type="submit" name="zapisz" value="Zapisz" class="btn btn-success">';
                    echo '<input type="submit" name="usun" value="Usuń" class="btn btn-danger"></td>';
                    echo "</tr>";
                    echo "</form>";
                }
                ?>
                <tr>
                    <th colspan="6" class="text-center">Dodaj książkę</th>
                </tr>
                <form method="POST">
                    <tr>
                        <td>
                            <input type="text" name="tytul" placeholder="Tytuł" class="form-control text-center">
                        </td>
                        <td>
                            <input type="text" name="isbn" placeholder="ISBN" class="form-control text-center">
                        </td>
                        <td>
                            <input type="text" name="rok_wydania" placeholder="Rok wydania" class="form-control text-center">
                        </td>
                        <td>
                            <select name="id_dzialu" type="text" class="form-control">
                                <option selected disabled hidden>Dział</option>
                                <?php
                                $dzial = $connect->query("SELECT * FROM dzial ORDER BY nazwa");
                                while ($row = $dzial->fetch_assoc())
                                {
                                    echo '<option value="' . $row['id_dzialu'] . '">' . $row['nazwa'] . '';
                                }
                                ?>
                            </select>
                        </td>
                        <td>
                            <select name="id_autora" type="text" class="form-control">
                                <option selected disabled hidden>Autor</option>
                                <?php
                                $autor = $connect->query("SELECT * FROM autor ORDER BY nazwisko_autora");
                                while ($row = $autor->fetch_assoc())
                                {
                                    echo '<option value="' . $row['id_autora'] . '">' . $row['imie_autora'] . ' ' . $row['nazwisko_autora'] . '';
                                }
                                ?>
                            </select>
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