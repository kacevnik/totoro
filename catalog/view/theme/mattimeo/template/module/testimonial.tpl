<div class="box">
  <div class="box-heading"><?php if ($testimonial_title=="") echo "<br>"; else echo $testimonial_title; ?></div>
  <div class="box-content">
    <div class="box-product">

     <?php if ( (isset($position)) && ($position == 'column_left' || $position == 'column_right')){ ?> 
 
       <?php if ($this->config->get('showmore2_shop') == '1')  { ?>
       <!--Carousel products--> 
         <section  class="list_carousel" id="shop_scroll2">
         <div class="carou">
        <?php } ?> 
         
      
 <?php } else { ?>
 
      <?php if ($this->config->get('showmore_shop') == '1')  { ?>
       <!--Carousel products--> 
         <section  class="list_carousel content_carou" id="shop_scroll">
         <div class="carou">
         
       
         
       <?php } ?>
       
 <?php } ?>
  
   
      <?php foreach ($testimonials as $testimonial) { ?>
     <div class="itemcolumns">

         <div>
          <div class="featured_review"> 
             <div class="review_name"><?php echo $testimonial['title']; ?></div>
            <div  class="textreview"><?php echo $testimonial['description'] ; ?></div>
            
            <?php if ($testimonial['rating']) { ?>
                  <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($testimonial['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
          </div>
                <?php } ?>
                
             <?php if (($testimonial['name']!="") || ($testimonial['city']!="")) { ?>
             <div class="authorreview"><?php echo $testimonial['name']; ?>&nbsp;<?php echo $testimonial['city']; ?></div> 
             <?php } ?>       

      </div>
		
    </div>
    </div>
      <?php } ?>
      
       <?php if ( (isset($position)) && ($position == 'column_left' || $position == 'column_right')){ ?> 
 
       <?php if ($this->config->get('showmore2_shop') == '1')  { ?> 
        <!--Carousel products--> 
       </div>
       <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
        </section>
       <!--end Carousel products--> 
        <?php } ?> 
          
       <?php } else { ?> 
       
     <?php if ($this->config->get('showmore_shop') == '1')  { ?>
     <!--Carousel products--> 
     </div>
     <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
     </section>
     <!--end Carousel products--> 
     
      
     <?php } ?>  
     <?php } ?> 
</div>

    <a href="<?php echo $showall_url;?>" class="testimonal_button button"><?php echo $show_all; ?></a>
	<a href="<?php echo $isitesti; ?>" class="testimonal_button button"><?php echo $isi_testimonial; ?></a>
 
  </div>
</div>
 <?php if (($this->config->get('showmore2_shop') == '1')  && ((isset($position)) && ($position == 'column_left' || $position == 'column_right')) )  { ?>    
         <script type="text/javascript"> 
		  $(document).ready(function(){
		  $('#shop_scroll2 .carou').carouFredSel({
			prev: '#shop_scroll2 .prev',
			next: '#shop_scroll2 .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290,visible: {min: 1, max: 5}}
		});
		});
	</script>
    <?php } ?>  
<?php if ($this->config->get('showmore_shop') == '1')  { ?>    
         <script type="text/javascript"> 
		  $(document).ready(function(){
		  $('#shop_scroll .carou').carouFredSel({
			prev: '#shop_scroll .prev',
			next: '#shop_scroll .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290,visible: {min: 1, max: 5}}
		});
		});
	</script>
    <?php } ?>  