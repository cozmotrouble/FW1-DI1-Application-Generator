<!---
This library is part of the Common Function Library Project. An open source
	collection of UDF libraries designed for ColdFusion 5.0 and higher. For more information,
	please see the web site at:

		http://www.cflib.org

	Warning:
	You may not need all the functions in this library. If speed
	is _extremely_ important, you may want to consider deleting
	functions you do not plan on using. Normally you should not
	have to worry about the size of the library.

	License:
	This code may be used freely.
	You may modify this code as you see fit, however, this header, and the header
	for the functions must remain intact.

	This code is provided as is.  We make no warranty or guarantee.  Use of this code is at your own risk.
--->

<!---
 Copies a directory.
 v3 mod by Anthony Petruzzi
 
 @param source 	 Source directory. (Required)
 @param destination 	 Destination directory. (Required)
 @param ignore 	 List of folders, files to ignore. Defaults to nothing. (Optional)
 @param nameConflict 	 What to do when a conflict occurs (skip, overwrite, makeunique). Defaults to overwrite. (Optional)
 @return Returns nothing. 
 @author Joe Rinehart (joe.rinehart@gmail.com) 
 @version 3, March 21, 2011 
--->
<cffunction name="directoryCopy" output="true">
	<cfargument name="source" required="true" type="string">
	<cfargument name="destination" required="true" type="string">
	<cfargument name="ignore" required="false" type="string" default="">
	<cfargument name="nameconflict" required="true" default="skip">

	<cfset var contents = "" />
	
	<cfif not(directoryExists(arguments.destination))>
		<cfdirectory action="create" directory="#arguments.destination#">
	</cfif>
	
	<cfdirectory action="list" directory="#arguments.source#" name="contents">

	<cfif len(arguments.ignore)>
		<cfquery dbtype="query" name="contents">
		select * from contents where name not in(#ListQualify(arguments.ignore, "'")#)
		</cfquery>
	</cfif>
	
	<cfloop query="contents">
		<cfif contents.type eq "file">
			<cffile action="copy" source="#arguments.source#/#name#" destination="#arguments.destination#/#name#" nameconflict="#arguments.nameConflict#">
		<cfelseif contents.type eq "dir">
			<cfset directoryCopy(arguments.source & "/" & name, arguments.destination & "/" &  name) />
		</cfif>
	</cfloop>
</cffunction>