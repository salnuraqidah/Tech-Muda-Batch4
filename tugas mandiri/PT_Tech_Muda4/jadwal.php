<h3>Jadwal Diklat PT Tech Muda 4</h3><br/>
<table class="table table-striped">
  <thead>
  <tr class="table-info">
      <th scope="col">No</th>
      <th scope="col">Nama</th>
      <th scope="col">Divisi</th>
      <th scope="col">Jabatan</th>
      <th scope="col">Materi</th>
      <th scope="col">Tanggal Mulai</th>
      <th scope="col">Tanggal Akhir</th>
      <th scope="col">Keterangan</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Jadwal();
      $rs = $model->dataJadwal();
      $no = 1;
      foreach($rs as $jab){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $jab['nama'] ?></td>
      <td><?= $jab['divisi'] ?></td>
      <td><?= $jab['jabatan'] ?></td>
      <td><?= $jab['materi'] ?></td>
      <td><?= $jab['tgl_mulai'] ?></td>
      <td><?= $jab['tgl_akhir'] ?></td>
      <td><?= $jab['keterangan'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>