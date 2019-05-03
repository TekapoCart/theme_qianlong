{extends file=$layout}

{block name='content'}
    {block name='product_list'}
        {include file='catalog/_partials/products.tpl' listing=$listing}
    {/block}
{/block}