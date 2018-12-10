<?php


  include 'connect.php';
  $trade_id = $_POST['trade_id'];
  echo "
  <div class='col-sm-12'>
    <div id='review-form' class='col-sm-4 offset-sm-4'>
    <h6 class='center'>Review</h6>
      <input id='review' type='hidden' value='5'/>
      <fieldset class='starability-basic' style='margin-left:auto;margin-right:auto;'>
        <input type='radio' id='rate5' name='rating' value='5' />
        <label for='rate5' title='Amazing'>5 stars</label>

        <input type='radio' id='rate4' name='rating' value='4' />
        <label for='rate4' title='Very good'>4 stars</label>

        <input type='radio' id='rate3' name='rating' value='3' />
        <label for='rate3' title='Average'>3 stars</label>

        <input type='radio' id='rate2' name='rating' value='2' />
        <label for='rate2' title='Not good'>2 stars</label>

        <input type='radio' id='rate1' name='rating' value='1' />
        <label for='rate1' title='Terrible'>1 star</label>
      </fieldset>
        <textarea id='feedback' type='Text' style='width:100%;'></textarea>
      <input type='hidden' id='item-trade-id' value='{$trade_id}'/>
      <input type='submit' class='submit-feedback' id='{$trade_id}' style='width:100%;'/>
    </div>
  </div>
  <script>
    document.getElementById('rate5').onclick = function(){
      document.getElementById('review').value=1;
      console.log('1');
    };
    document.getElementById('rate4').onclick = function(){
      document.getElementById('review').value=2;
      console.log('2');
    };
    document.getElementById('rate3').onclick = function(){
      document.getElementById('review').value=3;
      console.log('3');
    };
    document.getElementById('rate2').onclick = function(){
      document.getElementById('review').value=4;
      console.log('4');
    };
    document.getElementById('rate1').onclick = function(){
      document.getElementById('review').value=5;
      console.log('5');
    };
    $('.submit-feedback').click(function(){

      var newdate = new Date();
      var year = newdate.getFullYear();
      var month = newdate.getMonth() + 1;
      var day = newdate.getDate();

      var date = year + '-' + month + '-' + day;
      var review = this.parentElement.children[1].value;
      var feedback = this.parentElement.children[3].value;
      var item = this.parentElement.children[4].value;
      $.ajax({
        url:'../submit_review.php',
        method:'POST',
        data:{date:date, review:review, feedback:feedback, item:item},
        success:function(data){
          // console.log('successfully submited feedback')
          $('#review-form').html('Your review has been submitted.');
        }
      })
    });
  </script>

  ";

 ?>
