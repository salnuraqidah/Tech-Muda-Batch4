<h3>Check Out</h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Nomor Pembayaran</th>
      <th scope="col">Nomor Pemesanan</th>
      <th scope="col">Kode Booking</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new CheckOut();
      $rs = $model->dataCheckOut();
      $no = 1;
      foreach($rs as $cek){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $cek['pembayaran_idpembayaran'] ?></td>
      <td><?= $cek['pesanan_idpesanan'] ?></td>
      <td><?= $cek['kodeBooking'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>