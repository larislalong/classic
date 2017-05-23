{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
 
<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
  <div class="thumbnail-container">
    {block name='product_thumbnail'}
      <a href="{$product.url}" class="thumbnail product-thumbnail">
        <img
          src = "{$product.cover.bySize.home_default.url}"
          alt = "{$product.cover.legend}"
          data-full-size-image-url = "{$product.cover.large.url}"
        >
      </a>
    {/block}

    <div class="product-description">
		
		{if !$configuration.is_catalog && $product.quantity > $product.minimal_quantity}
			<div class="product-add-to-cart">
				<form action="{$urls.pages.cart}" method="post">
					<input type="hidden" value="{$static_token}" name="token" />
					<input type="hidden" value="{$product.id_product}" name="id_product" />
					<input type="hidden" value="{$product.minimal_quantity}" name="qty" />
					<div class="add">
						<button class="btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit">
							<i class="material-icons shopping-cart" style="margin: 0;">&#xE547;</i>
						</button>
					</div>
				</form>
			</div>
		{/if}
		<div class="clearfix"></div>
		{block name='product_name'}
			<h1 class="h3 product-title" itemprop="name"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></h1>
			<p class="product-conditionement sub">{l s='*vendu par carton de 6' d='Shop.Theme.Catalog' }</p>
		{/block}

      {block name='product_price_and_shipping'}
        {if $product.show_price}
          <div class="product-price-and-shipping">
            {if $product.has_discount}
              {hook h='displayProductPriceBlock' product=$product type="old_price"}

              <span class="regular-price">{$product.regular_price}</span>
            {/if}

            {hook h='displayProductPriceBlock' product=$product type="before_price"}

            <span itemprop="price" class="price">{$product.price}</span>
            
			<p class="product-unit-price sub">{l s='%unit_price%' d='Shop.Theme.Catalog' sprintf=['%unit_price%' => $product.unity]}</p>

            {hook h='displayProductPriceBlock' product=$product type='unit_price'}

            {hook h='displayProductPriceBlock' product=$product type='weight'}
          </div>
        {/if}
      {/block}
    </div>
    {block name='product_flags'}
      <ul class="product-flags">
        {foreach from=$product.flags item=flag}
			{if $flag.type != 'discount'}
			  <li class="product-flag {$flag.type}">{$flag.label}</li>
			{/if}
        {/foreach}
		{if $product.has_discount}
		  {if $product.discount_type === 'percentage'}
			<li class="product-flag discount-percentage">{$product.discount_percentage}</li>
		  {/if}
		{/if}
      </ul>
    {/block}
	
    {*<div class="highlighted-informations{if !$product.main_variants} no-variants{/if} hidden-sm-down">
      <a
        href="#"
        class="quick-view"
        data-link-action="quickview"
      >
        <i class="material-icons search">&#xE8B6;</i> {l s='Quick view' d='Shop.Theme.Actions'}
      </a>

      {block name='product_variants'}
        {if $product.main_variants}
          {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
        {/if}
      {/block}
    </div>*}

  </div>
</article>
