<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>  
<div id="content" class="testimonials box">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="box-heading">
  <?php if (!$single)	 { ?>
	<div id="filter">
		<span <?php if ($active == 'all') echo 'class="active"';?>><a href="<?php echo $showall_url;?>"><?php echo $text_rating_all; ?>(<?php echo $total;?>)</a></span>
		<span <?php if ($active == 'good') echo 'class="active"';?>><a href="<?php echo $good;?>"><?php echo $text_rating_good; ?>(<?php echo $total_good;?>)</a></span>
		<span <?php if ($active == 'bad') echo 'class="active"';?>><a href="<?php echo $bad;?>"><?php echo $text_rating_bad; ?>(<?php echo $total_bad;?>)</a></span>
		
	</div>
</div> 
<div class="rightposition"><a class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><?php echo $write;?></a></div>
	 <?php } ?>
  <div class="middle">

    <?php if (true/*$testimonials*/) { ?>
    
      <?php foreach ($testimonials as $testimonial) { ?>
      <div class="content">
        <div class="review_name"><?php echo $testimonial['title']; ?></div>
      
                <?php echo $testimonial['description']; ?>
       
				<div class="rating">
				  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($testimonial['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
				  </div>
-&nbsp;<i><?php echo $testimonial['name'].' '.$testimonial['city'].' '.$testimonial['date_added']; ?></i>

	</div>
      <?php } ?>

    	<?php if ( isset($pagination)) { ?>
    		<div class="pagination"><?php echo $pagination;?></div>
    		<div class="rightposition"><a class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><span><?php echo $write;?></span></a></div>
    	<?php }?>
    <?php } ?>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
<?php echo $footer; ?> 