var layers = [ hazard, exposure, vulnerability, risk, arga, hazrisk01, hazrisk1, object1 ];
var overlayLayers = [ duureg, subbasin ];

var hash = {};
hash['hazard'] = hazard;
hash['exposure'] = exposure;
hash['vulnerability'] = vulnerability;
hash['risk'] = risk;
hash['arga'] = arga;
hash['hazrisk01'] = hazrisk01;
hash['hazrisk1'] = hazrisk1;
hash['object1'] = object1;
hash['duureg'] = duureg;
hash['subbasin'] = subbasin;

function removeAllLayers() {
	for (i = 0; i < layers.length; i++) {
		map.removeLayer(layers[i]);
		console.log(layers[i]);
	}
};

function removeAllOverlayLayers() {
	for (i = 0; i < overlayLayers.length; i++) {
		map.removeLayer(overlayLayers[i]);
		console.log(overlayLayers[i]);
	}
};

$(function() {
	$('.description').hide();
	
	$('.layerControl').click(function(evt) {
		removeAllLayers();
		map.addLayer(hash[$(this).val()]);

		$('.description').hide();
		$('.description.'+$(this).val()).show();
	});

	$('.overlayControl').click(function(evt) {
		removeAllOverlayLayers();
		console.log($(this).val());
		if ( $(this).val() != 'none' ){
			map.addLayer(hash[$(this).val()]);
		}
	});
	
	$('#export-map').click(function(){
		console.log('bla');
		var exportPNGElement = $('#export-map'); 
		map.once('postcompose', function(event) {
			var canvas = event.context.canvas;
			canvas.setAttribute('origin-clean', 'false');
			
			var imgData = canvas.toDataURL("image/jpeg", 1.0);
			
			var pdf = new jsPDF();
			pdf.addImage(imgData, 'JPEG', 0, 0);
			pdf.save("download.pdf");
		});
		map.renderSync();
	});

	$(".layerControl[value='hazard']").click();
	$(".overlayControl[value='duureg']").click();
});



