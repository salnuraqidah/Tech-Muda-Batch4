<h3>Data Pegawai</h3>
<table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">NIP</th>
      <th scope="col">Nama</th>
      <th scope="col">Gender</th>
      <th scope="col">Tempat Lahir</th>
      <th scope="col">Tanggal Lahir</th>
    </tr>
  </thead>
  <tbody>
      <?php
      //ciptakan object
      $model = new Pegawai();
      $rs = $model->dataPegawai();
      $no = 1;
      foreach($rs as $peg){
      ?>
        <tr>
          <th scope="row"><?= $no ?></th>
          <td><?= $peg['nip'] ?></td>
          <td><?= $peg['nama'] ?></td>
          <td><?= $peg['gender'] ?></td>
          <td><?= $peg['tempat_lahir'] ?></td>
          <td><?= $peg['tanggal_lahir'] ?></td>
        </tr>
<?php $no++; } ?>
  </tbody>
</table>