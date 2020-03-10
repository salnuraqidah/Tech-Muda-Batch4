<form>
Tanggal Lahir <br>
    <select>
        <option name="day">day</option>
        <?php
            for ($day = 1; $day <= 31; $day++) {
        ?>
                <option value="<?= $day ?>"><?= $day ?></option>
                <?php } ?>
    </select>

    <select>
        <option name="month">month</option>
        <?php
            //for ($month = 1; $month <= 12; $month++) {
            $arr_month = [1 => 'Januari','Februari','Maret','April','Mei','Juni',
                            'Juli','Agustus','September','Oktober','November','Desember'];
            foreach($arr_month as $key_month => $name_month){
        ?>
            <option value="<?= $key_month ?>"><?= $name_month ?></option>
            <?php } ?>
    </select>

    <select>
        <option name="year">year</option>
        <?php
            $thnNow = date(Y);
            $thnMin = $thnNow - 17;
            $thnMax = $thnNow - 35;
            while ($thnMin >= $thnMax) {
            ?>    
           <option value="<?= $thnMin ?>"><?= $thnMin ?></option>
            <?php $thnMin--;} ?>
    </select>
</form>
<?php
//print_r(thnMin); exit;
?>

