<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
    <?php if($i+1<count($breadcrumbs)) { ?><?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><?php } ?>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($reviews) { ?>
  <div class="product-list">
    <?php foreach ($reviews as $review) { ?>
    <div class="item">
    
     <div class="left">
      <?php if ($review['prod_thumb']) { ?>
      <div class="image"><a href="<?php echo $review['prod_href']; ?>"><img src="<?php echo $review['prod_thumb']; ?>" title="<?php echo $review['prod_name']; ?>" alt="<?php echo $review['prod_name']; ?>" /></a></div>
       <div class="sticker-img"><?php echo $review['sticker']; ?></div>
      <?php } ?>
      </div>
      
      <div class="centr">
      <div class="name"><a href="<?php echo $review['prod_href']; ?>"><?php echo $review['prod_name']; ?></a></div>
      <div class="datepost"> <?php echo $review["date_added"];?></div>
      <div class="description"><a href="<?php echo $review['prod_href']; ?>"><?php echo $review['description']; ?> </a></div>
      </div>
      
      <div class="right featured_review">
   
      <div class="authorreview"><?php echo $review["author"];?></div>
	  <?php if ($review['rating']) { ?>
		<div class="rating">
		<?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($review['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
		</div>
	 <?php } ?>
	  </div>
      
    </div>
    <?php } ?>
    
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>