<div class="box">
  <?php if ($header) {?>
  <div class="box-heading"><?php echo $header; ?></div>
  <?php } ?>
  <div class="box-content">
    <div class="box-product">
    
   <?php if ( (isset($position)) && ($position == 'column_left' || $position == 'column_right')){ ?> 
 
       <?php if ($this->config->get('showmore2_reviews') == '1')  { ?>
       <!--Carousel products--> 
         <section  class="list_carousel" id="reviews_scroll2">
         <div class="carou">
        <?php } ?> 
         
      
 <?php } else { ?>
 
      <?php if ($this->config->get('showmore_reviews') == '1')  { ?>
       <!--Carousel products--> 
         <section  class="list_carousel content_carou" id="reviews_scroll">
         <div class="carou">
         
       
         
       <?php } ?>
       
 <?php } ?>
  
    
      <?php foreach ($reviews as $review) { ?>
      <div class="itemcolumns">
      <div>
        <?php if ($review['product_id']) {?>
          <div class="img_but">
          <?php if ($review['prod_thumb']) { ?>
          <div class="image"><a href="<?php echo $review['prod_href']; ?>"><img src="<?php echo $review['prod_thumb']; ?>" alt="<?php echo $review['prod_name']; ?>" title="<?php echo $review['prod_name']; ?>"/></a></div>
          <?php } ?>
           <div class="sticker-img"><?php echo $review['sticker']; ?></div>
          </div>
          
          <div class="name"><a href="<?php echo $review['prod_href']; ?>"><?php echo $review['prod_name']; ?></a></div>
          <?php } ?>
        
      
      <div class="featured_review">  
      <div  class="textreview"><a href="<?php echo $review['href']?>"><?php echo $review['description']?></a></div> 
      <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($review['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
      <div class="authorreview"><?php echo $review['author']?></div>
      </div>
     
      </div>
      </div>
      <?php } ?>
      
      <?php if ( (isset($position)) && ($position == 'column_left' || $position == 'column_right')){ ?> 
 
       <?php if ($this->config->get('showmore2_reviews') == '1')  { ?> 
        <!--Carousel products--> 
       </div>
       <div class="clearfix"></div>
				<a class="prev" href="#"></a>
				<a class="next" href="#"></a>
        </section>
       <!--end Carousel products--> 
        <?php } ?> 
          
       <?php } else { ?> 
       
     <?php if ($this->config->get('showmore_reviews') == '1')  { ?>
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
  </div> <div><a href="<?php echo $link_all_reviews; ?>" class="button"><span><?php echo $text_all_reviews;?></span></a></div>
</div>

 <?php if ($this->config->get('showmore_reviews') == '1')  { ?> 
    
          <?php if (isset($height_box))  { ?> 
		  <script type="text/javascript">    
		 $('#reviews_scroll .itemcolumns').css('min-height', <?php echo $height_box; ?>);
		 </script>
		 <?php } ?>     
         <script type="text/javascript"> 
		  $(document).ready(function(){
		$('#reviews_scroll .carou').carouFredSel({
			prev: '#reviews_scroll .prev',
			next: '#reviews_scroll .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290,visible: {min: 1, max: 5}}
		});
		});
	</script>
    <?php } ?>  
    <?php if (($this->config->get('showmore2_reviews') == '1')  && ((isset($position)) && ($position == 'column_left' || $position == 'column_right')))  { ?> 
    
          <?php if (isset($height_box))  { ?> 
		  <script type="text/javascript">    
		 $('#reviews_scroll2 .itemcolumns').css('min-height', <?php echo $height_box; ?>);
		 </script>
		 <?php } ?>     
         <script type="text/javascript"> 
		  $(document).ready(function(){
		$('#reviews_scroll2 .carou').carouFredSel({
			prev: '#reviews_scroll2 .prev',
			next: '#reviews_scroll2 .next',
			scroll: 1,
			swipe:{onTouch: true},
			auto: false,
			responsive: true,
			items: {width: 290,visible: {min: 1, max: 5}}
		});
		});
	</script>
    <?php } ?>  