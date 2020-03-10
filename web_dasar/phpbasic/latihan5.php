<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Alamat</th>
        </tr>
</thead>
<tbody>
<?php
for ($i = 1; $i <= 100 ; $i++) {  
    if($i%2 == 1){
?>
    <tr bgcolor="tomato">
        <td><?= $i ?></td>
        <td>Siswa <?= $i ?></td>
        <td>Jl. Melati No. <?= $i ?></td>
    </tr>
<?php 
    } 
    else{
        ?>
    <tr bgcolor="green">
    <td><?= $i ?></td>
    <td>Siswa <?= $i ?></td>
    <td>Jl. Melati No. <?= $i ?></td>
    </tr>
    <?php 
    }
    ?>
<?php } ?>
</tbody>
</table>