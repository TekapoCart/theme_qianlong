{block name='product_miniature_item'}
<article data-sticker="{$product.sticker}" class="item js-product-miniature {if isset($cssClass)}{$cssClass}{/if}" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
    {if strlen($product.sticker) > 0}<div class="sticker" style="background-image: url('/img/cms/sticker/{$product.sticker}');"></div>{/if}
    <div class="thumb"><a href="{$product.url}">
            <div class="header">
                <div>
                    <h3>{$product.name|truncate:70:'...'}</h3>
                    <div class="price">{$product.price}</div>
                </div>
            </div>
            <figure>
                <div class="bg" style="background-image: url('{$product.cover.bySize.home_default.url}'); "></div>
            </figure>
        </a></div>
    <div class="buy"><a {*href="{$product.url}"*} class="quick-view" href="#" data-link-action="quickview">{l s='Quick view' d='Shop.Theme.Actions'}</a></div>
</article>
{/block}