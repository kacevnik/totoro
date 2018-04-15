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
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
  <script>
      ymaps.ready(function () {

        var myMap = new ymaps.Map("map", {
            center: [55.757592, 37.636486],
            zoom: 17
        });

        var myPlacemark = new ymaps.Placemark([55.757592, 37.636486] , {}, {
        preset: 'islands#icon',
              iconColor: '#0BA0A0'
          });     
     
        myMap.geoObjects.add(myPlacemark);
    });
  </script>
<div id="map" style="height: 370px;">

</div>
<!-- VK Widget -->
<script type="text/javascript" src="//vk.com/js/api/openapi.js?146"></script>

<!-- VK Widget -->
<div id="vk_groups">
	<h4 class="vkHeader"><a href="https://vk.com/totoroshopp">Мы в Контакте</a></h4>
</div>
<script type="text/javascript">
VK.Widgets.Group("vk_groups", {mode: 0, width: "300", height: "400"}, 70703529);
</script>
<!-- VK Widget old -->

<div id="instagramModule">
	<h4 class="istagramHeader"><a href="https://www.instagram.com/totoro_shop_/">Мы в Instagram</a></h4>
	<!-- Без профиля -->
<!-- <iframe src='/inwidget/index.php?toolbar=false&view=20' scrolling='no' frameborder='no' style='border:none;width:300px;height:403px;overflow:hidden;'></iframe> -->
	<?php

$user_id="34f77e6233474ccd87f422e9d4ecc775";
$access_token = "1398495560.c913388.b8fcc726503e4405929abdd5d0c2a68c";

$url = "https://api.instagram.com/v1/users/self/media/recent/?access_token=".$access_token;
		
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