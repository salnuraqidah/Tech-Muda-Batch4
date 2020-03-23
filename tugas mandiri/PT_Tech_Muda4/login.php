<h3>Data User PT Tech Muda 4</h3><br/>
<table class="table table-striped">
  <thead>
     <tr class="table-info">
      <th scope="col">No</th>
	  <th scope="col">Nama</th>
      <th scope="col">Username</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Login();
      $rs = $model->dataLogin();
      $no = 1;
      foreach($rs as $div){
	?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $div['nama'] ?></td>
	  <td><?= $div['username'] ?></td>
      <td><?= $div['password'] ?></td>
    </tr>
    <?php $no++; }; ?>
  </tbody>
</table>