<?php if ( ! defined('URL_BASE')) exit;

	//print_r($batata['moviments']);?>

	<html>
  		<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
	  <?php 
		$gasto = 3123;
	?>
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
			
		['Data', 'Lucro', 'Gasto'],
		<?php 
		foreach($data['moviments'] AS $dma){
			$date = $dma['date'];
			$valor = $dma['total'];
			
			echo "['$date', $valor, $gasto],";
			}		

	
	
	
	
	?>
        ]);	

        var options = {
          title: 'Company Performance',
        //   curveType: 'function',
        //   legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="curve_chart" style="width: 900px; height: 500px"></div>
  </body>
</html>







</div> 