function createRasterLayer(layerName){
    return (new ol.layer.Image({
    source: new ol.source.ImageWMS({
        opacity: 0.5,
        url: 'http://flood.ub.gov.mn/geoserver/flood.risk.ub/wms',
        ratio: 1,
        params: {
            'LAYERS': 'flood.risk.ub:'+layerName ,
            'TRANSPARENT': 'true',
            tiled: true,
            'STYLES': 'opacity 0.5'
        }
    })
}) );
}

function createVectorLayer(layerName) {
    return (new ol.layer.Tile({
        source: new ol.source.TileWMS({
            url: 'http://flood.ub.gov.mn/geoserver/flood.risk.ub/wms',
            ratio: 1,
            params: {
                'FORMAT': 'image/png',
                'VERSION': '1.1.1',
                tiled: true,
                STYLES: 'text_test',
                'LAYERS': 'flood.risk.ub:' + layerName
            }
        })
    }));
}

// Jemr raster maps
var hazard = createRasterLayer('hazard.map.jemr');
var exposure = createRasterLayer('exposure.map.jemr');
var vulnerability = createRasterLayer('vulnerability.map.jemr');
var risk = createRasterLayer('risk.map.jemr');

// UsniiErchim raster maps
var arga = createRasterLayer('arga-hemjee');
var hazrisk01 = createRasterLayer('hazard-risk-01-prob');
var hazrisk1 = createRasterLayer('hazard-risk-1-prob');
var object1 = createRasterLayer('object-1-prob');

// vector maps
var duureg = createVectorLayer('duureg.ub.map.jemr');
var subbasin = createVectorLayer('subbasin.ub.map.jemr');

var extent = [104.5421, 47.2098, 109.7002, 48.6488];
var map = new ol.Map({
    target: 'map', // The DOM element that will contains the map
    renderer: 'canvas', // Force the renderer to be used
    layers: [
        new ol.layer.Tile({
            source: new ol.source.OSM()
        }),
        arga,
        duureg
    ],
    // Create a view centered on the specified location and zoom level
    view: new ol.View({
        extent: ol.proj.transformExtent(extent, 'EPSG:4326', 'EPSG:3857'),
        center: ol.proj.transform([106.9172, 47.9205], 'EPSG:4326', 'EPSG:3857'),
        zoom: 13
    })
});


