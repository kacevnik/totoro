<div class="box blog_ocshop">
   <?php if ($header) {?>
  <div class="box-heading"><?php echo $header; ?></div>
  <?php } ?>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($reviews as $review) { ?>
      <div>
		<?php if ($review['article_id']) {?>
        <?php if ($review['articl_thumb']) { ?>
        <div class="image"><a href="<?php echo $review['articl_href']; ?>"><img src="<?php echo $review['articl_thumb']; ?>" alt="<?php echo $review['articl_name']; ?>" title="<?php echo $review['articl_name']; ?>"/></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $review['articl_href']; ?>"><?php echo $review['articl_name']; ?></a></div>
        
        <div class="added-viewed">
          <span class="datepost"><i class="fa fa-clock-o"></i> <?php echo $review["date_added"];?></span>&nbsp;&nbsp;
          <i class="fa fa-eye"></i> <?php echo $text_views; ?> <?php echo $review["viewed"];?></div>
          
        <div class="featured_review">
        <div class="textreview"><a href="<?php echo $review['href']?>"><?php echo $review['description']?> ...&raquo;</a></div>
		
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
		<?php } ?>
        </div>
      <?php } ?>
    </div>
  </div>
</div>