<table align="center" width="40%" border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr bgcolor="pink">
			<th>NO</th>
			<th>NAMA</th>
			<th>ALAMAT</th>
		</tr>
	</thead>
    <tbody>
    <?php
    for($no = 1; $no <= 100; $no++){
        $warna = ($no % 2 == 1) ? 'tomato' : 'yellow';
    ?>
        <tr bgcolor="<?= $warna ?>">
			<td><?= $no ?></td>
			<td>Siswa <?= $no ?></td>
			<td>Jl. Melati No. <?= $no ?></td>
		</tr>
    <?php } ?>    
    </tbody>
</table>            