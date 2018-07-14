<#import "parts/common.ftl" as c>
<@c.page>
<div id="gallery">
    <a href="/img/1.jpg"><img src="/img/11.jpg" alt="Photo 1" /></a>
    <a href="/img/2.jpg"><img src="/img/22.jpg" alt="Photo 2" /></a>
    <a href="/img/3.jpg"><img src="/img/33.jpg" alt="Photo 3" /></a>
    <a href="/img/4.jpg"><img src="/img/44.jpg" alt="Photo 4" /></a>
    <a href="/img/5.jpg"><img src="/img/55.jpg" alt="Photo 5" /></a>
    <a href="/img/6.jpg"><img src="/img/66.jpg" alt="Photo 6" /></a>
    <a href="/img/7.jpg"><img src="/img/77.jpg" alt="Photo 7" /></a>
    <a href="/img/8.jpg"><img src="/img/88.jpg" alt="Photo 8" /></a>
    <a href="/img/9.jpg"><img src="/img/99.jpg" alt="Photo 9" /></a>
    <a href="/img/10.jpg"><img src="/img/1010.jpg" alt="Photo 10" /></a>
</div>
<script type="text/javascript">
    $( function() {
        $( '#gallery' ).jGallery();
    } );
</script>

</@c.page>