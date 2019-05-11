{extends file='page.tpl'}

{block name='page_content_container'}
    {block name='page_content'}
        <div class="text-xs-center">
            <div style="font-size: 100px; margin-top: 72px; margin-bottom: 55px;">404</div>
            <div style="margin: 30px 0;">
                <img src="{$urls.theme_assets}img/404.png" style="width: 180px;">
            </div>
            <p>{$page.title}</p>
            <br>
            <a href="{$urls.pages.index}" class="btn btn-secondary">{l s='Back' d='messages'}{l s='Home' d='Shop.Theme.Global'}</a>
        </div>
    {/block}
{/block}