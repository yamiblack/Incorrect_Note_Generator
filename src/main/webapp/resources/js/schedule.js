/**
 * 
 */
 $(function(){
    	$.datepicker.setDefaults({
    		dataFormat : 'yy-mm-dd',
    		showOtherMonths : true,
    		showMonthAfterYear : true,
    		changeYear : true,
    		chageMonth : true,
    		yearSuffix:"년",
    		monthNamesShort:['1','2','3','4','5','6','7','8','9','10','11','12'],
    		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    		dayNamesMin:['일','월','화','수','목','금','토'],
    		dayName:['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
    		});
    	$("#startDate").datepicker();
    	$("#endDate").datepicker();
    
    	$("#startDate").datepicker("setDate","today");
    	$("#endDate").datepicker("setDate","today");
    });			
function click_add(){
	var url = "${pageContext.request.contextPath}/jaewook/schedulePopup";
	var name = "schdulePopup";
	var option = "width = 600, height = 600 left = 100,top=50,location=no";
	window.open(url,name,option)
}