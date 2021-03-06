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
    {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
    {/block}


    {block name='header'}
        {include file='_partials/header.tpl'}
    {/block}

    {block name='notifications'}
        {include file='_partials/notifications.tpl'}
    {/block}

    {hook h="displayWrapperTop"}
    <div id="main-content-wrapper">
        {hook h="displayContentWrapperTop"}
        <div id="main-content">
            {block name="content"}
                <p>Hello world! This is HTML5 Boilerplate.</p>
            {/block}
        </div>
        {hook h="displayContentWrapperBottom"}
    </div>
    {hook h="displayWrapperBottom"}

    {block name="footer"}
        {include file="_partials/footer.tpl"}
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