
<link href="https://fonts.googleapis.com/css?family=Averia+Serif+Libre|Noto+Serif+TC:400,700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">

{foreach $stylesheets.external as $stylesheet}
    <link rel="stylesheet" href="{$stylesheet.uri}?{$smarty.const._TC_VERSION_DATE_}" type="text/css" media="{$stylesheet.media}">
{/foreach}

{foreach $stylesheets.inline as $stylesheet}
    <style>
        {$stylesheet.content}
    </style>
{/foreach}
