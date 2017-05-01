page = $('#page');
$('.nav-item').click(function(){
	loadPage($(this).data('page'));
})
loadPage = function(pageName){
	page.load(`page/${pageName}`)
}