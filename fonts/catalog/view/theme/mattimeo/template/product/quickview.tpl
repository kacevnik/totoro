<?php
           $wayPath = 'catalog/view/theme/mattimeo/template/';
?> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<?php if (($this->config->get('colorsite') !='0' && $this->config->get('colorsite') !='' && $this->config->get('colorsite') !='none')) { ?>
     <link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/style<?php echo $this->config->get('colorsite'); ?>.css" />
<?php } else { ?>
     <link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/style1.css" /> 
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mattimeo/stylesheet/stylesheet.css" />
<link rel="stylesheet" href="catalog/view/javascript/FontAwesome/css/font-awesome.min.css">
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/theme/mattimeo/js/product/jquery.elevateZoom-2.5.5.js"></script>
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
</head>
<body id="quickview">
<div class="main2">
<div id="notification"></div>
 <div class="product-info">
  <h1><?php echo $heading_title; ?></h1> 
    <?php if ($thumb || $images) { ?>
    <div class="quickview">
     <?php if ($thumb) { ?>
      <div class="image">
       <a title="<?php echo $heading_title; ?>">
       <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="main-image" data-zoom-image="<?php echo $popup; ?>"  >
        
       </a></div>
      <?php } ?>
      
     <?php $i=1; if ($images) { ?>
					
						<div class="image-additional quick"  id="add-gallery">
							<?php if (($thumb) && (isset($smallimg))) { ?>
							<div data-index="0">
								<a title="<?php echo $heading_title; ?>" data-image="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>">
                                <img src="<?php echo $smallimg; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" ></a>
							</div>
							<?php } ?>
                            
                            
							<?php foreach ($images as $image) { ?>
                            <?php if (isset($image['thumb1'])) { ?>
							<div data-index="<?php echo $i; ?>">
								<a title="<?php echo $heading_title; ?>" data-image="<?php echo $image['thumb1']; ?>" data-zoom-image="<?php echo $image['popup']; ?>">
                                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" ></a>
							</div>
                            <?php } ?>
							<?php $i++; } ?>
                            
						</div>
					
				<?php } ?>
     </div>
    <?php } ?> 
  

 
  
    <div> 
     
     <div class="general_info"> 
     <?php if ($price) { ?>
      <div class="price">
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?> 
       
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
          <?php if (isset($saving)) { ?>
           <div  class="savemoney">- <?php echo $saving; ?>%</div>
           <?php } ?> 
        <?php } ?>
        <div class="sticker-img"><?php echo $sticker; ?></div>  
        <br />
        <?php if ($tax) { ?>
        <div class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></div><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      
      
    
    
      <div class="description">
        <?php if (isset($manufacturers_img)) { ?>
            <?php echo ($manufacturers_img) ? '<div class="brand_img"> <a href="'.$manufacturers.'"><img src="'.$manufacturers_img.'"  title="'.$manufacturer.'" /></a></div>' : '' ;?>
             <?php } ?>
      
        <?php if ($manufacturer) { ?>
        <span><?php echo $text_manufacturer; ?></span><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>
        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        <?php if ($reward) { ?>
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
        
        
      
      <div class="review"> 
       <?php if ($review_status) { ?>
        <div class="review_stars">
        <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
          &nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click'); $('html, body').animate({scrollTop: $('#tabs').offset().top}, 800);"><?php echo $reviews; ?></a>&nbsp;|&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click'); $('html, body').animate({scrollTop: $('#tabs').offset().top}, 800);"><?php echo $text_write; ?></a></div>
     <?php } ?> 
     
      <div class="pluso" data-background="transparent" data-options="small,round,line,horizontal,nocounter,theme=04" data-services="vkontakte,odnoklassniki,moimir,facebook,twitter,google"></div>
      </div>
       </div>  

      
      <?php if ($options) { ?>
      <div class="options">
        <h2><?php echo $text_option; ?></h2>
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <table class="option-image">
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <tr>
              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
        <br />
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      
      
      
       <div class="cart">
        
         <table class="gty"><tr><td>
          <input type="button" id="decrease" value="" /></td><td><input type="text" name="quantity" id="htop" size="2" value="<?php echo $minimum; ?>" /></td><td><input type="button" id="increase" value="" />
          <input type="hidden" name="product_id" size="4" value="<?php echo $product_id; ?>" /></td>
         </tr></table> 
          <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />

        
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
    
		<?php if ($benefits) { ?>
		<div class="benefits">
		<div><?php echo $text_benefits; ?></div>
		<ul class="benefit">
		<?php foreach ($benefits as $benefit) { ?>	
			<?php if ($benefit['type'] == 1) { ?>
				<li>
					<?php if (!$benefit['link']) { ?>
					   <span class="thumb"><img src="<?php echo $benefit['thumb']; ?>" alt="<?php echo $benefit['name']; ?>" /></span>
					<?php } else { ?> 
					   <a href="<?php echo $benefit['link']; ?>" target="_blank" title="<?php echo $benefit['name']; ?>"><span class="thumb"><img src="<?php echo $benefit['thumb']; ?>" alt="<?php echo $benefit['name']; ?>" /></span></a>
					<?php } ?>
					<?php if ($benefit['description']) { ?>
						<div class="benefit_description"><?php echo $benefit['description']; ?></div>
					<?php } ?>
				</li>
			<?php } ?> 
		<?php } ?>
		</ul>
		</div>
		<?php } ?>  
       <?php if ($benefits) { ?>
		<div class="present">
			<?php foreach ($benefits as $benefit) { ?>	
				<?php if ($benefit['type'] == 0) { ?>
					<div>
						<?php if (!$benefit['link']) { ?>
						   <span class="thumb"><img src="<?php echo $benefit['thumb']; ?>" alt="<?php echo $benefit['name']; ?>" /></span>
						<?php } else { ?> 
						   <a href="<?php echo $benefit['link']; ?>" target="_blank" title="<?php echo $benefit['name']; ?>"><span class="thumb"><img src="<?php echo $benefit['thumb']; ?>" alt="<?php echo $benefit['name']; ?>" /></span></a>
						<?php } ?>
					</div>
				<?php } ?> 
			<?php } ?>
		</div>
		<?php } ?>
		        
    <?php 
    $cusom_p = $this->registry->get('cusom_p');
    if (($this->config->get('status_product') == '1') && (isset($cusom_p)) ){ ?> 
    <!--Custom product information--> 
    <div class="product_custom"><?php echo $cusom_p; ?></div> 
    <!--end Custom product information-->  
    <?php } ?> 
       
      
    </div>

  </div>  


  <div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
    <?php if ($attribute_groups) { ?>
    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
    <?php } ?>
    <?php if ($review_status) { ?>
    <a href="#tab-review"><?php echo $tab_review; ?></a>
    <?php } ?>
    <?php if ($articles) { ?>
    <a href="#tab-articles"><?php echo $tab_blog_related; ?> (<?php echo count($articles); ?>)</a>
    <?php } ?>
     <?php 
      $cusom_p_tab1 = $this->registry->get('cusom_p_tab1');
     if  (($this->config->get('status_product_tab') == '1') && (isset($cusom_p_tab1)) ){ ?> 
    <a href="#tab-custom"><?php echo $cusom_p_tab1; ?></a>
    <?php } ?>
  </div>
 <div id="tab-description" class="tab-content">
  <?php echo $description; ?>
  <?php require_once(DIR_SYSTEM . 'library/user.php');
  $this->registry->set('user', new User($this->registry));
  if ($this->user->isLogged()) { $userLogged = true; } else { $userLogged = false;} if ($userLogged) { ?>
  <div class="edit">
  <a class="button" target="_blank" href="/admin/index.php?route=catalog/product/update&token=<?php echo $this->session->data['token']; ?>&product_id=<?php echo $product_id; ?>"><?php echo $button_edit_product; ?></a>
  </div>
  <?php } ?>
  </div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br /><br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="left"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
 
 <?php if ($articles) { ?>
  <div id="tab-articles" class="tab-content">
    <div class="box-product box-article">
      <?php foreach ($articles as $article) { ?>
      <div class="article-left">
        <?php if ($article['thumb']) { ?>
        <div class="image"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" /></a></div>
        <?php } ?> 
        <div class="name"><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></div>
		<div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($article['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
       
		<div class="description-article"><a href="<?php echo $article['href']; ?>"><?php echo $article['description']; ?> ...&raquo;</a></div>
        </div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
 
 <?php 
$cusom_p_tab2 = $this->registry->get('cusom_p_tab2'); 
 if (($this->config->get('status_product_tab') == '1') && (isset($cusom_p_tab2)) ){ ?> 
    <div id="tab-custom" class="tab-content"><?php echo $cusom_p_tab2; ?></div>
    <?php } ?>
    
 <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>" target="_parent"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>" target="_parent"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>    
    
    </div>
    </div>
<script type="text/javascript"><!--
$(document).ready(function() {
	
	   // additional images
	   $('.image-additional div a').click(function(){
		$('.image-additional div').removeClass('active');
		$(this).parent().addClass('active');
		$('.product-info .image img').attr('src', $(this).attr('data-image'));
	});
	$('.image-additional div:first').addClass('active');
	  
    // zoom
		
		$("#main-image").elevateZoom({
		gallery:'add-gallery',  
		galleryActiveClass: 'active',
		zoomType: "inner",
		cursor: "pointer"
		});	

});
//--></script>     
<script type="text/javascript"><!--
$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});

$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
				 if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '</div>');
					
				$('.success').fadeIn('slow');
				setTimeout ("$('.success').fadeOut('slow');", 3000);	
				$('#cart-total').html(json['total']);
				
				$("#notification a").attr("target","_parent");
			}	
		}
	});
});
// success
	$("body").click(function(e) {
	if($(e.target).closest('#notification .success').length==0) $('#notification .success').remove();
     });
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<script type="text/javascript">(function() {
  if (window.pluso)if (typeof window.pluso.start == "function") return;
  if (window.ifpluso==undefined) { window.ifpluso = 1;
    var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
    s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
    s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
    var h=d[g]('body')[0];
    h.appendChild(s);
  }})();</script>
<script type="text/javascript"><!--
	 var elm = $('#htop');
				  function spin( vl ) {
					elm.val( parseInt( elm.val(), 10 ) + vl );
				  }
				  $('#increase').click( function() { spin( 1 );  } );
				  $('#decrease').click( function() { if (elm.val () > 0 ){spin( -1 ); } });

//--></script>

</body></html>