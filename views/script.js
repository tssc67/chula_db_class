page = $('#page');
$('.nav-item').click(function(){
	loadPage($(this).data('page'));
})
loadPage = function(pageName){
	history.pushState({pageName},pageName,pageName);
	_loadPage(pageName);
}
_loadPage = function(pageName){
	page.load(`page/${pageName}`)
}
window.onpopstate = function(e){
	console.log(e.state);
	if(!e.state)return _loadPage('students');
	_loadPage(e.state.pageName)
}
_loadPage('students');