         	<div class="posts">
                <h1 class="content-subhead">MVC ColdFusion Application Generator</h1>
				
                <section class="post">
                    <header class="post-header">
						<h2 class="post-title">Generated Output</h2>
						
						<cfset generator = CreateObject("component", "generator").init(dsn=#rc.dsn#,siteTitle=#rc.siteTitle#,tables=#rc.tables#) />
						
						<div id="accordion">
							<h3>Application Files</h3>
							<div>
								<div class="tabs">
									<ul>
										<li><a href="#tabs-appCFC">Application CFC</a></li>
										<li><a href="#tabs-defaultLayout">Default Layout</a></li>
										<li><a href="#tabs-tableSpecific">Table Specific Files</a></li>
									</ul>
									
									<div id="tabs-appCFC">
										<cfset getApplicationCFC = generator.generateApplicationCFC()>
									    <cfoutput>
											<span style="color:##000099; font-weight:bold;">Click inside code box to select all</span>
											<textarea onclick="this.focus();this.select()" 
												style="font-size: 8pt; width: 100%;"
												wrap="hard" rows="33" name="linkNode">#getApplicationCFC#</textarea>
										 </cfoutput>
									</div>
									
									<div id="tabs-defaultLayout">
										<cfset getDefaultLayout = generator.generateDefaultLayout()>
									    <cfoutput>
											<span style="color:##000099; font-weight:bold;">Click inside code box to select all</span>
											<textarea onclick="this.focus();this.select()" 
												style="font-size: 8pt; width: 100%;"
												wrap="hard" rows="33" name="linkNode">#getDefaultLayout#</textarea>
										 </cfoutput>
									</div>
									
									<div id="tabs-tableSpecific">
										<strong>Click a table name to view code specific to that table</strong>
										<ul>
										<cfloop index = "ListElement" list = "#rc.tables#">  
										    <li><cfoutput><a href="#buildURL(action='main.tableSpecificCode', querystring="table=#ListElement#&dsn=#rc.dsn#&siteTitle=#rc.siteTitle#")#">#ListElement#</a></cfoutput></li>  
										</cfloop>
										</ul>
									</div>
								</div>
							</div>
						</div>
                    </header>
				</section>
			</div>