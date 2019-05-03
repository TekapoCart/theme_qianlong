{extends file=$layout}

{block name='content'}

    <div id="home">
        {block name='hook_home'}
            {$HOOK_HOME nofilter}
        {/block}
    </div>

    <div class="footer">
        {hook h='displayFooterAfter'}
    </div>

{/block}

