<?php
include 'requiredAuth.php';
include 'connect.php';
$output = '';
$user = $_POST['user'];
$sort = $_POST['sort'];

if(isset($_POST['sort'])){
  if($sort=='recent'){
    // $sql = "SELECT review.id, review.review, review.trade_id, review.feedback,
    //           review.created, review.buyer, trade_ad.product_id, trade_ad.price, trade_ad.qty,
    //           trade_ad.seller, product.name, users.username
    //         FROM review
    //         INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
    //         INNER JOIN product ON trade_ad.product_id=product.product_id
    //         INNER JOIN users ON users.user_id=trade_ad.seller
    //         WHERE seller = {$user}
    //         ORDER BY created DESC";
            // UPDATED QUERY
            $sql = "SELECT review.id, review.review, review.trade_id, review.feedback,
                      review.created, trade_ad.id, trade_ad.price, trade_ad.qty,
                      product.name, users.username, sells.user_id as seller, buys.user_id as buyer
                    FROM review
                    INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
                    INNER JOIN sells on trade_ad.id=sells.product_id
                    INNER JOIN buys on trade_ad.id=buys.product_id
                    INNER JOIN product ON trade_ad.id=product.product_id
                    INNER JOIN users ON sells.user_id=users.user_id
                    WHERE seller = {$user}
                    ORDER BY created DESC";
  } else if ($sort=='oldest'){
    // $sql = "SELECT review.id, review.review, review.trade_id, review.feedback,
    //           review.created, review.buyer, trade_ad.product_id, trade_ad.price, trade_ad.qty,
    //           trade_ad.seller, product.name, users.username
    //         FROM review
    //         INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
    //         INNER JOIN product ON trade_ad.product_id=product.product_id
    //         INNER JOIN users ON users.user_id=trade_ad.seller
    //         WHERE seller = {$user}
    //         ORDER BY created ASC";
            // UPDATED QUERY
            $sql = "SELECT review.id, review.review, review.trade_id, review.feedback,
                      review.created, trade_ad.id, trade_ad.price, trade_ad.qty,
                      product.name, users.username, sells.user_id as seller, buys.user_id as buyer
                    FROM review
                    INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
                    INNER JOIN sells on trade_ad.id=sells.product_id
                    INNER JOIN buys on trade_ad.id=buys.product_id
                    INNER JOIN product ON trade_ad.id=product.product_id
                    INNER JOIN users ON users.user_id=sells.user_id
                    WHERE seller = {$user}
                    ORDER BY created ASC";
  } else if ($sort=='best'){
    // $sql = "SELECT review.id, review.review, review.trade_id, review.feedback,
    //           review.created, review.buyer, trade_ad.product_id, trade_ad.price, trade_ad.qty,
    //           trade_ad.seller, product.name, users.username
    //         FROM review
    //         INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
    //         INNER JOIN product ON trade_ad.product_id=product.product_id
    //         INNER JOIN users ON users.user_id=trade_ad.seller
    //         WHERE seller = {$user}
    //         ORDER BY review DESC";
            //UPDATED QUERY
            $sql = "SELECT review.id, review.review, review.trade_id, review.feedback,
                      review.created, trade_ad.id, trade_ad.price, trade_ad.qty,
                      product.name, users.username, sells.user_id as seller, buys.user_id as buyer
                    FROM review
                    INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
                    INNER JOIN sells on trade_ad.id=sells.product_id
                    INNER JOIN buys on trade_ad.id=buys.product_id
                    INNER JOIN product ON trade_ad.id=product.product_id
                    INNER JOIN users ON users.user_id=sells.user_id
                    WHERE seller = {$user}
                    ORDER BY review DESC";
  } else {
    console.log('fail');
  }
  $result = $conn->query($sql);
  while($row = $result->fetch_assoc()){
      // GET buyerS USERNAME
    $buyer = $conn->query("SELECT username from users where user_id={$row['buyer']}");
    echo "
    <div class='col-sm-1 offset-sm-1'>
      <span class='stars'>{$row['review']}</span>
    </div>
    <div class='col-sm-5'>
      <p>{$row['feedback']}</p>
      <p>{$row['name']}</p>
    </div>
    <div class='col-sm-2'>
      <p>Buyer: ";
      while($data = $buyer->fetch_assoc()){
        echo $data['username'];
      }
    echo "</p>
      <p>$ {$row['price']}
    </div>
    <div class='col-sm-2'>
      <p>{$row['created']}</p>
      <a href='item.php?item={$row['trade_id']}'>View Item</a>
    </div>
    <div class='col-sm-1'>
    </div>
    ";
}
echo "<script>    $(function() {
      $('span.stars').stars();
    });
</script>";
if ( $result->num_rows < 2 ){
  echo "
    <script>document.getElementById('sort').disabled = true;</script>
  ";
}
}

 ?>
