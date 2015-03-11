$(function(){
	$('.js-warn').click(function(){
		artDialog(
			{
				title:'警示：',
				content:'用户登录后享有此功能',
				fixed:true,
				// lock:true,
				time:3
			}
		);
	});
})();