<!doctype html>
<html lang="{$language.iso_code}">

<head>
    {block name='head'}
        {include file='_partials/head.tpl'}
    {/block}
</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames}">

{block name='hook_after_body_opening_tag'}
    {hook h='displayAfterBodyOpeningTag'}
{/block}

<main>
    {block name='header'}
        {include file='checkout/_partials/header.tpl'}
    {/block}

    {block name='notifications'}
        {include file='_partials/notifications.tpl'}
    {/block}

    {hook h="displayWrapperTop"}
    <div id="main-content-wrapper">
        {hook h="displayContentWrapperTop"}
        {block name="content"}
            <!--<section id="content">-->
                <div class="row">
                    <div class="col-md-8">

                        {block name='cart_summary'}
                            {render file='checkout/checkout-process.tpl' ui=$checkout_process}
                        {/block}

                    </div>
                    <div class="col-md-4">

                        {block name='cart_summary'}
                            {include file='checkout/_partials/cart-summary.tpl' cart = $cart}
                        {/block}

                        {hook h='displayReassurance'}
                    </div>
                </div>
            <!--</section>-->
        {/block}
        {hook h="displayContentWrapperBottom"}
    </div>
    {hook h="displayWrapperBottom"}

    {block name="footer"}
        {include file="checkout/_partials/footer.tpl"}
    {/block}

</main>

{block name='javascript_bottom'}
    {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
{/block}

{block name='hook_before_body_closing_tag'}
    {hook h='displayBeforeBodyClosingTag'}
{/block}

</body>

</html>