<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Campaign add page</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<link href="//raw.github.com/jharding/typeahead.js-bootstrap.css/master/typeahead.js-bootstrap.css" rel="stylesheet" media="screen">
    <script src="//cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.9.3/typeahead.min.js"></script>
	<script src="/js/bootstrap-tooltip.js"></script>
	<script src="/js/bootstrap-confirmation.js"></script>
	<link href="/css/keywords.css" rel="stylesheet" media="screen">

</head>

<body>
<div class="bs-example">
    <h1><center>Add campaign</center></h1>
    
	<div class="right-button-margin">
		<a href="list" class='btn btn-default pull-right'>Campaign list</a>
		<a href="index" class='btn btn-default pull-right'>Index page</a>
	</div>

	<br><br><br><br>
    
    <form class="form-horizontal" action="register" method="POST" commandName="add" autocomplete="off">
        <div class="form-group">
            <label class="control-label col-xs-3" for="name">Name:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="keywords">Keywords:</label>
            <div class="col-xs-9">
            	<input type="text" class="keywords typeahead" id="keywords" placeholder="Keywords" name="keywords" required/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="bidamount">Bid Amount:</label>
            <div class="col-xs-9">
                <input type="number" min="5" class="form-control" id="bidamount" placeholder="Bid Amount (min 5)" name="bidamount" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="fund">Fund:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" id="fund" placeholder="Fund" name="fund" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">Status:</label>
            <div class="col-xs-2">
                <label class="radio-inline">
                    <input type="radio" name="status" value="On" required> On
                </label>
            </div>
            <div class="col-xs-2">
                <label class="radio-inline">
                    <input type="radio" name="status" value="Off"> Off
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="town">Town:</label>
            <div class="col-xs-3">
                <select class="form-control" id="town" name="town" required>
                    <option>Bydgoszcz</option><option>Gdansk</option><option>Katowice</option><option>Krakow</option><option>Lublin</option>
                    <option>Lodz</option><option>Poznan</option><option>Szczecin</option><option>Warszawa</option><option>Wroclaw</option>
                </select>
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-3" for="radius">Radius:</label required> 
            <div class="col-xs-9">
                <input type="text" class="form-control" id="radius" placeholder="Radius" name="radius" required>
            </div>
        </div>  
       
        <br>
        <div class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <input type="submit" class="btn btn-primary" name="action" value="Submit">
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.keywords.typeahead').typeahead({                              
         name: "keywords",               
         local: ['advertising branding', 'underwriting spot', 'direct marketing', 
                 'personal sales', 'product placement', 'publicity', 'sales promotion', 
                 'sex in advertising', 'loyalty marketing', 'mobile marketing', 'premiums', 
                 'prizes', 'corporate anniversary', 'on-hold messaging']         
    });
});
</script>

</body>

</html>