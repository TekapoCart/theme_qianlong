<div id="listing">
    {foreach from=$listing.products item="product"}
        {block name='product_miniature'}
            {include file='catalog/_partials/miniatures/product.tpl' product=$product}
        {/block}
    {/foreach}
</div>

{hook h='displayLeftColumnProduct'}
