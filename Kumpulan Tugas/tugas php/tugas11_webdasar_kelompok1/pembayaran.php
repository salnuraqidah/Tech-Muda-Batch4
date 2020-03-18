<h3>Pembayaran</h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Harga Total</th>
      <th scope="col">Metode Pembayaran</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Pembayaran();
      $rs = $model->dataPembayaran();
      $no = 1;
      foreach($rs as $pem){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $pem['totalHarga'] ?></td>
      <td><?= $pem['metodePembayaran'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>