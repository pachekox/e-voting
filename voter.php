<?php
if(!isset($_SESSION)) {
session_start();
  }
    include "auth.php";
    include "header_voter.php";
    include('include/static.php');

    ?>
    <div class="container">
      <div class="row">
        <div class="col-md-4 text-align-right" >
          Welcome <?php echo $_SESSION['SESS_NAME']; ?>

     </div>
   </div>
<!-- </div> -->
<!-- </div> -->
<!-- <div class="container-fluid"> -->
  <div class="row display-asp">

    <div class="card border-success mb-3 col-sm-4" style="max-width: 20rem;">
      <div class="card-header">Jane Wanjeri</div>
      <div class="card-body text-success">
        <h5 class="card-title">Secretary General</h5>
        <p class="card-text">Jubilee party</p>
      </div>
    </div>
    <div class="card border-success mb-3 col-sm-4" style="max-width: 20rem;">
      <div class="card-header">Jane Wanjeri</div>
      <div class="card-body text-success">
        <h5 class="card-title">Secretary General</h5>
        <p class="card-text">Jubilee party</p>
      </div>
    </div>
    <div class="card border-success mb-3  col-sm-4" style="max-width: 20rem;">
      <div class="card-header">Jane Wanjeri</div>
      <div class="card-body text-success">
        <h5 class="card-title">Secretary General</h5>
        <p class="card-text">Jubilee party</p>
      </div>
    </div>
    <div class="card border-success mb-3  col-sm-4" style="max-width: 20rem;">
      <div class="card-header">Jane Wanjeri</div>
      <div class="card-body text-success">
        <h5 class="card-title">Secretary General</h5>
        <p class="card-text">Jubilee party</p>
      </div>
    </div>
    <div class="card border-success mb-3  col-sm-4" style="max-width: 20rem;">
      <div class="card-header">Jane Wanjeri</div>
      <div class="card-body text-success">
        <h5 class="card-title">Secretary General</h5>
        <p class="card-text">Jubilee party</p>
      </div>
    </div>
  </div>
</div>





















    <!-- <h3>Make a Vote </h3>
    <form action="submit_vote.php" name="vote" method="post" id="myform" >
    <center><font size='6'> What is your favorite political party? <BR>
    <input type="radio" name="lan" value="BJP">  BJP<BR>
    <input type="radio" name="lan" value="CONGRESS">CONGRESS<BR>
    <input type="radio" name="lan" value="AAP">   AAP<BR>
    <input type="radio" name="lan" value="NOTA">  TMC<BR>
    <input type="radio" name="lan" value="NIRDLIY">  NIRDLIY<BR>
    </font></center><br>
    <?php global $msg; echo $msg; ?>
    <?php global $error; echo $error; ?>
    <center><input type="submit" value="Submit Vote" name="submit" style="height:30px; width:100px" /></center>
    </form> -->
