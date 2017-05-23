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
{extends file='catalog/listing/product-list.tpl'}

{block name='product_list_header'}
    <div class="block-category hidden-sm-down">
		<h1 class="h1 col-md-8">{$category.name}</h1>
		<div class="col-md-4 hidden-sm-down total-products">
			{if $listing.products|count > 1}
			  <p>{l s='There are %product_count% products.' d='Shop.Theme.Catalog' sprintf=['%product_count%' => $listing.products|count]}</p>
			{else}
			  <p>{l s='There is %product_count% product.' d='Shop.Theme.Catalog' sprintf=['%product_count%' => $listing.products|count]}</p>
			{/if}
		</div>
		<div class="clearfix"></div>
      {if $category.image.large.url}
        <div class="category-cover">
          <img src="{$category.image.large.url}" alt="{$category.image.legend}">
        </div>
      {/if}
    </div>
    <div class="text-xs-center hidden-md-up">
      <h1 class="h1">{$category.name}</h1>
    </div>
{/block}
