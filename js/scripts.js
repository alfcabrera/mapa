
$(document).ready(function(){

	// Prepare demo data
	// Data is joined to map using value of 'hc-key' property by default.
	// See API docs for 'joinBy' for more info on linking data and map.
	var data = [
	    ['do-pn', 0],
	    ['do-al', 1],
	    ['do-pv', 2],
	    ['do-jo', 3],
	    ['do-hm', 4],
	    ['do-mp', 5],
	    ['do-du', 6],
	    ['do-mt', 7],
	    ['do-sm', 8],
	    ['do-cr', 9],
	    ['do-nc', 10],
	    ['do-se', 11],
	    ['do-ro', 12],
	    ['do-st', 13],
	    ['do-sr', 14],
	    ['do-va', 15],
	    ['do-ju', 16],
	    ['do-sd', 17],
	    ['do-pm', 18],
	    ['do-mc', 19],
	    ['do-pp', 20],
	    ['do-da', 21],
	    ['do-es', 22],
	    ['do-1857', 23],
	    ['do-br', 24],
	    ['do-bh', 25],
	    ['do-in', 26],
	    ['do-ep', 27],
	    ['do-az', 28],
	    ['do-ve', 29],
	    ['do-sz', 30],
	    ['do-mn', 31]
	];

	// Create the chart
	Highcharts.mapChart('map-container', {
	    chart: {
	        map: 'countries/do/do-all'
	    },
	     title: {
            text: 'Republica Dominicana'
        },
	    mapNavigation: {
	        enabled: true,
	        enableMouseWheelZoom: false,
	        enableDoubleClickZoom: false,
	        buttonOptions: {
	            verticalAlign: 'bottom'
	        }
	    },
	    
	    plotOptions:{
	        series:{
            point:{
            events:{
	            click: function(){
	                $.ajax({
	                	url: '../db/db.php',
	                	type: 'POST',
	                	dataType: 'json',
	                	data: {name: this.name},
	                	success:function(data)
	                	{
	                		$(".d-container").html("");
	                		$(".names-container").html("");
	                		for (var i = 0; i < data.length; i++) {
	                			$(".d-container").append("<li><a href='#' class='list-item' data-name='" + data[i]['distrito_municipal'] + "'>"+ data[i]['distrito_municipal'] +"</a></li>");
	                		}

	                	}
	                })
	            }
            }
            }
	        }
	    },
	    colorAxis: {
		  dataClasses: [{
		    to: 100,
		    color: "#e74c3c"
		  }]
		},
		tooltip: false,
	    series: [{
	        data: data,
	        name: 'Provincia',
	        states: {
	            hover: {
	                color: '#f7ce00'
	            }
	        },
	        dataLabels: {
	            enabled: true,
	            format: '{point.name}'
	        }
	    }]
	});

	$(".highcharts-legend-item, .highcharts-button, .highcharts-credits").hide();

	$(document).on("click",".list-item", function(){
		$.ajax({
			url: '../db/db2.php',
			type: 'POST',
			dataType: 'json',
			data: {
				name: $(this).attr("data-name")
			},
			success:function(data)
			{
				
				$(".names-container").html("");	
				for (var i = 0; i < data.length; i++) {
					var html = "<li>" + data[i]['nombre'] + "<br/> Cedula: " + data[i]['cedula'] + "<br/>Cargo a aspirar: " + data[i]['cargo'] +"</li><br/>";
					$(".names-container").append(html);							

				}
			}
		})

	
	});


});

