<?php 
class ControllerCheckoutGuest extends Controller {
	public function index() {
		$this->language->load('checkout/checkout');

		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['text_your_details'] = $this->language->get('text_your_details');
		$this->data['text_your_account'] = $this->language->get('text_your_account');
		$this->data['text_your_address'] = $this->language->get('text_your_address');

		$this->data['entry_firstname'] = $this->language->get('entry_firstname');
		$this->data['entry_lastname'] = $this->language->get('entry_lastname');
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_telephone'] = $this->language->get('entry_telephone');
		$this->data['entry_company'] = $this->language->get('entry_company');
		$this->data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$this->data['entry_company_id'] = $this->language->get('entry_company_id');
		$this->data['entry_tax_id'] = $this->language->get('entry_tax_id');			
		$this->data['entry_address_1'] = $this->language->get('entry_address_1');
		$this->data['entry_address_2'] = $this->language->get('entry_address_2');
		$this->data['entry_postcode'] = $this->language->get('entry_postcode');
		$this->data['entry_city'] = $this->language->get('entry_city');
		$this->data['entry_country'] = $this->language->get('entry_country');
		$this->data['entry_zone'] = $this->language->get('entry_zone');
		$this->data['entry_shipping'] = $this->language->get('entry_shipping');

		$this->data['button_continue'] = $this->language->get('button_continue');

		if (isset($this->session->data['guest']['firstname'])) {
			$this->data['firstname'] = $this->session->data['guest']['firstname'];
		} else {
			$this->data['firstname'] = '';
		}

		if (isset($this->session->data['guest']['lastname'])) {
			$this->data['lastname'] = $this->session->data['guest']['lastname'];
		} else {
			$this->data['lastname'] = '';
		}

		if (isset($this->session->data['guest']['email'])) {
			$this->data['email'] = $this->session->data['guest']['email'];
		} else {
			$this->data['email'] = '';
		}

		if (isset($this->session->data['guest']['telephone'])) {
			$this->data['telephone'] = $this->session->data['guest']['telephone'];		
		} else {
			$this->data['telephone'] = '';
		}


		if (isset($this->session->data['guest']['payment']['company'])) {
			$this->data['company'] = $this->session->data['guest']['payment']['company'];			
		} else {
			$this->data['company'] = '';
		}

		$this->load->model('account/customer_group');

		$this->data['customer_groups'] = array();

		if (is_array($this->config->get('config_customer_group_display'))) {
			$customer_groups = $this->model_account_customer_group->getCustomerGroups();

			foreach ($customer_groups as $customer_group) {
				if (in_array($customer_group['customer_group_id'], $this->config->get('config_customer_group_display'))) {
					$this->data['customer_groups'][] = $customer_group;
				}
			}
		}

		if (isset($this->session->data['guest']['customer_group_id'])) {
			$this->data['customer_group_id'] = $this->session->data['guest']['customer_group_id'];
		} else {
			$this->data['customer_group_id'] = $this->config->get('config_customer_group_id');
		}

		// Company ID
		if (isset($this->session->data['guest']['payment']['company_id'])) {
			$this->data['company_id'] = $this->session->data['guest']['payment']['company_id'];			
		} else {
			$this->data['company_id'] = '';
		}

		// Tax ID
		if (isset($this->session->data['guest']['payment']['tax_id'])) {
			$this->data['tax_id'] = $this->session->data['guest']['payment']['tax_id'];			
		} else {
			$this->data['tax_id'] = '';
		}

		if (isset($this->session->data['guest']['payment']['address_1'])) {
			$this->data['address_1'] = $this->session->data['guest']['payment']['address_1'];			
		} else {
			$this->data['address_1'] = '';
		}

		if (isset($this->session->data['guest']['payment']['address_2'])) {
			$this->data['address_2'] = $this->session->data['guest']['payment']['address_2'];			
		} else {
			$this->data['address_2'] = '';
		}


		if (isset($this->session->data['guest']['payment']['city'])) {
			$this->data['city'] = $this->session->data['guest']['payment']['city'];			
		} else {
			$this->data['city'] = '';
		}





		$this->data['shipping_required'] = $this->cart->hasShipping();

		if (isset($this->session->data['guest']['shipping_address'])) {
			$this->data['shipping_address'] = $this->session->data['guest']['shipping_address'];			
		} else {
			$this->data['shipping_address'] = true;
		}			

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/guest.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/checkout/guest.tpl';
		} else {
			$this->template = 'default/template/checkout/guest.tpl';
		}

		$this->response->setOutput($this->render());		
	}

	public function validate() {
		$this->language->load('checkout/checkout');

		$json = array();

		// Validate if customer is logged in.
		if ($this->customer->isLogged()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		} 			

		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$json['redirect'] = $this->url->link('checkout/cart');		
		}

		// Check if guest checkout is avaliable.			
		if (!$this->config->get('config_guest_checkout') || $this->config->get('config_customer_price') || $this->cart->hasDownload()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		} 

		if (!$json) {
			if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
				$json['error']['firstname'] = $this->language->get('error_firstname');
			}

			if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
				$json['error']['lastname'] = $this->language->get('error_lastname');
			}

			if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
				$json['error']['email'] = $this->language->get('error_email');
			}

			if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
				$json['error']['telephone'] = $this->language->get('error_telephone');
			}
			if ((utf8_strlen($this->request->post['street']) < 3) || (utf8_strlen($this->request->post['street']) > 32)) {
				$json['error']['street'] = $this->language->get('error_street');
			}
			if ((utf8_strlen($this->request->post['dom']) < 1) || (utf8_strlen($this->request->post['dom']) > 32)) {
				$json['error']['dom'] = $this->language->get('error_dom');
			}

			if (($this->request->post['city']) == '0') {
				$json['error']['city'] = $this->language->get('error_city');
			}

			// Customer Group
			$this->load->model('account/customer_group');

			if (isset($this->request->post['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->post['customer_group_id'], $this->config->get('config_customer_group_display'))) {
				$customer_group_id = $this->request->post['customer_group_id'];
			} else {
				$customer_group_id = $this->config->get('config_customer_group_id');
			}

			$customer_group = $this->model_account_customer_group->getCustomerGroup($customer_group_id);

			if ($customer_group) {	
				// Company ID
				if ($customer_group['company_id_display'] && $customer_group['company_id_required'] && empty($this->request->post['company_id'])) {
					$json['error']['company_id'] = $this->language->get('error_company_id');
				}

				// Tax ID
				if ($customer_group['tax_id_display'] && $customer_group['tax_id_required'] && empty($this->request->post['tax_id'])) {
					$json['error']['tax_id'] = $this->language->get('error_tax_id');
				}						
			}
		}

		if (!$json) {
			$this->session->data['guest']['customer_group_id'] = $customer_group_id;
			$this->session->data['guest']['firstname'] = $this->request->post['firstname'];
			$this->session->data['guest']['lastname'] = $this->request->post['lastname'];
			$this->session->data['guest']['email'] = $this->request->post['email'];
			$this->session->data['guest']['telephone'] = $this->request->post['telephone'];

			$this->session->data['guest']['payment']['firstname'] = $this->request->post['firstname'];
			$this->session->data['guest']['payment']['lastname'] = $this->request->post['lastname'];	
			$this->session->data['guest']['payment']['address_1'] = $this->request->post['address_1'];
			$this->session->data['guest']['payment']['city'] = $this->request->post['city'];

			$this->load->model('localisation/country');

			

			if (!empty($this->request->post['shipping_address'])) {
				$this->session->data['guest']['shipping_address'] = true;
			} else {
				$this->session->data['guest']['shipping_address'] = false;
			}

			if ($this->session->data['guest']['shipping_address']) {
				$this->session->data['guest']['shipping']['firstname'] = $this->request->post['firstname'];
				$this->session->data['guest']['shipping']['lastname'] = $this->request->post['lastname'];
				$this->session->data['guest']['shipping']['address_1'] = $this->request->post['address_1'];
				$this->session->data['guest']['shipping']['city'] = $this->request->post['city'];
				$this->session->data['guest']['shipping']['street'] = $this->request->post['street'];
				$this->session->data['guest']['shipping']['dom'] = $this->request->post['dom'];
				$this->session->data['guest']['shipping']['pod'] = $this->request->post['pod'];
				$this->session->data['guest']['shipping']['eta'] = $this->request->post['eta'];
				$this->session->data['guest']['shipping']['kva'] = $this->request->post['kva'];
		
				// Default Shipping Address

			}

			$this->session->data['account'] = 'guest';

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
		}

		$this->response->setOutput(json_encode($json));	
	}

	public function zone() {
		$output = '<option value="">' . $this->language->get('text_select') . '</option>';





		if (!$results) {
			$output .= '<option value="0">' . $this->language->get('text_none') . '</option>';
		}

		$this->response->setOutput($output);
	}
}
?>