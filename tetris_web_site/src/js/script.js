
$(".menu > ul > li").mouseover(function(){
	$(this).children(".sub").stop().slideDown();
});

$(".menu > ul > li").mouseleave(function(){
	$(this).children(".sub").stop().slideUp();
});

function click_event() {    
    document.getElementById("screen_event").className += " animate__animated animate__flash";   
    document.getElementById("screen_event").addEventListener('animationend', function() {
        document.getElementById("screen_event").style.display = 'none';
    }, {once: true});
	setTimeout(function(){
		document.querySelector(".tet_img img").className = "zoomin";
        document.querySelector(".title").className += " zoomin_text"
        document.querySelector(".home_menu").className += " zoomin_text2"
        document.getElementById("blind").style.display = 'none';
	},1545)
}
