{config_load file="test.conf" section="setup"}
{include file="header.tpl" title="Enrico Donelli Photography" page="galleries"}

<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>

<div class="container">
    <!-- Full Page Image Background Carousel Header -->
    <header >
        <h2><a href="galleries.php">Galleries</a> / {$gallery->nome}</h2>
    </header>
    <div>
      {$gallery->desc}
    </div>
    <div>
        <div id="links" >
           {foreach $images as $v}
                <a href="photographs/galleries/{$gallery->dirname}/small/{$v->filename}" title="{$v->titolo}" data-gallery>
                    <img style="padding:4px" src="photographs/galleries/{$gallery->dirname}/thumbs/{$v->filename}" alt="{$v->titolo}">
                </a>
           {/foreach}
        </div>

    </div>


</div>

<script>
{literal}
document.getElementById('links').onclick = function (event) {
    event = event || window.event;
    var target = event.target || event.srcElement,
        link = target.src ? target.parentNode : target,
        options = {index: link, event: event},
        links = this.getElementsByTagName('a');
    blueimp.Gallery(links, options);
};
{/literal}
</script>

{include file="footer.tpl"}
