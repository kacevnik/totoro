<?php
$this->language->load('module/category');
$button_compare = $this->language->get('button_compare');
$button_wishlist = $this->language->get('button_wishlist');
$this->language->load('module/mattimeotheme');
$button_quick = $this->language->get('entry_quickview');
?>
<div class="box tab-section"> 
  <div class="box-heading"><ul id="tabs-<?php echo $module; ?>">
  <?php if($latest_products){ ?>
	<li class="current"><?php echo $tab_latest; ?></li>
	<?php } ?>
    <?php if($special_products){ ?>
	<li><?php echo $tab_special; ?></li>
	<?php } ?>
	<?php if($featured_products){ ?>
	<li><?php echo $tab_featured; ?></li>
	<?php } ?>
	<?php if($bestseller_products){ ?>
	<li><?php echo $tab_bestseller; ?></li>
	<?php } ?>
	
 </ul>
 </div>
 
 <!--latest-->
<?php if($latest_products){ ?>
 <div class="tab-prod box-content visible">
    <div class="box-product">
   
    <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
    <section  class="list_carousel content_carou" id="tab_latest_scroll">
    <div class="carou">
    <?php } ?>
      <?php foreach ($latest_products as $product) { ?>
      <div class="itemcolumns">
      <div>
       <div class="img_but">
               <?php if ($product['thumb']) { ?>
               
               <?php if  ($this->config->get('img_additional1') == '1') { ?> 
               <!--Additional images--> 
               <div class="owl-addimage owl-carousel"> <?php } ?>
               
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" ></a></div>
                
               <?php if ((isset($product['dop_img'])) && ($this->config->get('img_additional1') == '1') ) { ?> 
               <?php foreach ($product['dop_img'] as $img) { ?>
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $img;?>" alt="<?php echo $product['name']; ?>"></a></div>
               <?php } ?>
               <?php } ?>
                
        
                <?php if  ($this->config->get('img_additional1') == '1') { ?>  
                <!--end additional images--> 
                </div> <?php } ?>
                <?php } ?> 
                <div class="sticker-img"><?php echo $product['sticker']; ?></div>
                  <div class="hover_but">
               <?php if ($this->config->get('show_wishlist') == '1')  { ?>
               <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" ></a></div>
               <?php } ?>
               <?php if ($this->config->get('show_compare') == '1')  { ?>
               <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"  title="<?php echo $button_compare; ?>"></a></div>
               <?php } ?>
               <?php if  ((isset($product['quickview'])) && ($this->config->get('quick_view') == '1')) { ?>  
               <div class="quickviewbutton"><a class='quickview' href="<?php echo $product['quickview']; ?>" title="<?php echo $button_quick; ?>"></a></div>
               <?php } ?> 
               </div>
                </div> 
        
               <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
               <?php if ($product['price']) { ?>
               <div class="price">
               <?php if (!$product['special']) { ?>
               <?php echo $product['price']; ?>
               <?php } else { ?>
               <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if (isset($product['saving'])) { ?>
                <div  class="savemoney">- <?php echo $product['saving']; ?>%</div>
                <?php } ?>
               <?php } ?>
               </div>
               <?php } ?>
              
              <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
              
         <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
              
      </div>
      </div>
      <?php } ?>
      
      <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
      </div>
      <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
     </section> 
      <?php } ?>
      
    </div>
 </div>
<?php } ?>
<!--end latest-->
 
<!--specials-->
<?php if($special_products){ ?>
 <div class="tab-prod box-content">
    <div class="box-product">
    
      <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
    <section  class="list_carousel content_carou" id="tab_spec_scroll">
    <div class="carou">
    <?php } ?>
    
      <?php foreach ($special_products as $product) { ?>
      <div class="itemcolumns">
      <div>
       <div class="img_but">
               <?php if ($product['thumb']) { ?>
               
               <?php if  ($this->config->get('img_additional1') == '1') { ?> 
               <!--Additional images--> 
               <div class="owl-addimage owl-carousel"> <?php } ?>
               
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" ></a></div>
                
               <?php if ((isset($product['dop_img'])) && ($this->config->get('img_additional1') == '1') ) { ?> 
               <?php foreach ($product['dop_img'] as $img) { ?>
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $img;?>" alt="<?php echo $product['name']; ?>"></a></div>
               <?php } ?>
               <?php } ?>
                
        
                <?php if  ($this->config->get('img_additional1') == '1') { ?>  
                <!--end additional images--> 
                </div> <?php } ?>
                <?php } ?> 
                <div class="sticker-img"><?php echo $product['sticker']; ?></div>
                  <div class="hover_but">
               <?php if ($this->config->get('show_wishlist') == '1')  { ?>
               <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" ></a></div>
               <?php } ?>
               <?php if ($this->config->get('show_compare') == '1')  { ?>
               <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"  title="<?php echo $button_compare; ?>"></a></div>
               <?php } ?>
               <?php if  ((isset($product['quickview'])) && ($this->config->get('quick_view') == '1')) { ?>  
               <div class="quickviewbutton"><a class='quickview' href="<?php echo $product['quickview']; ?>" title="<?php echo $button_quick; ?>"></a></div>
               <?php } ?> 
               </div>
                </div> 
        
               <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
               <?php if ($product['price']) { ?>
               <div class="price">
               <?php if (!$product['special']) { ?>
               <?php echo $product['price']; ?>
               <?php } else { ?>
               <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if (isset($product['saving'])) { ?>
                <div  class="savemoney">- <?php echo $product['saving']; ?>%</div>
                <?php } ?>
               <?php } ?>
               </div>
               <?php } ?>
              
              <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
              
         <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
              
      </div>
      </div>
      <?php } ?>
      
      <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
      </div>
      <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
     </section>
    
      <?php } ?> 
      
    </div>
 </div>
<?php } ?>
<!--end specials-->

<!--featured-->
<?php if($featured_products){ ?>
  <div class="tab-prod box-content">
    <div class="box-product">
     <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
    <section  class="list_carousel content_carou" id="tab_featured_scroll">
    <div class="carou">
    <?php } ?> 
    
      <?php foreach ($featured_products as $product) { ?>
     <div class="itemcolumns">
      <div>
       <div class="img_but">
               <?php if ($product['thumb']) { ?>
               
               <?php if  ($this->config->get('img_additional1') == '1') { ?> 
               <!--Additional images--> 
               <div class="owl-addimage owl-carousel"> <?php } ?>
               
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" ></a></div>
                
               <?php if ((isset($product['dop_img'])) && ($this->config->get('img_additional1') == '1') ) { ?> 
               <?php foreach ($product['dop_img'] as $img) { ?>
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $img;?>" alt="<?php echo $product['name']; ?>"></a></div>
               <?php } ?>
               <?php } ?>
                
        
                <?php if  ($this->config->get('img_additional1') == '1') { ?>  
                <!--end additional images--> 
                </div> <?php } ?>
                <?php } ?> 
                <div class="sticker-img"><?php echo $product['sticker']; ?></div>
                  <div class="hover_but">
               <?php if ($this->config->get('show_wishlist') == '1')  { ?>
               <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" ></a></div>
               <?php } ?>
               <?php if ($this->config->get('show_compare') == '1')  { ?>
               <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"  title="<?php echo $button_compare; ?>"></a></div>
               <?php } ?>
               <?php if  ((isset($product['quickview'])) && ($this->config->get('quick_view') == '1')) { ?>  
               <div class="quickviewbutton"><a class='quickview' href="<?php echo $product['quickview']; ?>" title="<?php echo $button_quick; ?>"></a></div>
               <?php } ?> 
               </div>
                </div> 
        
               <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
               <?php if ($product['price']) { ?>
               <div class="price">
               <?php if (!$product['special']) { ?>
               <?php echo $product['price']; ?>
               <?php } else { ?>
               <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if (isset($product['saving'])) { ?>
                <div  class="savemoney">- <?php echo $product['saving']; ?>%</div>
                <?php } ?>
               <?php } ?>
               </div>
               <?php } ?>
              
              <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
              
         <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
              
      </div>
      </div>
      <?php } ?>
      
      <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
      </div>
      <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
     </section> 

      <?php } ?>
      
    </div>
 </div>
<?php } ?>
<!--end featured-->

<!--bestseller-->
<?php if($bestseller_products){ ?>
 <div class="tab-prod box-content">
    <div class="box-product">
    
     <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
    <section  class="list_carousel content_carou" id="tab_best_scroll">
    <div class="carou">
    <?php } ?>
    
      <?php foreach ($bestseller_products as $product) { ?>
      <div class="itemcolumns">
      <div>
       <div class="img_but">
               <?php if ($product['thumb']) { ?>
               
               <?php if  ($this->config->get('img_additional1') == '1') { ?> 
               <!--Additional images--> 
               <div class="owl-addimage owl-carousel"> <?php } ?>
               
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" ></a></div>
                
               <?php if ((isset($product['dop_img'])) && ($this->config->get('img_additional1') == '1') ) { ?> 
               <?php foreach ($product['dop_img'] as $img) { ?>
               <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $img;?>" alt="<?php echo $product['name']; ?>"></a></div>
               <?php } ?>
               <?php } ?>
                
        
                <?php if  ($this->config->get('img_additional1') == '1') { ?>  
                <!--end additional images--> 
                </div> <?php } ?>
                <?php } ?> 
                <div class="sticker-img"><?php echo $product['sticker']; ?></div>
                  <div class="hover_but">
               <?php if ($this->config->get('show_wishlist') == '1')  { ?>
               <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" ></a></div>
               <?php } ?>
               <?php if ($this->config->get('show_compare') == '1')  { ?>
               <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"  title="<?php echo $button_compare; ?>"></a></div>
               <?php } ?>
               <?php if  ((isset($product['quickview'])) && ($this->config->get('quick_view') == '1')) { ?>  
               <div class="quickviewbutton"><a class='quickview' href="<?php echo $product['quickview']; ?>" title="<?php echo $button_quick; ?>"></a></div>
               <?php } ?> 
               </div>
                </div> 
        
               <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
               <?php if ($product['price']) { ?>
               <div class="price">
               <?php if (!$product['special']) { ?>
               <?php echo $product['price']; ?>
               <?php } else { ?>
               <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if (isset($product['saving'])) { ?>
                <div  class="savemoney">- <?php echo $product['saving']; ?>%</div>
                <?php } ?>
               <?php } ?>
               </div>
               <?php } ?>
              
              <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
              
         <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
              
      </div>
      </div>
      <?php } ?>
      
      <?php if ($this->config->get('showmore_modtab') == '1')  { ?> 
      </div>
      <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
     </section> 
      <?php } ?>
      
    </div>
 </div>
<?php } ?>
<!--end bestseller-->


</div>
<script type="text/javascript">
$(function() {

$('#tabs-<?php echo $module; ?>').delegate('li:not(.current)', 'click', function() {
$(this).addClass('current').siblings().removeClass('current')
.parents('div.tab-section').find('div.tab-prod').eq($(this).index()).addClass('visible').siblings('div.tab-prod').removeClass('visible');
})

});

</script> 
<?php if ($this->config->get('showmore_modtab') == '1')  { ?> 

	<?php if (isset($height_box))  { ?> 
    <script type="text/javascript">  
		 $('.tab-prod .itemcolumns').css('min-height', <?php echo $height_box; ?>);
	</script> 	 
		 <?php } ?>
<script type="text/javascript"> 

		$(document).ready(function(){
			
	<?php if($latest_products){ ?>		
		$('#tab_latest_scroll .carou').carouFredSel({
			prev: '#tab_latest_scroll .prev',
			next: '#tab_latest_scroll .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290, visible: {min: 1, max: 5}}
		});	
	 <?php } ?> 	
			
	<?php if($featured_products){ ?>	
		$('#tab_featured_scroll .carou').carouFredSel({
			prev: '#tab_featured_scroll .prev',
			next: '#tab_featured_scroll .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290, visible: {min: 1, max: 5}}
		});
	 <?php } ?> 
	 	
	<?php if($bestseller_products){ ?>	
		$('#tab_best_scroll .carou').carouFredSel({
			prev: '#tab_best_scroll .prev',
			next: '#tab_best_scroll .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290, visible: {min: 1, max: 5}}
		});
	 <?php } ?> 	
		
	<?php if($special_products){ ?>
		$('#tab_spec_scroll .carou').carouFredSel({
			prev: '#tab_spec_scroll .prev',
			next: '#tab_spec_scroll .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290, visible: {min: 1, max: 5}}
		});
 <?php } ?> 
 
		<?php if (isset($height_box))  { ?>   
		 $('.tab-prod .itemcolumns').css('min-height', <?php echo $height_box; ?>);
		 <?php } ?>
		 
		 
		});
	</script>
   <?php } ?>   