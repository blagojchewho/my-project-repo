
<?php  

//index2.php

include("database_connection.php");

$query = "SELECT Data FROM vodostoi_mnm GROUP BY Data DESC";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

?>  
<!DOCTYPE html>  
<html>  
    <head>  
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Graficki Prikaz</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
    </head>  
    <body style="background-color: #99ccff;"> 
        <br />
        <div class="container">  
            <h3 align="center"><b>Графички приказ на податоците</b></h3>  
            <br />  
            
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-9">
                            <h3 class="panel-title">Мерење на податоците за датум:</h3>
                        </div>
                        <div class="col-md-3">
                            <select name="Data" class="form-control" id="Data">
                                <option value="">Изберете датум</option>
                            <?php
                            foreach($result as $row)
                            {
                                echo '<option value="'.$row["Data"].'">'.$row["Data"].'</option>';
                            }
                            ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <div id="chart_area" style="width: 1000px; height: 620px;"></div>
                </div>
            </div>
        </div>  
    </body>  
</html>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback();

function load_monthwise_data(Data, title)
{
    var temp_title = title + ' '+Data+'';
    $.ajax({
        url:"fetch2.php",
        method:"POST",
        data:{Data:Data},
        dataType:"JSON",
        success:function(data)
        {
            drawMonthwiseChart(data, temp_title);
        }
    });
}

function drawMonthwiseChart(chart_data, chart_main_title)
{
    var jsonData = chart_data;
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Stanica');
    data.addColumn('number', 'Merenje');
    $.each(jsonData, function(i, jsonData){
        var Stanica = jsonData.Stanica;
        var Merenje = parseFloat($.trim(jsonData.Merenje));
        data.addRows([[Stanica, Merenje]]);
    });
    var options = {
        title:chart_main_title,
        hAxis: {
            title: "Станица- Езеро"
        },
        vAxis: {
            title: 'Мерење во мнм'
        }
    };

    var chart = new google.visualization.AreaChart(document.getElementById('chart_area'));
    chart.draw(data, options);
}
</script>

<script>
    
$(document).ready(function(){

    $('#Data').change(function(){
        var Data = $(this).val();
        if(Data != '')
        {
		load_monthwise_data(Data, 'Мерење на водостои за ден:');
        }
    });

});

</script>
