         	<div class="posts">
                <h1 class="content-subhead">MVC ColdFusion Application Generator</h1>
				
                <section class="post">
                    <header class="post-header">
						<h2 class="post-title">Table Settings</h2>
                        <form id="appSettings" name="appSettings" method="post" action="<cfoutput>#buildURL('main.appCode')#</cfoutput>" class="pure-form pure-form-aligned">
							<div class="pure-control-group">
					            <label for="dsn">Table Name</label><span class="fa fa-question-circle" title="Select the table the CRUD code will interact with." ></span>&nbsp;
					            <select name="tables" id="tables" multiple="multiple" required>
									<cfoutput query="rc.filtered">
										<option value="#TABLE_NAME#">#ucase(table_name)#</option>
									</cfoutput>
								</select>		            
					        </div>
							
							<div class="pure-control-group">
					            <label for="button">&nbsp;</label>
					            <input type="submit" name="button" id="button" value="Next >>" class="pure-button" />
					        </div>	
							
							<cfoutput>
								<input type="hidden" name="dsn" value="#rc.dsn#">
								<input type="hidden" name="sitetitle" value="#rc.sitetitle#">
								<input type="hidden" name="generationType" value="#rc.generationType#">
							</cfoutput>
						</form>
                    </header>
				</section>
			</div>