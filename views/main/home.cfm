            <div class="posts">
                <h1 class="content-subhead">MVC ColdFusion Application Generator</h1>
				
                <section class="post">
                    <header class="post-header">
						<h2 class="post-title">Application Settings</h2>
                        <form id="appSettings" name="appSettings" method="post" action="<cfoutput>#buildURL('main.tableinfo')#</cfoutput>" class="pure-form pure-form-aligned">
							<div class="pure-control-group">
					            <label for="dsn">Datasource Name</label><span class="fa fa-question-circle" title="Enter the datasource name for the application database." ></span>&nbsp;
					            <input type="text" name="dsn" id="dsn" placeholder="Datasource Required"required>
					        </div>
							
							<div class="pure-control-group">
					            <label for="sitetitle">Site Title</label><span class="fa fa-question-circle" title="Enter the name of the controller/view folder section for the FW/1 structure" ></span>&nbsp;
					            <input type="text" name="sitetitle" id="sitetitle" placeholder="Site Title Required" required>
					        </div>
							
							<div style="margin-top:20px;">
							    <label for="generateApplication">Do you want to generate application files or just table specific code? <span class="fa fa-question-circle" title="Application generation will create an Application CFC, default layout, and table specific code for all selected tables.  Table only will just create the controller, service, dao and views needed for the specified tables." ></span>
							    <div class="pure-control-group">
							    	<label for="application" class="pure-radio">Generate Application</label>
							        <input id="application" type="radio" name="generationType" value="generateApplication">
								</div>
								
								<div class="pure-control-group">									
							        <label for="tableCode" class="pure-radio">Table Only</label>
							        <input id="tableCode" type="radio" name="generationType" value="generateTableCode" >
								</div>
					        </div>
							
							
							<div class="pure-control-group">
					            <label for="button">&nbsp;</label>
					            <input type="submit" name="btnSubmit" id="button" value="Next >>" class="pure-button" />
					        </div>	
						</form>
                    </header>
				</section>
			</div>