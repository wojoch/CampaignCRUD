<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Campaign edit page</title>
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
    <h1><center>Edit page</center></h1>
    
	<div class="right-button-margin">
		<a href="index" class='btn btn-default pull-right'>Index page</a>
		<a href="list" class='btn btn-default pull-right'>Back to list</a>
	</div>

	<br><br><br><br>
    
    <form class="form-horizontal" action="update" method="POST" commandName="add">
        <div class="form-group">
            <label class="control-label col-xs-3" for="id">ID:</label>
            <div class="col-xs-9">
                <input type="number" class="form-control" id="id" placeholder="ID" name="id" value="${campaign.id}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="name">Name:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" id="name" placeholder="Name" name="name" value="${campaignObject.name}" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="keywords">Keywords:</label>
            <div class="col-xs-9">
            	<input type="text" class="keywords typeahead" id="keywords" placeholder="Keywords" name="keywords" value="${campaignObject.name}" required/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="bidamount">Bid Amount:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" id="bidamount" placeholder="Bid Amount" name="bidamount" value="${campaignObject.bidamount}" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="fund">Fund:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" id="fund" placeholder="Fund" name="fund" value="${campaignObject.fund}" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">Status:</label>
            <div class="col-xs-2">
                <label class="radio-inline">
                    <input type="radio" name="status" value="true" required> On
                </label>
            </div>
            <div class="col-xs-2">
                <label class="radio-inline">
                    <input type="radio" name="status" value="false"> Off
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="town">Town:</label>
            <div class="col-xs-3">
                <select class="form-control" id="town" name="town" value="${campaignObject.town}" required>
                    <option>Bydgoszcz</option><option>Gdansk</option><option>Katowice</option><option>Krakow</option><option>Lublin</option>
                    <option>Lodz</option><option>Poznan</option><option>Szczecin</option><option>Warszawa</option><option>Wroclaw</option>
                </select>
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-3" for="radius">Radius:</label required> 
            <div class="col-xs-9">
                <input type="text" class="form-control" id="radius" placeholder="Radius" name="radius" value="${campaignObject.radius}" required>
            </div>
        </div>  
       
        <br>
        <div class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <input type="submit" class="btn btn-primary" name="action" value="Update">
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