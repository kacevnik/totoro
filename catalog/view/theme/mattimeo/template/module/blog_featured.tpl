<div class="box  blog_ocshop">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($articles as $article) { ?>
      <div>
          <?php if ($article['thumb']) { ?>
		  <div class="image"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" /></a></div>
          <?php } ?>
          <div class="name"><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></div> 
          <div class="description"><a href="<?php echo $article['href']?>"><?php echo $article['description']; ?> ...&raquo;</a></div>
         <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($article['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
     
	  </div>
      <?php } ?>
    </div>
  </div>
</div>