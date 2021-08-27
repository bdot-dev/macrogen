/** Vue 값 콤마 처리 **/
Vue.filter('numberWithCommas' , function (value){
	return numberWithCommas(value);
});
/** Vue 날짜 타입 변경. **/
Vue.filter('timeToDate' , function (stmp, returnType){
	var str = formatDate(stmp, returnType);
	if (!str) {
		return null;
	} else {
		return str.toUpperCase();
	}
});
/** yyyymmdd to yyyy년 mm월 **/
Vue.filter('yyyymmToStr' , function (value){
	if (!value) return ''
	value = value.toString();
	return value.substring(0,4) + "년 " + value.substring(4,6) + "월";
});
Vue.filter('enterToBr' , function (value){
	if (!value) return value;
	return value.split('\n').join('<br />');
});
