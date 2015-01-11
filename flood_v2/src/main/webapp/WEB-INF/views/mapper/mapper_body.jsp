<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:message var="district" code="map.district" />
<spring:message var="basin" code="map.basin" />
<spring:message var="tuulGol" code="map.tuul" />
<spring:message var="haraaGol" code="map.haraa" />
<spring:message var="bgd" code="map.bgd" />
<spring:message var="bzd" code="map.bzd" />
<spring:message var="chd" code="map.chd" />
<spring:message var="hud" code="map.hud" />
<spring:message var="sbd" code="map.sbd" />
<spring:message var="shd" code="map.shd" />
<spring:message var="hazard" code="map.hazard" />
<spring:message var="exposure" code="map.exposure" />
<spring:message var="vulnerability" code="map.vulnerability" />
<spring:message var="risk" code="map.risk" />
<spring:message var="future_risk" code="map.future_risk" />
<spring:message var="tuul_ar_zaisan" code="map.tuul.ar_zaisan" />
<spring:message var="tuul_bayangol" code="map.tuul.bayangol" />
<spring:message var="tuul_buheg_turgen" code="map.tuul.buheg_turgen" />
<spring:message var="tuul_clip_ub" code="map.tuul.clip_ub" />
<spring:message var="tuul_gatsuurt" code="map.tuul.gatsuurt" />
<spring:message var="tuul_hui_mandal" code="map.tuul.hui_mandal" />
<spring:message var="tuul_huindai_dend" code="map.tuul.huindai_dend" />
<spring:message var="tuul_nalaih" code="map.tuul.nalaih" />
<spring:message var="tuul_selbe" code="map.tuul.selbe" />
<spring:message var="tuul_terelj" code="map.tuul.terelj" />
<spring:message var="tuul_tolgoit" code="map.tuul.tolgoit" />
<spring:message var="tuul_tolgoit_bayangol" code="map.tuul.tolgoit_bayangol" />
<spring:message var="tuul_tor_hurn" code="map.tuul.tor_hurn" />
<spring:message var="tuul_ub" code="map.tuul.ub" />
<spring:message var="tuul_uliastai" code="map.tuul.uliastai" />
<spring:message var="haraa_clip_ub" code="map.haraa.clip_ub" />
<spring:message var="haraa_river" code="map.haraa.river" />
<spring:message var="map_prefix" code="map.url.prefix" />

<spring:message var="map_id_bgd_haz" code="map.id.bgd.haz" />
<spring:message var="map_id_bgd_exp" code="map.id.bgd.exp" />
<spring:message var="map_id_bgd_vul" code="map.id.bgd.vul" />
<spring:message var="map_id_bgd_risk" code="map.id.bgd.risk" />
<spring:message var="map_id_bgd_future_risk" code="map.id.bgd.future_risk" />
<spring:message var="map_id_bzd_haz" code="map.id.bzd.haz" />
<spring:message var="map_id_bzd_exp" code="map.id.bzd.exp" />
<spring:message var="map_id_bzd_vul" code="map.id.bzd.vul" />
<spring:message var="map_id_bzd_risk" code="map.id.bzd.risk" />
<spring:message var="map_id_bzd_future_risk" code="map.id.bzd.future_risk" />
<spring:message var="map_id_chd_haz" code="map.id.chd.haz" />
<spring:message var="map_id_chd_exp" code="map.id.chd.exp" />
<spring:message var="map_id_chd_vul" code="map.id.chd.vul" />
<spring:message var="map_id_chd_risk" code="map.id.chd.risk" />
<spring:message var="map_id_chd_future_risk" code="map.id.chd.future_risk" />
<spring:message var="map_id_hud_haz" code="map.id.hud.haz" />
<spring:message var="map_id_hud_exp" code="map.id.hud.exp" />
<spring:message var="map_id_hud_vul" code="map.id.hud.vul" />
<spring:message var="map_id_hud_risk" code="map.id.hud.risk" />
<spring:message var="map_id_hud_future_risk" code="map.id.hud.future_risk" />
<spring:message var="map_id_sbd_haz" code="map.id.sbd.haz" />
<spring:message var="map_id_sbd_exp" code="map.id.sbd.exp" />
<spring:message var="map_id_sbd_vul" code="map.id.sbd.vul" />
<spring:message var="map_id_sbd_risk" code="map.id.sbd.risk" />
<spring:message var="map_id_sbd_future_risk" code="map.id.sbd.future_risk" />
<spring:message var="map_id_shd_haz" code="map.id.shd.haz" />
<spring:message var="map_id_shd_exp" code="map.id.shd.exp" />
<spring:message var="map_id_shd_vul" code="map.id.shd.vul" />
<spring:message var="map_id_shd_risk" code="map.id.shd.risk" />
<spring:message var="map_id_shd_future_risk" code="map.id.shd.future_risk" />
<spring:message var="map_id_tuul_ar_zaisan" code="map.id.tuul.ar_zaisan" />
<spring:message var="map_id_tuul_bayangol" code="map.id.tuul.bayangol" />
<spring:message var="map_id_tuul_buheg_turgen" code="map.id.tuul.buheg_turgen" />
<spring:message var="map_id_tuul_clip_ub" code="map.id.tuul.clip_ub" />
<spring:message var="map_id_tuul_gatsuurt" code="map.id.tuul.gatsuurt" />
<spring:message var="map_id_tuul_hui_mandal" code="map.id.tuul.hui_mandal" />
<spring:message var="map_id_tuul_huindai_dend" code="map.id.tuul.huindai_dend" />
<spring:message var="map_id_tuul_nalaih" code="map.id.tuul.nalaih" />
<spring:message var="map_id_tuul_selbe" code="map.id.tuul.selbe" />
<spring:message var="map_id_tuul_terelj" code="map.id.tuul.terelj" />
<spring:message var="map_id_tuul_tolgoit" code="map.id.tuul.tolgoit" />
<spring:message var="map_id_tuul_tolgoit_bayangol" code="map.id.tuul.tolgoit_bayangol" />
<spring:message var="map_id_tuul_tor_hurn" code="map.id.tuul.tor_hurn" />
<spring:message var="map_id_tuul_ub" code="map.id.tuul.ub" />
<spring:message var="map_id_tuul_uliastai" code="map.id.tuul.uliastai" />
<spring:message var="map_id_haraa_clip_ub" code="map.id.haraa.clip_ub" />
<spring:message var="map_id_haraa_river" code="map.id.haraa.river" />



<style>
.topMenu {
	background-color: grey;
	color: #bec7cc;
	background-color: #324556;
	height: 30;
	vertical-align: middle;
}

.subMenu {
	background-color: gray;
	color: #bec7cc;
	background-color: #324556;
	height: 30;
	vertical-align: middle;
}

.menu:hover {
	opacity: 0.7;
	filter: alpha(opacity = 0.7);
	color: yellow;
}
.controlContainer{
	text-align: left;
}
.districtMapView, basinMapView{
	min-width: 580px;
	min-height: 714px;	
}
.selectedSubMenu
{
	color: orange;
}
.leftCurveBorder
{
	-moz-border-radius: 0px;
	-webkit-border-radius: 8px 0px 0px 0px;
	border-radius: 8px 0px 0px 0px;
}
.rightCurveBorder
{
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px 8px 0px 0px;
	border-radius: 0px 8px 0px 0px;
}
</style>
<script>
	$(function() {

		var districtMenus = [ 'bgd', 'bzd', 'chd', 'hud', 'sbd', 'shd' ];
		var basinMenus = [ 'tuul','haraa' ];
		$(".menu.topMenu").click(function(e) {
			e.preventDefault();
			var divId = this.id;
			if (divId == 'basin' || divId == 'district') {
				$('.menu.topMenu').removeClass('selectedSubMenu');
				$('#'+divId).addClass('selectedSubMenu');
				resetSubMenu();
				resetControlContainer();
				resetMapContainer();
				$('.' + divId + '.subMenuContainer').show();
				$('.' + divId + '.controlContainer').show();
				$('.' + divId + '.mapContainer').show();
			}
		});

		$(".menu.subMenu").click(function(e) {
			e.preventDefault();
			var divId = this.id;
			if (districtMenus.indexOf(divId) > -1 || basinMenus.indexOf(divId) > -1) {
				if (districtMenus.indexOf(divId) > -1) {
					$('.district.subMenuContainer').children().removeClass('selectedSubMenu');
					resetDistrictControl();
					resetDistrictMapView();
					$('.' + divId + '.districtControl').show();
					$('.' + divId + '.districtMapView').show();
				}
				else if(basinMenus.indexOf(divId) > -1){
					$('.basin.subMenuContainer').children().removeClass('selectedSubMenu');
					resetBasinControl();
					resetBasinMapView();
					$('.' + divId + '.basinControl').show();
					$('.' + divId + '.basinMapView').show();
				}

				$('#'+divId).addClass('selectedSubMenu');
				if ( $(".map_frame."+divId)[0].attributes['src'].value == "" ){
// 					console.log(divId + ' hooson bn');
					callMap(divId);
				}
			}
		});
		
		$(".control>div.radio>label>input").click(
				function(e){
			    	var type = $(this).attr('name');
					var control = $(this).val();
					selectRadioAction(control, type);
				}
			);
			
		// setup first view
		$("#district").click();
		$("#bgd").click();
		$("#tuul").click();
		$(".controlContainer").each(function(){
			x = $(this).children();
			$.each(x,function(){
				y = $(this).find('.radio>label>input');
			    y[0].click();
			});
		});
		// END --- setup first view
		
		loadMap();
	});

	function resetSubMenu() {
		$('.subMenuContainer').hide();
	};

	function resetControlContainer() {
		$('.controlContainer').hide();
	};
	function resetMapContainer() {
		$('.mapContainer').hide();
	};
	function resetDistrictControl() {
		$('.districtControl').hide();
	};
	function resetBasinControl() {
		$('.basinControl').hide();
	};

	function resetDistrictMapView() {
		$('.districtMapView').hide();
	};
	function resetBasinMapView() {
		$('.basinMapView').hide();
	};
	
	function selectRadioAction(menuType, mapType){
		$("."+menuType+"."+mapType).parent().children().hide();
		$("."+menuType+"."+mapType).show();
	};
	function loadMap(menuType, mapType){
		$(".map_frame."+menuType+"."+mapType).load(function(){
// 			console.log('closing LOADING div ' +menuType+":"+mapType);
			$('.loadingFrame.'+menuType+'.'+mapType).hide();
			$('.map_frame.'+menuType+'.'+mapType).show();
		});
	}
	
	function callMap(menu){
		if ( menu == 'bgd' ){
			$(".map_frame.bgd.hazard").attr("src", "${map_prefix}${map_id_bgd_haz}");
			$(".map_frame.bgd.exposure").attr("src", "${map_prefix}${map_id_bgd_exp}");
			$(".map_frame.bgd.vulnerability").attr("src", "${map_prefix}${map_id_bgd_vul}");
			$(".map_frame.bgd.risk").attr("src", "${map_prefix}${map_id_bgd_risk}");
			$(".map_frame.bgd.future_risk").attr("src", "${map_prefix}${map_id_bgd_future_risk}");
			
			loadMap('bgd', 'hazard');
			loadMap('bgd', 'exposure');
			loadMap('bgd', 'vulnerability');
			loadMap('bgd', 'risk');
			loadMap('bgd', 'future_risk');
		} 
		else if ( menu == 'bzd' ){
			$(".map_frame.bzd.hazard").attr("src", "${map_prefix}${map_id_bzd_haz}");
			$(".map_frame.bzd.exposure").attr("src", "${map_prefix}${map_id_bzd_exp}");
			$(".map_frame.bzd.vulnerability").attr("src", "${map_prefix}${map_id_bzd_vul}");
			$(".map_frame.bzd.risk").attr("src", "${map_prefix}${map_id_bzd_risk}");
			$(".map_frame.bzd.future_risk").attr("src", "${map_prefix}${map_id_bzd_future_risk}");
			
			loadMap('bzd', 'hazard');
			loadMap('bzd', 'exposure');
			loadMap('bzd', 'vulnerability');
			loadMap('bzd', 'risk');
			loadMap('bzd', 'future_risk');
				
		}
		else if ( menu == 'chd' ){
			$(".map_frame.chd.hazard").attr("src", "${map_prefix}${map_id_chd_haz}");
			$(".map_frame.chd.exposure").attr("src", "${map_prefix}${map_id_chd_exp}");
			$(".map_frame.chd.vulnerability").attr("src", "${map_prefix}${map_id_chd_vul}");
			$(".map_frame.chd.risk").attr("src", "${map_prefix}${map_id_chd_risk}");
			$(".map_frame.chd.future_risk").attr("src", "${map_prefix}${map_id_chd_future_risk}");
			
			loadMap('chd', 'hazard');
			loadMap('chd', 'exposure');
			loadMap('chd', 'vulnerability');
			loadMap('chd', 'risk');
			loadMap('chd', 'future_risk');
			
		}
		else if ( menu == 'hud' ){
			$(".map_frame.hud.hazard").attr("src", "${map_prefix}${map_id_hud_haz}");
			$(".map_frame.hud.exposure").attr("src", "${map_prefix}${map_id_hud_exp}");
			$(".map_frame.hud.vulnerability").attr("src", "${map_prefix}${map_id_hud_vul}");
			$(".map_frame.hud.risk").attr("src", "${map_prefix}${map_id_hud_risk}");
			$(".map_frame.hud.future_risk").attr("src", "${map_prefix}${map_id_hud_future_risk}");
		
			loadMap('hud', 'hazard');
			loadMap('hud', 'exposure');
			loadMap('hud', 'vulnerability');
			loadMap('hud', 'risk');
			loadMap('hud', 'future_risk');
			
		}
		else if ( menu == 'sbd' ){
			$(".map_frame.sbd.hazard").attr("src", "${map_prefix}${map_id_sbd_haz}");
			$(".map_frame.sbd.exposure").attr("src", "${map_prefix}${map_id_sbd_exp}");
			$(".map_frame.sbd.vulnerability").attr("src", "${map_prefix}${map_id_sbd_vul}");
			$(".map_frame.sbd.risk").attr("src", "${map_prefix}${map_id_sbd_risk}");
			$(".map_frame.sbd.future_risk").attr("src", "${map_prefix}${map_id_sbd_future_risk}");
			
			loadMap('sbd', 'hazard');
			loadMap('sbd', 'exposure');
			loadMap('sbd', 'vulnerability');
			loadMap('sbd', 'risk');
			loadMap('sbd', 'future_risk');
			
		}
		else if ( menu == 'shd' ){
			$(".map_frame.shd.hazard").attr("src", "${map_prefix}${map_id_shd_haz}");
			$(".map_frame.shd.exposure").attr("src", "${map_prefix}${map_id_shd_exp}");
			$(".map_frame.shd.vulnerability").attr("src", "${map_prefix}${map_id_shd_vul}");
			$(".map_frame.shd.risk").attr("src", "${map_prefix}${map_id_shd_risk}");
			$(".map_frame.shd.future_risk").attr("src", "${map_prefix}${map_id_shd_future_risk}");
			
			loadMap('shd', 'hazard');
			loadMap('shd', 'exposure');
			loadMap('shd', 'vulnerability');
			loadMap('shd', 'risk');
			loadMap('shd', 'future_risk');
		}
		else if ( menu == 'tuul' ){
			$(".map_frame.tuul.ar_zaisan").attr("src", "${map_prefix}${map_id_tuul_ar_zaisan}");
			$(".map_frame.tuul.bayangol").attr("src", "${map_prefix}${map_id_tuul_bayangol}");
			$(".map_frame.tuul.buheg_turgen").attr("src", "${map_prefix}${map_id_tuul_buheg_turgen}");
			$(".map_frame.tuul.clip_ub").attr("src", "${map_prefix}${map_id_tuul_clip_ub}");
			$(".map_frame.tuul.gatsuurt").attr("src", "${map_prefix}${map_id_tuul_gatsuurt}");
			$(".map_frame.tuul.hui_mandal").attr("src", "${map_prefix}${map_id_tuul_hui_mandal}");
			$(".map_frame.tuul.huindai_dend").attr("src", "${map_prefix}${map_id_tuul_huindai_dend}");
			$(".map_frame.tuul.nalaih").attr("src", "${map_prefix}${map_id_tuul_nalaih}");
			$(".map_frame.tuul.selbe").attr("src", "${map_prefix}${map_id_tuul_selbe}");
			$(".map_frame.tuul.terelj").attr("src", "${map_prefix}${map_id_tuul_terelj}");
			$(".map_frame.tuul.tolgoit").attr("src", "${map_prefix}${map_id_tuul_tolgoit}");
			$(".map_frame.tuul.tolgoit_bayangol").attr("src", "${map_prefix}${map_id_tuul_tolgoit_bayangol}");
			$(".map_frame.tuul.tor_hurn").attr("src", "${map_prefix}${map_id_tuul_tor_hurn}");
			$(".map_frame.tuul.ub").attr("src", "${map_prefix}${map_id_tuul_ub}");
			$(".map_frame.tuul.uliastai").attr("src", "${map_prefix}${map_id_tuul_uliastai}");
		
			loadMap('tuul', 'ar_zaisan');
			loadMap('tuul', 'bayangol');
			loadMap('tuul', 'buheg_turgen');
			loadMap('tuul', 'clip_ub');
			loadMap('tuul', 'gatsuurt');
			loadMap('tuul', 'hui_mandal');
			loadMap('tuul', 'huindai_dend');
			loadMap('tuul', 'nalaih');
			loadMap('tuul', 'selbe');
			loadMap('tuul', 'terelj');
			loadMap('tuul', 'tolgoit');
			loadMap('tuul', 'tolgoit_bayangol');
			loadMap('tuul', 'tor_hurn');
			loadMap('tuul', 'ub');
			loadMap('tuul', 'uliastai');
			
		}
		else if ( menu == 'haraa' ){
			$(".map_frame.haraa.clip_ub").attr("src", "${map_prefix}${map_id_haraa_clip_ub}");
			$(".map_frame.haraa.river").attr("src", "${map_prefix}${map_id_haraa_river}");
		
			loadMap('haraa', 'clip_ub');
			loadMap('haraa', 'river');
		}
	}
</script>
<div id="contentBody" class="container">
<!-- 	<div id="contentBody row"> -->
	<hr class="featurette-divider">
<!-- 		<div class=""> -->
			<div class="row">
				<div id="district" class="col-xs-6 menu topMenu leftCurveBorder">${district}</div>
				<div id="basin" class="col-xs-6 menu topMenu rightCurveBorder">${basin}</div>
			</div>
		
			<div class="row district subMenuContainer">
				<div id="bgd" class="col-xs-2 menu subMenu">${bgd}</div>
				<div id="bzd" class="col-xs-2 menu subMenu">${bzd}</div>
				<div id="chd" class="col-xs-2 menu subMenu">${chd}</div>
				<div id="hud" class="col-xs-2 menu subMenu">${hud}</div>
				<div id="sbd" class="col-xs-2 menu subMenu">${sbd}</div>
				<div id="shd" class="col-xs-2 menu subMenu">${shd}</div>
			</div>
			<div class="row basin subMenuContainer">
				<div id="tuul" class="col-xs-6 menu subMenu">${tuulGol}</div>
				<div id="haraa" class="col-xs-6 menu subMenu">${haraaGol}</div>
			</div>
		
			<div class="row">
				<div class="col-xs-3">
					<div class="district controlContainer">
						<div class="control bgd districtControl">
							BGD
							<div class="radio">
								<label><input type="radio" value="hazard" name="bgd" />${hazard}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="exposure" name="bgd" />${exposure}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="vulnerability"
									name="bgd" />${vulnerability}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="risk" name="bgd" />${risk}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="future_risk"
									name="bgd" />${future_risk}</label>
							</div>
						</div>
		
		
						<div class="control bzd districtControl">
							BZD
							<div class="radio">
								<label><input type="radio" value="hazard" name="bzd" />${hazard}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="exposure" name="bzd" />${exposure}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="vulnerability"
									name="bzd" />${vulnerability}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="risk" name="bzd" />${risk}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="future_risk"
									name="bzd" />${future_risk}</label>
							</div>
						</div>
		
		
						<div class="control chd districtControl">
							CHD
							<div class="radio">
								<label><input type="radio" value="hazard" name="chd" />${hazard}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="exposure" name="chd" />${exposure}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="vulnerability"
									name="chd" />${vulnerability}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="risk" name="chd" />${risk}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="future_risk"
									name="chd" />${future_risk}</label>
							</div>
						</div>
		
						<div class="control hud districtControl">
							HUD
							<div class="radio">
								<label><input type="radio" value="hazard" name="hud" />${hazard}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="exposure" name="hud" />${exposure}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="vulnerability"
									name="hud" />${vulnerability}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="risk" name="hud" />${risk}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="future_risk"
									name="hud" />${future_risk}</label>
							</div>
						</div>
		
						<div class="control shd districtControl">
							shd
							<div class="radio">
								<label><input type="radio" value="hazard" name="shd" />${hazard}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="exposure" name="shd" />${exposure}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="vulnerability"
									name="shd" />${vulnerability}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="risk" name="shd" />${risk}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="future_risk"
									name="shd" />${future_risk}</label>
							</div>
						</div>
		
						<div class="control sbd districtControl">
							sbd
							<div class="radio">
								<label><input type="radio" value="hazard" name="sbd" />${hazard}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="exposure" name="sbd" />${exposure}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="vulnerability"
									name="sbd" />${vulnerability}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="risk" name="sbd" />${risk}</label>
							</div>
							<div class="radio">
								<label><input type="radio" value="future_risk"
									name="sbd" />${future_risk}</label>
							</div>
						</div>
					</div>
					<div class="basin controlContainer">
						<div class="control tuul basinControl">
					TUUL_BASIN
					<div class="radio">
						<label><input type="radio" value="ar_zaisan" name="tuul" />${tuul_ar_zaisan}</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="bayangol" name="tuul" />${tuul_bayangol}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="buheg_turgen"
							name="tuul" />${tuul_buheg_turgen} </label>
					</div>
					<div class="radio">
						<label><input type="radio" value="clip_ub" name="tuul" />${tuul_clip_ub}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="gatsuurt" name="tuul" />${tuul_gatsuurt}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="hui_mandal" name="tuul" />${tuul_hui_mandal}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="huindai_dend"
							name="tuul" />${tuul_huindai_dend} </label>
					</div>
					<div class="radio">
						<label><input type="radio" value="nalaih" name="tuul" />${tuul_nalaih}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="selbe" name="tuul" />${tuul_selbe}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="terelj" name="tuul" />${tuul_terelj}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="tolgoit" name="tuul" />${tuul_tolgoit}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="tolgoit_bayangol"
							name="tuul" />${tuul_tolgoit_bayangol} </label>
					</div>
					<div class="radio">
						<label><input type="radio" value="tor_hurn" name="tuul" />${tuul_tor_hurn}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="ub" name="tuul" />${tuul_ub}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="uliastai" name="tuul" />${tuul_uliastai}
						</label>
					</div>
				</div>

				<div class="control haraa basinControl">
					HARAA_BASIN
					<div class="radio">
						<label><input type="radio" value="clip_ub" name="haraa" />${haraa_clip_ub}
						</label>
					</div>
					<div class="radio">
						<label><input type="radio" value="river" name="haraa" />${haraa_river}
						</label>
					</div>
				</div>
			</div>
				</div>
				<div class="col-xs-9">
		
					<div class="district mapContainer embed-responsive embed-responsive-4by3">
						<div class="district bgd districtMapView">
							<div class="bgd hazard"><div class="loadingFrame bgd hazard"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bgd hazard" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bgd exposure"><div class="loadingFrame bgd exposure"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bgd exposure" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bgd vulnerability"><div class="loadingFrame bgd vulnerability"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bgd vulnerability" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bgd risk"><div class="loadingFrame bgd risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bgd risk" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bgd future_risk"><div class="loadingFrame bgd future_risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bgd future_risk" class="maps" style="border: none;" src=""></iframe></div>
						</div>
		
						<div class="district bzd districtMapView">
							<div class="bzd hazard"><div class="loadingFrame bzd hazard"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bzd hazard" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bzd exposure"><div class="loadingFrame bzd exposure"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bzd exposure" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bzd vulnerability"><div class="loadingFrame bzd vulnerability"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bzd vulnerability" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bzd risk"><div class="loadingFrame bzd risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bzd risk" class="maps" style="border: none;" src=""></iframe></div>
							<div class="bzd future_risk"><div class="loadingFrame bzd future_risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame bzd future_risk" class="maps" style="border: none;" src=""></iframe></div>
		
						</div>
						<div class="district chd districtMapView">
							<div class="chd hazard"><div class="loadingFrame chd hazard"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame chd hazard" class="maps" style="border: none;" src=""></iframe></div>
							<div class="chd exposure"><div class="loadingFrame chd exposure"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame chd exposure" class="maps" style="border: none;" src=""></iframe></div>
							<div class="chd vulnerability"><div class="loadingFrame chd vulnerability"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame chd vulnerability" class="maps" style="border: none;" src=""></iframe></div>
							<div class="chd risk"><div class="loadingFrame chd risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame chd risk" class="maps" style="border: none;" src=""></iframe></div>
							<div class="chd future_risk"><div class="loadingFrame chd future_risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame chd future_risk" class="maps" style="border: none;" src=""></iframe></div>
						</div>
						<div class="district hud districtMapView">
							<div class="hud hazard"><div class="loadingFrame hud hazard"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame hud hazard" class="maps" style="border: none;" src=""></iframe></div>
							<div class="hud exposure"><div class="loadingFrame hud exposure"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame hud exposure" class="maps" style="border: none;" src=""></iframe></div>
							<div class="hud vulnerability"><div class="loadingFrame hud vulnerability"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame hud vulnerability" class="maps" style="border: none;" src=""></iframe></div>
							<div class="hud risk"><div class="loadingFrame hud risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame hud risk" class="maps" style="border: none;" src=""></iframe></div>
							<div class="hud future_risk"><div class="loadingFrame hud future_risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame hud future_risk" class="maps" style="border: none;" src=""></iframe></div>
						</div>
						<div class="district sbd districtMapView">
							<div class="sbd hazard"><div class="loadingFrame sbd hazard"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame sbd hazard" class="maps" style="border: none;" src=""></iframe></div>
							<div class="sbd exposure"><div class="loadingFrame sbd exposure"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame sbd exposure" class="maps" style="border: none;" src=""></iframe></div>
							<div class="sbd vulnerability"><div class="loadingFrame sbd vulnerability"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame sbd vulnerability" class="maps" style="border: none;" src=""></iframe></div>
							<div class="sbd risk"><div class="loadingFrame sbd risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame sbd risk" class="maps" style="border: none;" src=""></iframe></div>
							<div class="sbd future_risk"><div class="loadingFrame sbd future_risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame sbd future_risk" class="maps" style="border: none;" src=""></iframe></div>
						</div>
						<div class="district shd districtMapView">
							<div class="shd hazard"><div class="loadingFrame shd hazard"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame shd hazard" class="maps" style="border: none;" src=""></iframe></div>
							<div class="shd exposure"><div class="loadingFrame shd exposure"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame shd exposure" class="maps" style="border: none;" src=""></iframe></div>
							<div class="shd vulnerability"><div class="loadingFrame shd vulnerability"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame shd vulnerability" class="maps" style="border: none;" src=""></iframe></div>
							<div class="shd risk"><div class="loadingFrame shd risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame shd risk" class="maps" style="border: none;" src=""></iframe></div>
							<div class="shd future_risk"><div class="loadingFrame shd future_risk"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame shd future_risk" class="maps" style="border: none;" src=""></iframe></div>
						</div>
					</div>
		
					<div class="basin mapContainer embed-responsive embed-responsive-4by3">
						<!-- 			basinView -->
						<div class="basin tuul basinMapView">
							<div class="tuul ar_zaisan"><div class="loadingFrame tuul ar_zaisan"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul ar_zaisan" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul bayangol"><div class="loadingFrame tuul bayangol"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul bayangol" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul buheg_turgen"><div class="loadingFrame tuul buheg_turgen"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul buheg_turgen" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul clip_ub"><div class="loadingFrame tuul clip_ub"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul clip_ub" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul gatsuurt"><div class="loadingFrame tuul gatsuurt"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul gatsuurt" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul hui_mandal"><div class="loadingFrame tuul hui_mandal"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul hui_mandal" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul huindai_dend"><div class="loadingFrame tuul huindai_dend"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul huindai_dend" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul nalaih"><div class="loadingFrame tuul nalaih"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul nalaih" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul selbe"><div class="loadingFrame tuul selbe"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul selbe" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul terelj"><div class="loadingFrame tuul terelj"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul terelj" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul tolgoit"><div class="loadingFrame tuul tolgoit"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul tolgoit" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul tolgoit_bayangol"><div class="loadingFrame tuul tolgoit_bayangol"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul tolgoit_bayangol" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul tor_hurn"><div class="loadingFrame tuul tor_hurn"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul tor_hurn" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul ub"><div class="loadingFrame tuul ub"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul ub" class="maps" style="border: none;" src=""></iframe></div>
							<div class="tuul uliastai"><div class="loadingFrame tuul uliastai"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame tuul uliastai" class="maps" style="border: none;" src=""></iframe></div>
						</div>
		
						<div class="basin haraa basinMapView">
							<div class="haraa clip_ub"><div class="loadingFrame haraa clip_ub"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame haraa clip_ub" class="maps" style="border: none;" src=""></iframe></div>
							<div class="haraa river"><div class="loadingFrame haraa river"><p><img alt="" src="resources/images/loading3.gif"/><br /> Газрын зургийг уншиж байна... Түр хүлээнэ үү.</p></div><iframe class="map_frame haraa river" class="maps" style="border: none;" src=""></iframe></div>
		
						</div>
					</div>
				</div>
			</div>
<!-- 		</div> -->
		
<!-- 		</div> -->
</div>	