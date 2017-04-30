<?php
           $wayPath = 'catalog/view/theme/mattimeo/template/';
?> 
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($robots) { ?>
<meta name="robots" content="<?php echo $robots; ?>" />
<?php } ?>
 <?php if ($this->config->get('gen_responsive') == '1') { ?>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<?php } ?>
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/stylesheet.css" />
<link rel="stylesheet" href="catalog/view/javascript/FontAwesome/css/font-awesome.min.css">
<link rel="stylesheet" href="catalog/view/theme/mattimeo/js/source/jquery.fancybox.css">
<!--Color scheme 
*******************************************-->
<?php if (($this->config->get('colorsite') !='0' && $this->config->get('colorsite') !='' && $this->config->get('colorsite') !='none')) { ?>
     <link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/style<?php echo $this->config->get('colorsite'); ?>.css" />
<?php } else { ?>
     <link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/style1.css" /> 
<?php } ?>

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/mattimeo/js/source/jquery.fancybox.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<!--JS 
*******************************************-->
<script type="text/javascript">
  Cufon.replace("h1");
</script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/owl.carousel.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/main.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common2.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/newselect.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/responsive/enquire.min.js"></script>


<!--Top Control 
*******************************************-->
<?php if ($this->config->get('topcontrol') == '1') { ?>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/scroll/scrolltopcontrol.js" type="text/javascript"></script>
<?php } ?>

<!--Fixed menu 
*******************************************-->
<?php if ($this->config->get('fixmenu') == '1') { ?>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/fixmenu.js" type="text/javascript"></script>
<?php } ?>

<!--Responsive
*******************************************-->
 <?php if ($this->config->get('gen_responsive') == '1') { ?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/responsive/menu_script.js"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/responsive.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/topmenu.css" />
<?php } ?>
<!--***************************************-->

<!--CSS 
*******************************************-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/carousel_style.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/owl.theme.css" />

<!--***************************************-->
<!-- Theme Fonts
**************************************-->
<?php if ($this->config->get('fonts_status') == '1') { 
		include $wayPath . "common/m_fonts.php";
	} ?>
<!--***************************************-->
<!-- Theme Custom colors
**************************************-->
<?php if ($this->config->get('color_status') == '1') { 
		include $wayPath . "common/m_colors.php";
	} ?>
<!--***************************************-->
<!-- Parallax box
**************************************-->
<?php if ($this->config->get('comptext_status') == '1')  { ?>

     <?php if($this->config->get('parall_fonts')!='') {
		$reg2fonts = array('Arial', 'Verdana', 'Helvetica', 'Lucida Grande', 'Trebuchet MS', 'Times New Roman', 'Tahoma', 'Georgia' );
         if (in_array($this->config->get('parall_fonts'), $reg2fonts)==false && $this->config->get('parall_fonts')!='') { ?>
         <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('parall_fonts') ?>&v1' rel='stylesheet' type='text/css'>
       <?php } } ?>

   <style type="text/css">
	<?php if($this->config->get('parallax_bg')!='' ){ ?> 
     #center_custom_box {
	background-image: url(<?php echo $this->config->get('config_url'); ?>image/<?php echo $this->config->get('parallax_bg') ?>);
	}
    <?php } ?>
	
	<?php if(($this->config->get('parall_fonts') != '') ||
         ($this->config->get('parall_fonts_size')!='none') ||
		 ($this->config->get('parall_fonts_weight')) ||
		 ($this->config->get('parall_fonts_transf')) ||
		 ($this->config->get('parall_fonts_color')!= ''))  
  {?>
  	
    .custom_box_parallax .bigtext { 
    <?php if($this->config->get('parall_fonts') != '') { 
     $fontpre =  $this->config->get('parall_fonts'); $font1 = str_replace("+", " ", $fontpre); ?>
	font-family: <?php echo $font1 ?>;
	<?php } 
	 if($this->config->get('parall_fonts_size')!='none') { ?> 
	font-size: <?php echo $this->config->get('parall_fonts_size') ?>px;
	<?php } 
	 if($this->config->get('parall_fonts_weight')) { ?>
	font-weight:bold;
	<?php } 
	 if($this->config->get('parall_fonts_transf')) { ?>
	text-transform:uppercase;
    <?php }
	if($this->config->get('parall_fonts_color') != '') { ?>
	color:<?php echo $this->config->get('parall_fonts_color') ?>;
    <?php } ?>
	}
	
	
<?php } ?>
	</style>
    
<?php } ?>
<!--***************************************-->
    

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>

<?php
           $this->language->load('common/footer');
           $text_information = $this->language->get('text_information');
           $this->language->load('module/mattimeotheme');
           $text_welcome = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
           $text_menu = $this->language->get('text_menu');
            $text_comparetop = $this->language->get('text_comparetop');
           ?> 
           
<!--Move panels--> 
<div class="movepanel">
  <?php include $wayPath ."/common/m_widget.php"; ?>  
  </div>
<!--end move panels-->
                       
<div id="container">
   <div id="all_header" class="color">
   <div id="header">
     <div class="header_topbox">
     <!--Top menu box-->
     <div class="container">
 
     <?php echo $currency; ?>
  
     <div class="kdv_top_text">Самый большой выбор Тоторо в Москве!</div>
   <div class="navButton menuResp links">

  <!--Link Home-->
  <?php if ($this->config->get('top_m_home') == '1') { ?>
 <div> <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></div>
  <?php }?>
  
  <!--Login or Registere-->
  <?php if ($this->config->get('top_m_welcome') == '1') { ?>
   <div id="welcome"> <?php if (!$logged) { ?><?php echo $text_welcome; ?><?php } else { ?><?php echo $text_logged; ?><?php } ?></div>
  <?php }?>
  
   <!--Link Wishlist-->
  <?php if ($this->config->get('top_m_wish') == '1') { ?>
 <div> <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></div>
  <?php }?>
  
   <!--Link Compare-->
  <?php if (($this->config->get('top_m_compare') == '1') && (isset($compare))) { ?>
 <div> <a href="<?php echo $compare; ?>"><?php echo $text_comparetop; ?></a></div>
  <?php }?>
  
   <!--Link Account-->
  <?php if ($this->config->get('top_m_account') == '1') { ?>
 <div> <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></div>
  <?php }?>
  
   <!--Link Cart-->
  <?php if ($this->config->get('top_m_cart') == '1') { ?>
 <div> <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></div>
  <?php }?>
  
   <!--Link Checkout-->
  <?php if ($this->config->get('top_m_checkout') == '1') { ?>
 <div> <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
  <?php }?>
  
   <!--Link Brand-->
   <?php if (($this->config->get('top_m_brand') == '1') && (isset($manufacturer))) { ?>
   <?php   
           $manufacturers_1 = $this->model_catalog_manufacturer->getManufacturers(0);
           if ($manufacturers_1) 
           {$output = '<div><a href="'. $href_manufacturer . '">'.$text_manufacturer.'</a></div>';} 
           echo $output;  
           ?> 
   <?php }?>
   
    <!--Link Specials-->
   <?php if (($this->config->get('top_m_spec') == '1') && (isset($special))) { ?>
       <div><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></div>
   <?php } ?>
   
  
   
    <!--Custom Link-->
    <?php 
			include $wayPath ."/common/m_header_customlink.php";
	 ?>
  </div>
  </div>
  <!--end Top menu box-->
  </div>
  
  <div class="header_middle container <?php if ($this->config->get('search_position') == '1') { ?>position_cart<?php }?>">
  <!--Logo-->
   <?php if ($logo) { ?>
  <div id="logo">
  <?php if (isset($this->request->get['route']) && $this->request->get['route'] != 'common/home') { ?> 
  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" ></a>
    <?php } else { ?>
   <a> <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" > </a>
    <?php } ?>
  </div>
  <?php } ?>
  <!--end Logo-->

<?php if ($this->config->get('search_position') !== '1') { ?>
  <!--Search-->
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" >
  </div>
  <!--end search-->
 <?php }?> 
  
     <!--Cart-->
    <?php echo $cart; ?>
  <!--end Cart-->
  
  <!--Contact info-->
  <div class="header_contact">
  <?php 
  $cusom_h = $this->registry->get('cusom_h');
  if (($this->config->get('h_contact_status') == '1') && (isset($cusom_h)) ){ ?>
	<?php echo $cusom_h; ?>
	
	<?php } ?>
  <?php
  if ($firstname) echo '<div id="arein"><a class="name_login" href="/index.php?route=account/account">'.$firstname.' '.$lastname.'</a> <a href="/index.php?route=account/logout">[выйти]</a></div>';
?>

    </div>
  <!--end Contact info--> 
<?php if(!$firstname){ ?>
 <div class="head_login">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <b>Вход в личный кабинет</b><br />
          <input type="email" name="email" value="<?php echo $email; ?>" placeholder="Email *" required style="margin-bottom: 4px; width: 234px"/>
          <br />
          <input type="password" name="password" value="<?php echo $password; ?>" placeholder="Пароль *" required style="margin-bottom: 4px; width: 234px"/>
          <br />
          <a href="http://totoro-shop.ru/index.php?route=account/register">Регистрация</a>
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
          <input type="submit" value="<?php echo $button_login; ?>" class="button" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
    <?php } ?>
  </div>
 <div class="cont_bottom"></div> 
</div>


<!--Menu-->
<div class="menu_fixed">
<div class="ma-nav-mobile-container hidden-desktop default 
<?php if ($this->config->get('menu_width') !== '1') { ?>containermenu <?php }?>
<?php if ($this->config->get('gen_topmenu') == '1') { ?>displaymenu<?php }?>">

                            <div class="navbar container">
 <?php if ($this->config->get('search_position') == '1') { ?>
  <!--Search-->
  <div id="search" class="sb-search">
						
							<input class="sb-search-input" placeholder="<?php echo $text_search; ?>" type="text" value="<?php echo $search; ?>" name="search">
							<input class="sb-search-submit button-search" type="submit" value="">
							<span class="sb-icon-search"></span>
						
					</div>

<!--end search-->
<?php }?>                                 
                            
                            
                                <div id="navbar-inner" class="navbar-inner navbar-inactive">
                                    <a class="kdv_menu_logo" href="<?php echo $home; ?>">
                                      <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                                    </a>
                                    <div class="kdv_store_name">TOTORO SHOP</div>
                                    <div class="kdv_menu_login">
                                      <a href="http://totoro-shop.ru/index.php?route=account/login"></a>
                                    </div>
                                    <div class="kdv_menu_cart">
                                      <a href="http://totoro-shop.ru/index.php?route=checkout/cart">
                                      </a>
                                    </div>
                                    <a class="btn btn-navbar">
                                        <span class="icon-bar">  </span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        
                                    </a>

  <div id="menu" class="menu">
  <ul  id="ma-mobilemenu" class="mobilemenu nav-collapse collapse">
   <!--Link home--> 
  <?php if ($this->config->get('gen_m_home') == '1') { ?>
  <li class="homelink active">
   <?php if (isset($this->request->get['route']) && $this->request->get['route'] != 'common/home') { ?> 
   <a href="<?php echo $home; ?>"><span><?php echo $this->language->get('text_home'); ?></span></a>
   <?php } else { ?> 
   <a><span><?php echo $this->language->get('text_home'); ?></span></a>
   <?php }?>
   </li>
    <?php }?>
    
  <?php if ($this->config->get('gen_topmenu') == '2') {
             include $wayPath ."/common/menudefault.php";  
             
             } elseif ($this->config->get('gen_topmenu') == '3') {
             include $wayPath ."/common/menudefault2.php"; } 
             
          else {
          
           include $wayPath ."/common/menutheme.php";}
		    ?> 
                      
                  <!--Link Account-->  
          <?php if ($this->config->get('gen_m_account') == '1') { ?>
         
          <li>
	     <a href="<?php echo $account; ?>"><?php echo $this->language->get('text_account'); ?></a>
          <?php if (isset($entry_email)) { ?>
	     <div class="topmenu" id="topmenuaccount">
		   <ul>
            <li>
            <?php if (!$logged) { ?>
            <?php } else { ?>
            <?php echo $text_logged; ?>
            <?php } ?>
           </li>
   
          <?php if (!$this->customer->isLogged()) { ?>
          <li id="enterkabinet">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <div><input type="text" name="email" value="<?php echo $entry_email; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /> </div>
          <div><input type="password" name="password" value="<?php echo $entry_password; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /></div>
          <div><input type="submit" value="<?php echo $button_login; ?>" class="button login" /></div>
          <div><a href="<?php echo $forgotten; ?>" ><?php echo $text_forgotten; ?></a><br> <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></div>
          </form> </li>   
         
          <?php } ?>
		  </ul>
	      </div>
          <?php } ?>
      </li>
          
          
           <?php }?>
        <!--end Link Account--> 
        
         <!--Link information-->  
          <?php 
           $Information_menu = $this->registry->get('Information_menu');
          if (($this->config->get('gen_m_info') == '1') && (isset($Information_menu))) { ?>
           
          <li class="parent linkinfo"><a><?php echo $this->language->get('text_information'); ?></a>
	     <div class="topmenu default">
	    	<ul>
		      <?php foreach ($Information_menu as $information) { ?>
		      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
		      <?php } ?>
		   </ul>
	     </div>
         </li>
         <?php } ?>
         <!--end Link information-->
         
         
         <?php if ($this->config->get('gen_m_spec') == '1') { ?>
           <!--Link Special--> 
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <!--end Special-->
         <?php } ?>
         
         <?php if ($this->config->get('gen_m_last') == '1') { ?>
         <!--Link Latest--> 
	
    <!--Lend Latest--> 
	<?php } ?>
         
          
          <?php if (($this->config->get('gen_m_brand') == '1') && (isset($manfs)) ) { ?>
          <!--Link Brand-->  
         <li><a href="<?php echo $brands; ?>"><?php echo $text_brands; ?></a>
         <?php $k = ceil(count($manfs)/3); ?>
          <div class="topmenu br_<?php echo $k; ?>" id="topbrand">
          <?php foreach ($manfs as $manf) { ?>
                <ul>
                <li><span><?php echo $manf['name']; ?></span>
                <?php if ($manf['manufacturer']) { ?>

                <?php foreach ($manf['manufacturer'] as $letter) { ?>
                <a href="<?php echo $letter['href']; ?>"><?php echo $letter['name']; ?></a>
                <?php } ?>

                <?php } ?>
               </li>
                </ul>

              <?php } ?>
       </div>    
          <!--end Link Brand-->
           <?php }?>
           
         <?php if ($this->config->get('config_blog_header_menu')) { ?>
	<li><a href="<?php echo $blog; ?>"><i class="fa fa-book"></i> <?php echo $text_blog; ?></a></li>
	<?php } ?>

         
        <?php 
			include $wayPath ."/common/m_customlink.php";
	 ?>  
        
         <?php 
			include $wayPath ."/common/m_htmlmenu.php";
		   ?>
 </ul>
</div>

</div>
<div class="kdv_w">
<ul>
  <li style="width: 22%;"><a href="https://vk.com/totoroshopp" target="_blank" class="kdv_vk"></a></li>
  <li style="width: 23%;"><a href="https://www.instagram.com/totoro_shop_/" class="kdv_insta" target="_blank"></a></li>
  <li style="width: 25%;"><a href="http://totoro-shop.ru/index.php?route=information/contact" class="kdv_mail"></a></li>
  <li style="width: 30%;"><a href="tel:+79261970800" class="kdv_phone"></a></li>
</ul>
  <div class="kdv_adress">
    <span>Москва, ул. Маросейка, 8</span> 
    <span>10.00-22.00 Без выходных</span> 
  </div>
</div>
</div>
</div>
</div>
<!--end menu-->



</div>
<div class="main topmain">
<div class="container">

<?php if ($error) { ?>
     <div class="warning"><?php echo $error ?><img src="catalog/view/theme/mattimeo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<div id="notification"></div>

