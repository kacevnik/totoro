<div class="cont_bottom">

</div>

<div class="container <?php if($maps != '') { ?>yesmaps<?php }?> <?php if ($this->config->get('f_contact_status') != '1') { ?>nocontact<?php }?>">

<div class="column-welcome">

     <?php
     $cusom_payment1 = $this->registry->get('cusom_payment1');
      if ((isset($cusom_payment1)) && ($cusom_payment1 !='' )) { ?>
    <h3><?php echo $cusom_payment1; ?></h3>
   <?php }?>
   <?php 
    $cusom_payment2 = $this->registry->get('cusom_payment2');
   if(isset($cusom_payment2)) { ?>
    <?php echo  $cusom_payment2; ?>
   <?php }?>
   
   
   <!--Network icons--> 
    <?php 
    $cusom_network = $this->registry->get('cusom_network');
    if (isset($cusom_network)) { ?>
    <div class="soc_network">
 
     <?php foreach ($cusom_network as $item) { ?>
        <div><a href="<?php echo $item['href']; ?>" style="background-image:url('<?php echo $item['image']; ?>');" title="<?php echo $item['title']; ?>"></a></div>
      <?php }?>

   </div>
   <?php }?>
    <!--end Network icons--> 
 
</div>

  <?php if ($this->config->get('f_contact_status') == '1') { ?>
  <div class="column-contacts">
  <ul>
   <?php if($this->config->get('f_contact_phone') != '') { ?>
      <li class="phone_f"><?php echo html_entity_decode($this->config->get('f_contact_phone'));?></li>
     <?php } ?>
     <?php if($this->config->get('f_contact_fax') != '') { ?>
      <li class="fax_f"><?php echo html_entity_decode($this->config->get('f_contact_fax'));?></li>
     <?php } ?>
     <?php if($this->config->get('f_contact_email') != '') { ?>
      <li class="email_f"><a href="mailto:<?php echo $this->config->get('f_contact_email')?>"><?php echo $this->config->get('f_contact_email');?></a></li>
     <?php } ?>
     <?php if($this->config->get('f_contact_skype') != '') { ?>
      <li class="skype_f"><a href="skype://<?php echo $this->config->get('f_contact_skype')?>"><?php echo $this->config->get('f_contact_skype');?></a></li>
     <?php } ?>
     <?php if($this->config->get('f_contact_address') != '') { ?>
      <li class="address_f"><?php echo html_entity_decode($this->config->get('f_contact_address'));?></li>
     <?php } ?> 
    </ul>
    
 

  </div>

  <?php } ?>

<!-- <script type="text/javascript" src="https://userapi.com/js/api/openapi.js?49"></script>-->



 <span class="ctr"></span>
</div>
</div>

<div id="footer">

  <div class="container">
  
   <?php if ($informations) { ?>
  <div class="column three">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      
    </ul>
  </div>
  <?php } ?>
  
  
  <div class="column three">
    <h3><?php echo $text_service; ?></h3>
    <ul>
       <?php if ($this->config->get('f_link6') == '1') { ?>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
       <?php } ?>
        <?php if ($this->config->get('f_link5') == '1') { ?>
	  <li><a href="<?php echo $abuses; ?>"><?php echo $text_abuses; ?></a></li>
         <?php } ?>
	  <?php if ($this->config->get('f_link4') == '1') { ?>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
       <?php } ?>
       
	   <?php if ($this->config->get('f_link3') == '1') { ?>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
       <?php } ?>
       
        <?php if ($this->config->get('f_link8') == '1') { ?>
	  <li><a href="<?php echo $testimonial; ?>"><?php echo $text_testimonial; ?></a></li>
      <?php } ?>
      
    <?php if ($this->config->get('f_link7') == '1') { ?>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
       <?php } ?>
    <?php if ($this->config->get('f_link1') == '1') { ?>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
       <?php } ?>
    
 
    </ul> 
    </div>
  
  
   <div class="column three">
   <h3><?php echo $text_extra; ?></h3>
   <ul> 
     <?php if ($this->config->get('f_link2') == '1') { ?>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
       <?php } ?>      
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li> 
	  <li><a href="<?php echo $mostviewed; ?>"><?php echo $text_mostviewed; ?></a></li>
	  
   
   
    </ul>
  
  </div>
    <div class="column three">
   <h3><?php echo $text_account; ?></h3>
   <ul> 
     <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>

    </ul>
  
  </div>

  
</div>  

</div><!--end footer-->

<!--powered-->
<div id="powered">
<div class="container">

 <div class="extras">
    <?php 
   $mattimg_f = $this->registry->get('mattimg_f');
   if(isset($mattimg_f)) { ?>
   <ul>
    <?php foreach ($mattimg_f as $item) { ?>
      <li><img src="<?php echo $item['image']; ?>" alt="<?php echo $item['title']; ?>" title="<?php echo $item['title']; ?>"></li>
     <?php }?>
   </ul>
   <?php }?>
 </div>      
  
    
  <!--Copyright-->   
 <div class="copyright">
 <?php if($this->config->get('f_contact_copyright') != '') { ?>
      <?php echo html_entity_decode($this->config->get('f_contact_copyright'));?>
     <?php } else { ?>
 <?php echo $powered; ?>
 <?php } ?>
 </div>
 <!--end Copyright--> 
 
 </div>
 <div class="cont_bottom"></div>
 </div>
<!--end powered--> 

<?php if ($this->config->get('quick_view') == '1') { ?>  
<script type="text/javascript" src="catalog/view/javascript/quickview/quickview.js"></script>		

 <?php } ?>

 <script type="text/javascript">
$(document).ready(function() {
	$('.select1').customStyle1();
  });
 </script>


</div>
<!-- Yandex.Metrika counter --> <script type="text/javascript" > (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter45606729 = new Ya.Metrika({ id:45606729, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/45606729" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
</body></html>