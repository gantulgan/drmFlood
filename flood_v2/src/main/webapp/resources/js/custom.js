/**
 * Custom js functions.
 */
function loadMap(){
	$("#map_frame_bgd").attr("src", "http://128.199.170.61:8080/geoexplorer/viewer/#maps/4");
	$("#map_frame_bzd").attr("src", "http://128.199.170.61:8080/geoexplorer/viewer/#maps/5");
	$("#map_frame_chd").attr("src", "http://128.199.170.61:8080/geoexplorer/viewer/#maps/6");
	$("#map_frame_hud").attr("src", "http://128.199.170.61:8080/geoexplorer/viewer/#maps/7");
	$("#map_frame_shd").attr("src", "http://128.199.170.61:8080/geoexplorer/viewer/#maps/9");
	$("#map_frame_sbd").attr("src", "http://128.199.170.61:8080/geoexplorer/viewer/#maps/8");
	
	$('#map_frame_bgd').load(function(){
		$(".map_loading_bgd").hide();
	    $("#map_frame_bgd").show();
	});

	$('#map_frame_bzd').load(function(){
		$(".map_loading_bzd").hide();
	    $("#map_frame_bzd").show();
	});
	$('#map_frame_chd').load(function(){
		$(".map_loading_chd").hide();
	    $("#map_frame_chd").show();
	});
	$('#map_frame_hud').load(function(){
		$(".map_loading_hud").hide();
	    $("#map_frame_hud").show();
	});
	$('#map_frame_shd').load(function(){
		$(".map_loading_shd").hide();
	    $("#map_frame_shd").show();
	});
	$('#map_frame_sbd').load(function(){
		$(".map_loading_sbd").hide();
	    $("#map_frame_sbd").show();
	});
}

function loadTab(){
    $( "#tabs" ).tabs();
}

function loadMapperSelector(){
	console.log('clicked');
	$('.mapControllerTab div').click(
		function(evt){
			evt.preventDefault();
			console.log('clicked');
			var divName = this.id;
			console.log('div = ' + divName);
			
			if ( divName != null && divName == 'district_control_select' ){
				enableDistrictController();
			}
			else if( divName != null && divName == 'basin_control_select' ){
				enableBasinController();
			}
		}
	);
}

function resetMapControllerTab(){
	$('.mapControllerTab>div').css("background-color", "grey");
	$('.mapControllerTab>div').css("font-weight", "unset");
}
function resetMapController(){
	$('#control_district').css("display", "none");
	$('#control_basin').css("display", "none");
}
function enableDistrictController(){
	resetMapControllerTab();
	$('#district_control_select').css("font-weight", "bold");
	$("#district_control_select").css("background-color", "#ccecf4");
	resetMapController();
	$("#control_district").css("display", "block");
}

function enableBasinController(){
	resetMapControllerTab();
	$('#basin_control_select').css("font-weight", "bold");
	$("#basin_control_select").css("background-color", "#ccecf4");
	resetMapController();
	$("#control_basin").css("display", "block");
}

$("#firstArea").hover(
	function(){
		$("#firstComment").fadeIn(100);
	},
	function(){
		$("#firstComment").fadeOut(100);
	}
);

$("#fullScreenButton").click(function(){
		if ($("#map_frame").height() != 580 || $("#map_frame").width() != 714 ){
			backfullScr();
		}
		else{
			fullScr();
		}
		
	}
);
function fullScr(){
	$("#map_frame").animate({"width": $(window).width(), "height": $(window).height() }, "slow");
}

function backfullScr(){
	$("#map_frame").animate({"width": "714px", "height": "580px" }, "slow");
}

function loadLinkButtons(page){
	if ( page == "home" ){
		$("#linkFrontNews").click(function(){
			window.location.href='/news.jsp';
		});
		$("#linkDManagement").click(function(){
			window.location.href="/management.jsp";
		});
		$("#linkMapper").click(function(){
			window.location.href="/mapper.jsp";
		});
		$("#linkContact").click(function(){
			window.location.href="/info.jsp";
		});
	}
	if ( page == "news" ){
		$("#newNews").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/news/newNews.jsp?type=new';
		});
		$("#emergencyNews").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/news/emergencyNews.jsp?type=emergency';
		});
		$("#topNews").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/news/newNews.jsp?type=top';
		});
		$("#popularNews").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/news/emergencyNews.jsp?type=popular';
		});
	}
	if ( page == "management" ){
		$("#strategyMNG").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/strategy/strategy.jsp?type=strategy';
		});
		$("#structureMNG").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/infrastructure/infrastructure.jsp?type=structure';
		});
		$("#cbdrmMNG").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/cbdrm/cbdrm.jsp?type=cbdrm';
		});
		$("#institutionMNG").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/institution/institution.jsp?type=institution';
		});
	}
	if ( page == "info" ){
		$("#introIngo").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/info/info.jsp?type=info';
		});
		$("#adviceInfo").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/info/guidance.jsp?type=guidance';
		});
		$("#firstaidInfo").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/info/firstaid.jsp?type=firstaid';
		});
		$("#contactInfo").click(function(){
			window.location.href='${pageContext.request.pathInfo}content/info/links.jsp?type=contact';
		});
	}
};

function prepareDiagramPanels(){
	var hoverPanels = new Array($("#dmMonitoringArea"),
			$("#dmRiskArea"),
			$("#dmPreparednessArea"),
			$("#dmPreventionArea"),
			$("#dmPredictiveArea"),
			$("#dmDamageArea"),
			$("#dmWarningArea"),
			$("#dmRecoveryArea"),
			$("#dmHazardArea"),
			$("#dmReadinessArea"),
			$("#dmResponseArea"));

	$.each( hoverPanels, function( i, l ){	
		$("#" + l.attr("id") + "Text").hide();
		$("#" + l.attr("id") + "Text").addClass("diagramDescription");
		l.hover(
			function(){
				console.log(" in - " + "#" + l.attr("id") + "Text");
				$("#" + l.attr("id") + "Text").fadeIn(300);
			},
			function(){
				console.log("out - " + "#" + l.attr("id") + "Text");
				$("#" + l.attr("id") + "Text").fadeOut(300);
		});
	});
	
};

function prepareFullScreen(){
	$(".fullscreenButton").click(
		function(){
		var id = $('.currentMap').attr("id");
		console.log( id );
		var w = window.open('','Fullscreen map','height='+$(window).height()+',width='+$(window).width()+"'");
		var frame = $("#"+id+" iframe")
		frame.css({
			   'width' : $(window).width(),
			   'height' : $(window).height()
		});
		
		
		var html = $("#"+id).html();
		
		console.log(html);
		$(w.document.body).html(html);
		}
	);
};

function prepareMapPanel(divName){
	var headerText = "";
	$('.map_panel').hide();
	$('.map_panel').removeClass('currentMap');
	
	if ( divName == "duuregBGD" ){
		$("#headerControl").text("Баянгол дүүрэг" + headerText);
		$("#map_bgd").show();
		$("#map_bgd").addClass("currentMap");
	}
	else if (divName == "duuregBZD"){
		$("#headerControl").text("Баянзүрх дүүрэг" + headerText);
		$("#map_bzd").show();
		$("#map_bzd").addClass("currentMap");
	}
	else if (divName == "duuregCHD"){
		$("#headerControl").text("Чингэлтэй дүүрэг" + headerText);
		$("#map_chd").show();
		$("#map_chd").addClass("currentMap");
	}
	else if (divName == "duuregHUD"){
		$("#headerControl").text("Хан-Уул дүүрэг" + headerText);
		$("#map_hud").show();
		$("#map_hud").addClass("currentMap");
	}
	else if (divName == "duuregSHD"){
		$("#headerControl").text("Сонгино Хайрхан дүүрэг" + headerText);
		$("#map_shd").show();
		$("#map_shd").addClass("currentMap");
	}
	else if (divName == "duuregSBD"){
		$("#headerControl").text("Сүхбаатар дүүрэг" + headerText);
		$("#map_sbd").show();
		$("#map_sbd").addClass("currentMap");
	}
}

function prepareMapSubMenu(){
	$(".mapSubMenu").click(
		function(){
			$(".mapSubMenu").removeClass("selectedSubMenu");
			$(this).addClass("selectedSubMenu");
			var divName = this.id;
			prepareMapPanel(divName);
		}
	);
};

$(function() {

    $('#side-menu').metisMenu();

});

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
    $(window).bind("load resize", function() {
        topOffset = 50;
        width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse')
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse')
        }

        height = (this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    })
});
/*
 * metismenu - v1.0.3
 * Easy menu jQuery plugin for Twitter Bootstrap 3
 * https://github.com/onokumus/metisMenu
 *
 * Made by Osman Nuri Okumuş
 * Under MIT License
 */
;(function ($, window, document, undefined) {

    var pluginName = "metisMenu",
        defaults = {
            toggle: true
        };
        
    function Plugin(element, options) {
        this.element = element;
        this.settings = $.extend({}, defaults, options);
        this._defaults = defaults;
        this._name = pluginName;
        this.init();
    }

    Plugin.prototype = {
        init: function () {

            var $this = $(this.element),
                $toggle = this.settings.toggle;

            if (this.isIE() <= 9) {
                $this.find("li.active").has("ul").children("ul").collapse("show");
                $this.find("li").not(".active").has("ul").children("ul").collapse("hide");
            } else {
                $this.find("li.active").has("ul").children("ul").addClass("collapse in");
                $this.find("li").not(".active").has("ul").children("ul").addClass("collapse");
            }

            $this.find("li").has("ul").children("a").on("click", function (e) {
                e.preventDefault();

                $(this).parent("li").toggleClass("active").children("ul").collapse("toggle");

                if ($toggle) {
                    $(this).parent("li").siblings().removeClass("active").children("ul.in").collapse("hide");
                }
            });
        },

        isIE: function() {//https://gist.github.com/padolsey/527683
            var undef,
                v = 3,
                div = document.createElement("div"),
                all = div.getElementsByTagName("i");

            while (
                div.innerHTML = "<!--[if gt IE " + (++v) + "]><i></i><![endif]-->",
                all[0]
            ) {
                return v > 4 ? v : undef;
            }
        }
    };

    $.fn[ pluginName ] = function (options) {
        return this.each(function () {
            if (!$.data(this, "plugin_" + pluginName)) {
                $.data(this, "plugin_" + pluginName, new Plugin(this, options));
            }
        });
    };

})(jQuery, window, document);