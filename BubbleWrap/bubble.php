<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>
<link type="text/css" rel="stylesheet" href="css/bubble.css">
<div style="min-height: 100%;">
  <div style="text-align: center;padding-top: 20px;">
    <h1 style="display: inline;">Bubble Wrap</h1><br>
    <h4>How many bubbles would you like?</h4>
    <form method="POST" id="bubbleform">      
      <select name="bubble_number">
        <option value="100" <?php if ((isset($_POST['bubble_number']) and $_POST['bubble_number']==100) or (!isset($_POST['bubble_number']))) echo "selected"; ?>>100</option>
        <option value="300" <?php if (isset($_POST['bubble_number']) && $_POST['bubble_number']==300) echo "selected";?>>300</option>
        <option value="500" <?php if (isset($_POST['bubble_number']) && $_POST['bubble_number']==500) echo "selected";?>>500</option>
      </select>
      <input type="submit" value="Start" class="start_button" style="width: 100%;">
    </form>
    <p>Click to pop the bubbles</p><hr>
  </div>
  <div id="content">   
    <?php 
    if (isset($_POST['bubble_number'])) {
      $bubble_number=$_POST['bubble_number'];
    } else {
      $bubble_number=0;
    }
    for ($i=0; $i < $bubble_number; $i++) {  ?>
      <img src="img/bubble.jpg" onclick="pop()"> <?php
    }
    ?>
    
  </div>
</div>

<script>

  var popSound = document.createElement("audio");
  popSound.src="img/bubble.mp3";
  function pop() {
    event.target.src="img/bubble_broken.jpg";
    popSound.play();
  }  
</script>


<?php get_footer();  



