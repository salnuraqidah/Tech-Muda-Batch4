<form>
<link rel="stylesheet" type="text/css" href="css/style.css">
<table>
    <thead>
        <th><b>Buat Akun baru</b></th>
    </thead>
    <tbody>
        <tr>
            <td>
                <input type="text" name="" value="Nama depan" />
                <input type="text" name="" value="Nama belakang" />
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" size = 45 name="" value="Nomor seluler atau email" />
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" size = 45 name="" value="Kata sandi baru" />
            </td>
        </tr>
        <tr>
            <td>
            Tanggal Lahir <br>
            <select>
            <option name="day">day</option>
            <?php
            for ($day = 1; $day <= 31; $day++) {
            ?>
            <option><?= $day ?></option>
            <?php } ?>
            </select>

            <select>
            <option name="month">month</option>
            <?php
            for ($month = 1; $month <= 12; $month++) {
            ?>
            <option><?= $month ?></option>
            <?php } ?>
            </select>

            <select>
            <option name="year">year</option>
            <?php
            for ($year = 2020; $year >= 1905; $year--) {
            ?>
            <option><?= $year ?></option>
            <?php } ?>
            </select>
            </td>
        </tr>
        <tr>
            <td>
                Jenis Kelamin
                <input type="radio" value="pr">Perempuan
                <input type="radio" value="lk">Laki-Laki
            </td>
        </tr>                
    </tbody>
    <tfoot>
        <tr>
        <th>
            <input type="submit" name="" value="Daftar"/>
        </th>
</tr>
    </tfoot>
</table>
</form>



