{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}




<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      {foreach $images as $v}
      <li data-target="#myCarousel" data-slide-to="{$i@index}" {if $v@index eq 0}class="active"{/if}></li>
      {/foreach}
    </ol>



    <!-- Wrapper for Slides -->
    <div class="carousel-inner">
      {foreach $images as $v}
      <div class="item {if $v@index eq 0}active{/if}">
          <!-- Set the first background image using inline CSS below. -->
          <div class="fill" style="background-image:url('photographs/portfolio/{$v}');"></div>
          <div class="carousel-caption">
              <h2>&nbsp;</h2>
          </div>
      </div>
      {/foreach}

    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>

</header>
<div class="container">

</div><!-- /.container -->


<script>
$('.carousel').carousel({
    interval: 5000 //changes the speed
})
</script>

{include file="footer.tpl"}
