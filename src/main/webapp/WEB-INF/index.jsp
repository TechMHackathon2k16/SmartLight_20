<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SmartLight </title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <script src="${pageContext.request.contextPath}/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap.min.js"></script>

</head>

<body>
<div class="wrapper">
<div id="page-wrapper">

<div class="panel panel-warning">		
<div class="panel-heading text-center"><h1>Smart Light Portal</h1></div>


<div class="panel-body">

<div class="col-lg-12 " style=" height:50px; font-weight:bold;">	
<div class="col-lg-6 bg-primary">Welcome to Admin</div>
<div class="col-lg-6 bg-primary text-right" id="todaydate"></div>
</div>




<div class="col-lg-12">	

	<div class="col-lg-6">
		<form action="#" id="form1" onsubmit="">
			<div class="panel panel-primary">
			<div class="panel-heading"><b>Actions Light On/Off</b></div>
				<div class="panel-body">
				<p style=" margin-left:15px;"><input type="checkbox" name="sunrise" value="onoff">&nbsp;On/Off According to Sunrise and Sunset</p>
					<div class="col-lg-6">
					<label class="font-noraml">Select Phase</label>
					<select class="form-control" >
					<option value="allpahse">All Phase</option>
					<option value="phase1">Phase 1</option>
					<option value="phase2">Phase 2</option>
					</select>
					</div>
					<div class="col-lg-6">
					<button type="button" class=" btn btn-primary  dim col-lg-5" style=" margin-top:20px;"><i class="fa fa-lightbulb-o"></i> On/Off</button>
					</div>
				</div>
			</div>
		</form>
		
		<form action="#" id="form1" onsubmit="">
					<div class="panel panel-primary">
			<div class="panel-heading"><b>Light On/Off</b></div>
				<div class="panel-body">
	
				
				<div class="col-lg-6">
				<label class="font-noraml">Select Phase</label>
				<select class="form-control">
					<option value="allphase">All Phase</option>
					<option value="phase1">Phase 1</option>
					<option value="phase2">Phase 2</option>
				</select>
			
			<label class="font-noraml">Select Time</label>
				<select class="form-control" >
					<option value="10sec">10</option>
					<option value="20sec">20</option>
					<option value="30sec">30</option>
				</select>
							</div>
					<div class="col-lg-6">
<button type="button" class="btn btn-outline btn-warning dim m-t-l" style=" margin-top:50px;"><i class="fa fa-lightbulb-o"></i> Dim</button>

			</div>
				</div>
			</div>	

			</form>
	


<div class="panel panel-primary">
			<div class="panel-heading"><b>Alert</b></div>
				<div class="panel-body">
			<ul class="list-group clear-list m-t">
                            <li class="list-group-item fist-item">
                                <span class="pull-right">
                                    09:00 pm	
                                </span>Sunrise
                            </li>
                            <li class="list-group-item">
                                <span class="pull-right">
                                    07:16 am
                                </span>Sunset
                            </li>
                            <li class="list-group-item">
                                <span class="pull-right">
                                    06:22 pm
                                </span>Some alert message.
                            </li>

                           
                        </ul>
				</div>
			</div>


	
		
		
		
	</div>


<div class="col-lg-6">
	<div class="panel panel-primary">
			<div class="panel-heading"><b>Statistics :</b></div>
				<div class="panel-body">

 <div class="panel blank-panel">

                        <div class="panel-heading">
                            
                            <div class="panel-options">

                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1">All Phase</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-2">Phase 1</a></li>
									<li class=""><a data-toggle="tab" href="#tab-3">Phase 2</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
								<table class="table table-striped">
                            <thead>
                            <tr>
                                <th class="col-lg-3 label-danger ">Parameter</th>
                                <th class="col-lg-3 label-warning " >Value</th>
                            </tr>
                            </thead>				
							 <tbody>
                            <tr>
								<td>Voltage (V)</td>
                                <td class="text-navy">${allPhase.voltage}</td>
                            </tr>
                            <tr>
                                <td>Current (A)</td>

                                <td class="text-navy">${allPhase.current}</td>
                            </tr>
                            <tr>
                                <td>Power Factor (W)</td>
                                <td class="text-navy">${allPhase.power}</td>
                            </tr>
                            <tr>
                                <td>Lamps (Numbers) </td>
                                <td class="text-navy">${allPhase.numOfLamp}</td>
                            </tr>
                             <tr>
                                <td>Error Lamps (Numbers) </td>
                                <td class="text-navy">${allPhase.errorLamp} </td>
                            </tr>
						
                            </tbody>
								</table>
								
							    </div>
								 <div id="tab-2" class="tab-pane">
								<table class="table table-striped">
                            <thead>
                            <tr>
                                <th class="col-lg-3 label-danger ">Parameter</th>
                                <th class="col-lg-3 label-warning " >Value</th>
                            </tr>
                            </thead>				
							 <tbody>
                            <tr>
								<td>Voltage (V)</td>
                                <td class="text-navy">${phase1.voltage}</td>
                            </tr>
                            <tr>
                                <td>Current (A)</td>
                                <td class="text-navy">${phase1.current}</td>
                            </tr>
							<tr>
                                <td>Power Factor (W)</td>
                                <td class="text-navy">${phase1.power}</td>
                            </tr>
                            <tr>
                                <td>Lamps (Numbers) </td>
                                <td class="text-navy">${phase1.numOfLamp}</td>
                            </tr>
                             <tr>
                                <td>Error Lamps (Numbers) </td>
                                <td class="text-navy">${phase1.errorLamp}</td>
                            </tr>
						
                            </tbody>
								</table>
								
							    </div>
								 <div id="tab-3" class="tab-pane">
								<table class="table table-striped">
                            <thead>
                            <tr>
                                <th class="col-lg-3 label-danger ">Parameter</th>
                                <th class="col-lg-3 label-warning " >Value</th>
                            </tr>
                            </thead>				
							 <tbody>
                            <tr>
								<td>Voltage (V)</td>
                                <td class="text-navy">${phase2.voltage}</td>
                            </tr>
							<tr>
                                <td>Current (A)</td>
                                <td class="text-navy">${phase2.current}</td>
                            </tr>
							<tr>
                                <td>Power Factor (W)</td>
                                <td class="text-navy">${phase2.power}</td>
                            </tr>
                            <tr>
                                <td>Lamps (Numbers) </td>
                                <td class="text-navy">${phase2.numOfLamp}</td>
                            </tr>
                             <tr>
                                <td>Error Lamps (Numbers) </td>
                                <td class="text-navy">${phase2.errorLamp}</td>
                            </tr>

						
                            </tbody>
								</table>
								</div>
								
							    </div>
	
							</div>
							</div>
						
						
						</div>

						</div>

	<div class="panel panel-primary">
			<div class="panel-heading"><b>Report :</b></div>
				<div class="panel-body">

	<table class="table table-striped">
                            <thead>
                            <tr>
                                <th class="col-lg-3 label-danger" vertical-align="middle">Date</th>
                                <th class="col-lg-3 label-warning">Power Consumption</th>
                                <th class="col-lg-2 label-success">Working Lamps</th>
								<th class="col-lg-2 label-danger">Error Lamps</th>
								<th class="col-lg-2 label-warning" vertical-align="middle">Download</th>
                            </tr>
                            </thead>				
							 <tbody>
                            <tr>
								<td>Jun 05 2016</td>
                                <td>${allPhase.power}</td>
                                <td>${allPhase.numOfLamp}</td>
                                <td>${allPhase.errorLamp}</td>
								<td class="text-navy"><a class="btn btn-xs  btn-primary" href="#">Download Report</a></td>
                            </tr>
                            <tr>
                                <td>Jun 04 2016</td>
                                <td>${allPhase.power}</td>
                                <td>${allPhase.numOfLamp}</td>
                                <td>${allPhase.errorLamp}</td>
								<td class="text-navy"><a class="btn btn-xs  btn-primary" href="#">Download Report</a></td>
                            </tr>
                            <tr>
                                <td>Jun 04 2016</td>
								<td>${allPhase.power}</td>
                                <td>${allPhase.numOfLamp}</td>
                                <td>${allPhase.errorLamp}</td>
								<td class="text-navy"><a class="btn btn-xs  btn-primary" href="#">Download Report</a></td>
                            </tr>
						
                            </tbody>
								</table>
							</div>	
							   


</div>	
</div>


						
						

</div>		
</div>



	</div>	
   </div>	
   </div>
<script>
var d = new Date();
document.getElementById("todaydate").innerHTML = d;
</script>
</body>

</html>
