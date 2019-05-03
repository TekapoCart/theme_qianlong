{extends file='page.tpl'}

{block name='page_content_container'}
    {block name='cms_content'}
        {$cms.content nofilter}
    {/block}
{/block}
