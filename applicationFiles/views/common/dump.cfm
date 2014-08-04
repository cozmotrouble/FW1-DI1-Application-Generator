<cfset request.layout = false>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<link href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css" rel="stylesheet" />

<style>
	#DumpPanels { margin-left: 20px;}
	#PageHead { background-color:#ccc; border-bottom: #333 solid 3px; padding-top:20px; margin:0; }
	button { margin: 0 20px 0 20px; }
	tr.odd { background-color:#eef; }
	tr.even { background-color:#eee; }
	th { width:250px;text-align:left; }
	th, td { padding: 10px; margin:5px; }
</style>

<div id="PageHead">
	<div style="margin-bottom:20px;">
		<cfif structKeyExists(request, 'exception')>
			<button id="showException" class="pure-button pure-button-primary">Show Exception</button> | 
		</cfif>
		<button id="showRC" class="pure-button pure-button-primary">Show RC</button> | 
		<button id="showSession" class="pure-button pure-button-primary">Show Session</button> | 
		<button id="showCookies" class="pure-button pure-button-primary">Show Cookies</button> | 
		<button id="showApplication" class="pure-button pure-button-primary">Show Application</button> | 
		<button id="showCGI" class="pure-button pure-button-primary">Show CGI</button> | 
		<button id="showSystem" class="pure-button pure-button-primary">Show System Functions</button>
	</div>
</div>

<div id="DumpPanels">
	<cfif structKeyExists(request, 'exception')>
		<div id="ExceptionPanel">
			<h1 style="color:#c00;">Exception</h1>
			<cfdump var="#request.exception#">
		</div>
	</cfif>
	<div id="RCPanel">
		<h1 style="color:#c00;">RC</h1>
		<cfdump var="#rc#">
	</div>
	<div id="SessionPanel">
		<h1 style="color:#c00;">Session</h1>
		<cfdump var="#session#">
	</div>
	<div id="CookiesPanel">
		<h1 style="color:#c00;">Cookies</h1>
		<cfdump var="#cookie#">
	</div>
	<div id="ApplicationPanel">
		<h1 style="color:#c00;">Application</h1>
		<cfdump var="#application#">
	</div>
	<div id="CGIPanel">
		<h1 style="color:#c00;">CGI</h1>
		<cfdump var="#cgi#">
	</div>
	<div id="SystemPanel">
		<h1 style="color:#c00;">System Functions</h1>
		<cfoutput>
			<table width="100%">
				<tr class="odd">
					<th>ExpandPath("/"):</th>
					<td>#ExpandPath("/")#</td>
				</tr>
				<tr class="even">
					<th>ExpandPath( "*.*"):</th>
					<td>#ExpandPath( "*.*")#</td>
				</tr>
				<tr class="odd">
					<th>GetBaseTemplatePath():</th>
					<td>#GetBaseTemplatePath()#</td>
				</tr>
				<tr class="even">
					<th>GetCurrentTemplatePath():</th>
					<td>#GetCurrentTemplatePath()#</td>
				</tr>
				<tr class="odd">
					<th>GetPageContext():</th>
					<td>#GetPageContext()#</td>
				</tr>
				<tr class="even">
					<th>GetLocale():</th>
					<td>#GetLocale()#</td>
				</tr>
				<tr class="odd">
					<th>GetLocaleDisplayName():</th>
					<td>#GetLocaleDisplayName()#</td>
				</tr>
				<tr class="even">
					<th>GetLocalHostIP():</th>
					<td>#GetLocalHostIP()#</td>
				</tr>
			</table>
		</cfoutput>
		<hr>
		<table width="100%">
			<tr>
				<th valign="top">GetClientVariablesList():</th>
				<td><cfdump var="#GetClientVariablesList()#"></td>
			</tr>
		</table>
		<hr>
		<table width="100%">
			<tr>
				<th valign="top">GetTimeZoneInfo():</th>
				<td><cfdump var="#GetTimeZoneInfo()#"></td>
			</tr>
		</table>
		<hr>
		<table width="100%">
			<tr>
				<th valign="top">GetFunctionList():</th>
				<td><cfdump var="#GetFunctionList()#"></td>
			</tr>
		</table>
	</div>
</div>

<script language="JavaScript" type="text/javascript">
	$(document).ready(function() {	
		<cfif structKeyExists(request, 'exception')>
			$("#RCPanel").hide();
			$("#showException").click(function(){
				$("#ExceptionPanel").show();
				$("#ApplicationPanel").hide();
				$("#SessionPanel").hide();
				$("#CookiesPanel").hide();
				$("#RCPanel").hide();
				$("#CGIPanel").hide();
				$("#SystemPanel").hide();
			});
		</cfif>
		
		$("#SessionPanel").hide();
		$("#CookiesPanel").hide();
		$("#ApplicationPanel").hide();
		$("#CGIPanel").hide();
		$("#SystemPanel").hide();
		
		$("#showApplication").click(function(){
			$("#ApplicationPanel").show();
			<cfif structKeyExists(request, 'exception')>$("#ExceptionPanel").hide();</cfif>
			$("#SessionPanel").hide();
			$("#CookiesPanel").hide();
			$("#RCPanel").hide();
			$("#CGIPanel").hide();
			$("#SystemPanel").hide();
		});
		
		$("#showSession").click(function(){
			$("#SessionPanel").show();
			<cfif structKeyExists(request, 'exception')>$("#ExceptionPanel").hide();</cfif>
			$("#ApplicationPanel").hide();
			$("#CookiesPanel").hide();
			$("#RCPanel").hide();
			$("#CGIPanel").hide();
			$("#SystemPanel").hide();
		});
		
		$("#showCookies").click(function(){
			$("#CookiesPanel").show();
			<cfif structKeyExists(request, 'exception')>$("#ExceptionPanel").hide();</cfif>
			$("#ApplicationPanel").hide();
			$("#SessionPanel").hide();
			$("#RCPanel").hide();
			$("#CGIPanel").hide();
			$("#SystemPanel").hide();
		});
		
		$("#showRC").click(function(){
			$("#RCPanel").show();
			<cfif structKeyExists(request, 'exception')>$("#ExceptionPanel").hide();</cfif>
			$("#ApplicationPanel").hide();
			$("#SessionPanel").hide();
			$("#CookiesPanel").hide();
			$("#CGIPanel").hide();
			$("#SystemPanel").hide();
		});
		
		$("#showCGI").click(function(){
			$("#CGIPanel").show();
			<cfif structKeyExists(request, 'exception')>$("#ExceptionPanel").hide();</cfif>
			$("#ApplicationPanel").hide();
			$("#SessionPanel").hide();
			$("#CookiesPanel").hide();
			$("#RCPanel").hide();
			$("#SystemPanel").hide();
		});
		
		$("#showSystem").click(function(){
			$("#SystemPanel").show();
			<cfif structKeyExists(request, 'exception')>$("#ExceptionPanel").hide();</cfif>
			$("#ApplicationPanel").hide();
			$("#SessionPanel").hide();
			$("#CookiesPanel").hide();
			$("#RCPanel").hide();
			$("#CGIPanel").hide();
		});
	});
</script>