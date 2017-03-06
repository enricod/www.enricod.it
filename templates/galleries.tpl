{config_load file="test.conf" section="setup"}
{include file="header.tpl" title="Enrico Donelli Photography" page="galleries"}

<div class="container">
    <header >
        <h1>Galleries</h1>
    </header>
    
    <div class="row">
        {foreach $galleries as $g}
        <div class="col-md-4"><a href="./gallery.php?g={$g->dirname}" ><img
                    src="photographs/galleries/{$g->dirname}/thumbs/{$g->coverImage}"
                    alt="{$g->dirname}"></a> <br />{$g->nome}</div>
        {/foreach}
    </div>
</div>

{include file="footer.tpl"}
