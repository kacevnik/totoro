<?php
           $wayPath = 'catalog/view/theme/mattimeo/template/';
?>

<?php echo $header; ?>
<?php if (isset($topcontent)) { ?>
<?php echo $topcontent; ?>
<?php } ?>
<?php if ($this->config->get('site_position') !== '1') { ?>
<?php echo $content_top; ?>
<?php } ?>


<?php echo $column_left; ?>
<?php echo $column_right; ?>
<div id="content">

<?php if ($this->config->get('site_position') == '1') { ?>
<?php echo $content_top; ?>
<?php } ?>


<?php if ($this->config->get('site_position') !== '1') { ?>
  <?php echo $content_bottom; ?>
<?php } ?>
</div>

<?php if ($this->config->get('site_position') == '1') { ?>

  <div class="cont_bottom"></div>
  <?php echo $content_bottom; ?>

<?php } ?>

<?php if ($this->config->get('slider_position') == '2') { ?>
<script type="text/javascript">

 <?php if ($this->config->get('gen_responsive') != '1') { ?>
 
 $(document).ready(function() {
	
	 var heightheader = $('#header').innerHeight() - $('#header .header_topbox').innerHeight() + 51;
	 $('.full_container .mattSlider').css('top',-heightheader);
	 $('.full_container .mattSlider').css('margin-bottom',-heightheader);
	 $('#all_header').removeClass("color").addClass("nocolor");
	 });
	 

 <?php } else { ?>
 
  if ($(window).width() >= '990'){
     var heightheader = $('#header').innerHeight() - $('#header .header_topbox').innerHeight() + 51;
	 $('.full_container .mattSlider').css('top',-heightheader);
	 $('.full_container .mattSlider').css('margin-bottom',-heightheader);
	 $('#all_header').removeClass("color").addClass("nocolor");
  };

	 $(window).resize(function (){	
	   if ($(window).width() >= '990'){
	     var heightheader = $('#header').innerHeight() - $('#header .header_topbox').innerHeight() + 51;
		 $('#all_header').removeClass("color").addClass("nocolor");
	  } else {
		 var heightheader = 0; 
		 $('#all_header').removeClass("nocolor").addClass("color");
		 
	  };
		
		  $('.full_container .mattSlider').css('top',-heightheader);
	      $('.full_container .mattSlider').css('margin-bottom',-heightheader);
	      

		    }); 		
	
	
			   
    <?php } ?>
	   	   

</script>
 <?php } ?>
 
 <?php if ($this->config->get('comptext_status') == '1')  {
 include $wayPath ."/common/m_custombox.php"; 
 } ?>
<style>
.yesmaps {
min-height: 450px;
}
.h3map{
	display: block;
}
.column-maps{
	display: block;
}
.column-contacts{
	display: block;
}
</style>
<div id="instagramModule">
	<h4 class="istagramHeader"><a href="https://www.instagram.com/totoro_shop_/">Мы в Instagram</a></h4>
	<?php

$user_id="1398495560";
$access_token = "1398495560.34f77e6.7ec19b0bd0be440986ad9560be0a5e0f";

$url = "https://api.instagram.com/v1/users/".$user_id."/media/recent?access_token=".$access_token;
		
$ch = curl_init($url); 

curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 20); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); 

$json = curl_exec($ch); 
curl_close($ch);
$result = json_decode($json);
foreach ($result->data as $post) { ?>
	<a class="instagram-unit" target="_blank" href="<?php echo $post->link;?>">
	<img src="<?php echo $post->images->low_resolution->url;?>"  alt="<?php echo $post->caption->text;?>"/></a>
<?php } ?>  
		
   
   </div>
<?php echo $footer; ?>