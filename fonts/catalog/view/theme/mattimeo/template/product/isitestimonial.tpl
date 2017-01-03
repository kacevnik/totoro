<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <h1 style="margin-bottom:0;"><?php echo $heading_title ?></h1>
	  <p><?php echo $text_conditions ?></p>
    </div>
  </div>
  <div class="middle">
  
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial">
	<div class="content">
     <b><?php echo $entry_title ?></b><br />
              <input type="text" name="title" value="<?php echo $title; ?>" style="width: 96%;" /><br />
              <?php if ($error_title) { ?>
              <span class="error"><?php echo $error_title; ?></span>
              <?php } ?><br />
              
              <b><?php echo $entry_enquiry ?></b><span class="required">*</span><br />
              <textarea name="description" style="width: 96%;" rows="10"><?php echo $description; ?></textarea><br />

              <?php if ($error_enquiry) { ?>
              <span class="error"><?php echo $error_enquiry; ?></span>
              <?php } ?><br />
              
              <b><?php echo $entry_name ?></b><br />
              <input type="text" name="name" value="<?php echo $name; ?>" /><br />
              <?php if ($error_name) { ?>
              <span class="error"><?php echo $error_name; ?></span>
              <?php } ?><br />
		
        <b><?php echo $entry_city ?></b><br />
			<input type="text" name="city" value="<?php echo $city; ?>" /><br /><br />
		
        
		  <b><?php echo $entry_email ?></b><br />
              <input type="text" name="email" value="<?php echo $email; ?>" /><br />
              <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
              <?php } ?><br />
              
            <b><?php echo $entry_rating; ?></b>&nbsp;<span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ( $rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ( $rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ( $rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ( $rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ( $rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span><br /><br>

              <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
              <?php } ?>
              
             
		<b><?php echo $entry_captcha; ?></b><span class="required">*</span> <br>

              <input type="text" name="captcha" value="<?php echo $captcha; ?>" /><br><br />
		      <img src="index.php?route=information/contact/captcha" /> <br>
	  </div>
      <div class="buttons">
       <div class="right"><a  onclick="$('#testimonial').submit();" class="button"><?php echo $button_send; ?></a></div>
		<div class="left"><a class="button" href="<?php echo $showall_url;?>"><span><?php echo $show_all; ?></span></a></div>
       </div>

      </div>
    </form>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
<?php echo $footer; ?> 