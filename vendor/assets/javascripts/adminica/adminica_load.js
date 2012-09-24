$(document).ready(function() {

	adminicaUi();
	adminicaForms();
	adminicaMobile();
	adminicaDataTables();
	adminicaCalendar();
	adminicaCharts();
	adminicaGallery();
	adminicaWizard();
	adminicaVarious();
});

$(window).load(function(){

	adminicaInit();

});

function pjaxToggle() {
	if ( $.cookie('pjax_on') === "true" ){
		$('#pjax_switch #dynamic_on').trigger("click");
		$("a.pjax").addClass("pjax_on");
	}
}
