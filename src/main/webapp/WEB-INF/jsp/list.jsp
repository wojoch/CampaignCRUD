<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Campaign list</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
   
</head>
<body>
    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
                </div>
            
                <div class="modal-body">
                    <p>Are you sure to delete?</p>
                    <p class="debug-url"></p>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <a href="#" class="btn btn-danger danger">Delete</a>
                </div>
            </div>
        </div>
    </div>
    
	<h1><center>Campaign list</center></h1>
	    
	<div class="right-button-margin">
		<a href="add" class='btn btn-default pull-right'>Add campaign</a>
		<a href="index" class='btn btn-default pull-right'>Index page</a>
	</div>
	<br><br>
	
	<table class="table table-hover">
		<thead>
			<th>ID</th>
			<th>Name</th>
			<th>Keywords</th>
			<th>Bid amount</th>
			<th>Fund</th>
			<th>Status</th>
			<th>Town</th>
			<th>Radius</th>
			<th align="center">Actions on Row</th>
		</thead>
		
		<c:forEach items="${campaignList}" var="campaign">
			<tr>			
				<td>${campaign.id}</td>
				<td>${campaign.name}</td>
				<td>${campaign.keywords}</td>
				<td>${campaign.bidamount}</td>
				<td>${campaign.fund}</td>
				<td>${campaign.status}</td>
				<td>${campaign.town}</td>
				<td>${campaign.radius}</td>
				<td align="center"><a href="edit.html?id=${campaign.id}" >Edit</a></t>   
				<a href="delete.html?id=${campaign.id}" >Delete</a></t> 
			</tr>
		</c:forEach>
	</table>		

</body>
</html>