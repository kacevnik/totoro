<?php

class ModelModuleTagCloud extends Model {

	public function isTableExists($table_name) {

		$query = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . $table_name . "'");
		if (count($query->rows) == 0)
	      	return FALSE;
		else
	      	return TRUE;
		

	}

	public function getRandomTags($limit, $min_font_size, $max_font_size, $font_weight) {
		
		if (isset($this->request->get['path'])) {
			$path = explode('_', $this->request->get['path']);
			
			$category_id = end($path);
			
			if ($this->isTableExists("product_tag") == false)
				$tagNameQuery = $this->db->query("SELECT DISTINCT tag FROM " . DB_PREFIX . "product_description pd join " . DB_PREFIX . "product_to_category p2c on p2c.product_id = pd.product_id  WHERE tag <> '' AND p2c.category_id = " .$category_id. " and language_id=" . (int)$this->config->get('config_language_id') . " order by rand()");
			else
				$tagNameQuery = $this->db->query("SELECT DISTINCT tag FROM " . DB_PREFIX . "product_tag pt join " . DB_PREFIX . "product_to_category p2c on p2c.product_id = pt.product_id  WHERE p2c.category_id = " .$category_id. " and language_id=" . (int)$this->config->get('config_language_id') . " order by rand()");

		}
		else
		{
			if ($this->isTableExists("product_tag") == false)
				$tagNameQuery = $this->db->query("SELECT DISTINCT tag FROM " . DB_PREFIX . "product_description WHERE tag <> '' AND language_id=" . (int)$this->config->get('config_language_id') . " order by rand()");
			else
				$tagNameQuery = $this->db->query("SELECT DISTINCT tag FROM " . DB_PREFIX . "product_tag WHERE language_id=" . (int)$this->config->get('config_language_id') . " order by rand()");			
		}

		$tags = array();
		foreach ($tagNameQuery->rows as $row) {
			$words = explode(",",$row['tag']);
			$tags = array_merge($tags, $words);
		}

		$tags = array_map('trim',$tags);

		$tags = array_unique($tags);

		shuffle($tags);
		
		$tags = array_slice(array_count_values($tags), 0, (int)$limit);

		$tagcloud = '';
		
		if (count($tags)==0) return $tagcloud;

		$max_qty = max(array_values($tags));
		$min_qty = min(array_values($tags));
		
		foreach ($tags as $key => $value) {				
			$size = rand((int)$min_font_size,(int)$max_font_size);	

			if ($this->isTableExists("product_tag") == false)
				$tagcloud = $tagcloud . '<a href="' . $this->url->link('product/search', 'tag=' . urlencode($key)) . '" style="text-decoration:none;font-size:' . $size . 'px;font-weight:' . $font_weight . ';" title="">' . $key . '</a> ';
			else
				$tagcloud = $tagcloud . '<a href="' . $this->url->link('product/search', 'filter_name=' . urlencode($key)) . '" style="text-decoration:none;font-size:' . $size . 'px;font-weight:' . $font_weight . ';" title="">' . $key . '</a> ';

		}
		
		return $tagcloud;
	}

}
?>