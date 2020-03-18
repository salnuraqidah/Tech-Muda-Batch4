<h3>Daftar Pesanan</h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">No Pesanan</th>
      <th scope="col">Tanggal Pesan</th>
      <th scope="col">Tanggal Keberangkatan</th>
      <th scope="col">Kota Keberangkatan</th>
      <th scope="col">Tanggal Tiba</th>
      <th scope="col">Kota Tujuan</th>
      <th scope="col">Jumlah Pemesan</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Pesanan();
      $rs = $model->dataPesanan();
      $no = 1;
      foreach($rs as $ord){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $ord['tanggalPesan'] ?></td>
      <td><?= $ord['tanggalKeberangkatan'] ?></td>
      <td><?= $ord['asalKeberangkatan'] ?></td>
      <td><?= $ord['tanggalTiba'] ?></td>
      <td><?= $ord['kotaTujuan'] ?></td>
      <td><?= $ord['jumlahPenumpang'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>