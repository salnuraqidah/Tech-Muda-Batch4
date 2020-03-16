<h3>Data Customer</h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Name</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Customer();
      $rs = $model->dataCustomer();
      $no = 1;
      foreach($rs as $cus){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $cus['name'] ?></td>
      <td><?= $cus['phoneNumber'] ?></td>
      <td><?= $cus['email'] ?></td>
      <td><?= $cus['address'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>