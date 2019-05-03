{extends file='page.tpl'}

{block name='notifications'}{/block}

{block name='page_header_container'}
    {block name='page_title' hide}
        <header class="page-header">
            <h1>{$smarty.block.child}</h1>
        </header>
    {/block}
{/block}

{block name='page_content_container'}
    <div id="content" class="page-content">
        {block name='page_content_top'}
            {block name='customer_notifications'}
                {include file='_partials/notifications.tpl'}
            {/block}
        {/block}
        {block name='page_content'}
            <!-- Page content -->
        {/block}
    </div>
    <div id="side-nav">
        <ul>
            <li><a{if $page.page_name == 'identity'} class="current"{/if} href="{$urls.pages.identity}">{l s='Information' d='Shop.Theme.Customeraccount'}</a></li>
            {if $customer.addresses|count}
            <li><a{if $page.page_name == 'addresses'} class="current"{/if} href="{$urls.pages.addresses}">{l s='Addresses' d='Shop.Theme.Customeraccount'}</a></li>
            {else}
            <li><a{if $page.page_name == 'address'} class="current"{/if} href="{$urls.pages.address}">{l s='Add first address' d='Shop.Theme.Customeraccount'}</a></li>
            {/if}
            {if !$configuration.is_catalog}
            <li><a{if $page.page_name == 'history'} class="current"{/if} href="{$urls.pages.history}">{l s='Order history and details' d='Shop.Theme.Customeraccount'}</a></li>
            {/if}
            {if $configuration.voucher_enabled && !$configuration.is_catalog}
            <li><a{if $page.page_name == 'discount'} class="current"{/if} href="{$urls.pages.discount}">{l s='Vouchers' d='Shop.Theme.Customeraccount'}</a></li>
            {/if}
            {if $configuration.return_enabled && !$configuration.is_catalog}
            <li><a{if $page.page_name == 'order_follow'} class="current"{/if} href="{$urls.pages.order_follow}">{l s='Merchandise returns' d='Shop.Theme.Customeraccount'}</a></li>
            {/if}
        </ul>
    </div>
{/block}

{block name='page_footer_container'}
    <footer class="page-footer">
        {block name='page_footer'}
            {block name='my_account_links'}
                {include file='customer/_partials/my-account-links.tpl'}
            {/block}
        {/block}
    </footer>
{/block}