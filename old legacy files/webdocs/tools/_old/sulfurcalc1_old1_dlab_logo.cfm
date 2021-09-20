<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Sulfur Calculations</title>


	<!--- New Sept. 2020 --->
	<!-- Bootstrap theme -->
	    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />

	    <!-- Font Awesome -->
	    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

	    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">

	    <!-- Style sheet for font awesome which is prefered over the built in fonts in Bootstrap. Those fonts are going away. -->
	    <link rel="stylesheet" type="text/css" href="../../include2/css/font-awesome.min.css">

	    <!-- Custom styles for this template.  All Style changes should be in this file. -->
    <link rel="stylesheet" type="text/css" href="../../include2/css/vdl_theme0.css" />

</head>

<body>
<cfset dmi1 = 0>
<cfset dmi2 = 0>
<cfset dmi3 = 0>
<cfset dmi4 = 0>
<cfset dmi5 = 0>
<cfset dmi_tot = 0>
<cfoutput>
step1 #form.dmi3#
</cfoutput>
<cfset sulfur1 = 0>
<cfset sulfur2 = 0>
<cfset sulfur3 = 0>
<cfset sulfur4 = 0>
<cfset sulfur5 = 0>


	 <cfset dmi1 = #form.dmi1#/100>
	 <cfset sulfur1 = #form.sulfate1#>

	 <cfif #form.dmi2# GT 0>
	 <cfset dmi2 = #form.dmi2#/100>
	 <cfset sulfur2 = #form.sulfate2#>
	 </cfif>

	  <cfif #form.dmi3# GT 0>
	 <cfset dmi3 = #form.dmi3#/100>
	 <cfset sulfur3 = #form.sulfate3#>
	 </cfif>
	 <cfoutput>
step2 #form.dmi3#
</cfoutput>
	 <cfif #form.dmi4# GT 0>
	 <cfset dmi4 = #form.dmi4#/100>
	 <cfset sulfur4 = #form.sulfate4#>
	 </cfif>

	 <cfif #form.dmi5# GT 0>
	 <cfset dmi5 = #form.dmi5#/100>
	 <cfset sulfur5 = #form.sulfate5#>
	 </cfif>

	 <cfset dmi_tot = (#dmi1#+#dmi2#+#dmi3#+#dmi4#+#dmi5#)>

<cfoutput>
step3 #form.dmi3#
</cfoutput>
	 <cfset WEIGHT_KG = (#FORM.BODYWEIGHT#/#numberformat(2.2,"999.99")#)>     <!--- {Converts pounds to kg} --->
 	 <cfset Sulfur = (#form.SulfateWater#/1000/3)>  <!---{Water converted from Sulfate to Sulphur} --->

   <cfif #form.an_type# EQ "non-lactating">                     <!--- {Calculate water intake at 40, 70 or 90 degrees as if Dry Matter) --->
	 	<cfset water_40 = ((#weight_kg#*(0.08)))>
		<cfset sulfurw40 =((#water_40#)*(#SULFUR#))>
	    <cfset water_70 = ((#weight_kg#*(0.10)))>
		<cfset sulfurw70 =((#water_70#)*(#SULFUR#))>
		<cfset water_90 = ((#weight_kg#*(0.18)))>
		<cfset sulfurw90 =((#water_90#)*(#SULFUR#))>
	<cfelse>
	    <cfset water_40 = ((#weight_kg#*0.10))>
		<cfset sulfurw40 =((#water_40#)*(#SULFUR#))>
	    <cfset water_70 = ((#weight_kg#*0.15))>
		<cfset sulfurw70 =((#water_70#)*(#SULFUR#))>
		<cfset water_90 = ((#weight_kg#*0.15))>
		<cfset sulfurw90 =((#water_90#)*(#SULFUR#))>
	</cfif>

		<cfset sulfurdmi_40 = (#sulfurw40#/(#weight_kg#*0.025)/10)>
		<cfset sulfurdmi_70 = (#sulfurw70#/(#weight_kg#*0.025)/10)>
		<cfset sulfurdmi_90 = (#sulfurw90#/(#weight_kg#*0.025)/10)>

		<cfset dmi1_sulfur = #dmi1#*#sulfur1#>  <!--- {Calculate percent Sulfur in feed} --->
		<cfset dmi2_sulfur = #dmi2#*#sulfur2#>
		<cfset dmi3_sulfur = #dmi3#*#sulfur3#>
		<cfset dmi4_sulfur = #dmi4#*#sulfur4#>
		<cfset dmi5_sulfur = #dmi5#*#sulfur5#>

		<cfset dmitot_sulfur = #dmi1_sulfur#+#dmi2_sulfur#+#dmi3_sulfur#+#dmi4_sulfur#+#dmi5_sulfur#>

		<cfset total_sulfur1 = #dmitot_sulfur#+#sulfurdmi_40#>    <!--- {Calculate the Total Sulfur Concentration(TSC) --->
		<cfset total_sulfur2 = #dmitot_sulfur#+#sulfurdmi_70#>
		<cfset total_sulfur3 = #dmitot_sulfur#+#sulfurdmi_90#>



		<!--- New Sept. 2020 --->
		<!--- Fixed navbar   --->
		<nav class="navbar navbar-inverse navbar-fixed-top fh-fixedHeader">
		    <div class="container">
		        <div class="navbar-header">
		            <!-- Brand and toggle get grouped for better mobile display -->
		            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		                <span class="sr-only">Toggle navigation</span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		            </button>



		            <A class="navbar-brand" style="padding: 2px 2px 2px 2px;" href="http://csu-cvmbs.colostate.edu/vdl/Pages/default.aspx">
		                <img src="../../images/csuL357-REV-VDL-ramL616_crop_48.png" alt="College of Veterinary Medicine and Biomedical Sciences at Colorado State University" style="height: 48px;" class="hidden-xs">
		                <img src="../../images/CSU_Logo_Ram.png" alt="College of Veterinary Medicine and Biomedical Sciences at Colorado State University" style="height: 48px; float:left;" class="visible-xs">
		                <span class="navbar-brand visible-xs">Mobile Mode</span>
		            </A>

		        </div><!--/.navbar-header -->
		        <div id="navbar" class="navbar-collapse collapse">
		            <ul class="nav navbar-nav navbar-right">
		            </ul>
		        </div><!--/.nav-collapse -->

				<!--- New Sept. 2020 --->
		        <div> <br>
		         <dl style="color:#FFFFFF";>
						            <dd>
						                300 West Drake
						            </dd>
						            <dd>
						                Fort Collins, CO.   80523
						            </dd>
						            <dd>
										Phone: 970-297-1281
						            </dd>
						            <dd>
										FAX: 970-297-0320
						            </dd>

		        </dl>
		        </div>

		    </div><!-- /.container -->
</nav>

<!--- Without these line breaks the first row of text in the following table disappears. --->
<div>
<br><br>
</div>


<cfoutput>
<CFIF #dmi_tot# NEQ '1'>
<table width="80%" align="center">

	<!--- Removed Sept. 2020 --->
	<!---
		<TR>
			<TD><IMG Align="TOP"  SRC="../../images/unit_header.jpg" alt=""></TD>
			<TD ALIGN = CENTER colspan="3"><B><FONT SIZE=2>Colorado State University<br> Diagnostic Laboratory <BR>
							300 West Drake<BR>
							Fort Collins, CO.   80523<BR>
							Phone: 970-297-1281<BR>
							FAX: 970-297-0320</FONT></B></TD>
	--->

							<tr>
		<td>&nbsp;</td>
		</tr><tr>
		<td>&nbsp;</td>
		</tr><tr>
		<td>&nbsp;</td>
		</tr>
		</TR>
 		<tr>
		   <td><cfset tot_per = #dmi_tot#*100 ><h3>The "Percent of Total Feed Intake" for your animal was #tot_per# percent, it must equal 100 percent.
 			 <!--- Please click <A HREF="../../webdocs/special_cases/sulfurcalc.cfm">here</a> to re-enter your information, or go "BACK" and correct your information.<br><br> --->
 			 <!--- JUST TESTING! --->
 			 Please click <A HREF="../../webdocs/tools/sulfurcalc.cfm">here</a> to re-enter your information, or go "BACK" and correct your information.<br><br>
			 If your total percent is 100, but the percentage of your 3rd feed ingredient is 10%, try switching this ingredient with another line.</h3>
		   </td>
		</tr></table>
<CFELSE>
<table width="80%" align="center">
<!--- Removed Sept. 2020 --->
<!---
		<TR>
			<TD><IMG Align="TOP"  SRC="../../images/unit_header.jpg" alt=""></TD>
			<TD ALIGN = CENTER colspan="3"><B><FONT SIZE=2>Colorado State University<br> Diagnostic Laboratory <BR>
							300 West Drake<BR>
							Fort Collins, CO.   80523<BR>
							Phone: 970-297-1281<BR>
							FAX: 970-297-0320</FONT></B></TD>
		</TR>
--->

		<tr>
		<td>&nbsp;</td>
		</tr>

		<tr>
				<td>&nbsp;</td>
		</tr>
		<tr>
				<td>&nbsp;</td>
		</tr>

		<tr>
			<td colspan=3 align="center"><b>SULFUR INTAKE CALCULATIONS FOR BEEF CATTLE</b><br><br></td>
		</tr>

		<tr><td colspan="4"><b>Animal Information:</b></td></tr>
		 <tr><td colspan="4">Your animal is
		<CFIF #form.an_type# eq 'non-lactating'>
			 not lactating.</td></tr>
		<CFELSE>
		     lactating.</td></tr>
		</cfif>
		<td colspan="4">Your animal's weight is #numberformat(form.bodyweight,"9999")# pounds or #numberformat(weight_kg, "999.99")# kilograms.<br><br></td>
		   <tr></tr>
		   <tr></tr>
		   <tr><td colspan="4"><b>Intake Information:</b></td></tr>
		   <tr><td colspan="4">Water Sulfate is #form.sulfatewater# ppm., water Sulfur is #numberformat(SULFUR,"99.99")# g/l.</td></tr>
		   <tr><td colspan="4">#form.feed1# is #form.dmi1# percent of your animal's daily feed intake and the Sulfur content of this #form.feed1# is #sulfur1# %.</td></tr>
		      <cfif #form.dmi2# GT 0>
		    <tr><td colspan="4">#form.feed2# is #form.dmi2# percent of your animal's daily feed intake and the Sulfur content of this #form.feed2# is #sulfur2# %.</td></tr>
		     </cfif>
		     <cfif #form.dmi3# GT 0>
		    <tr><td colspan="4">#form.feed3# is #form.dmi3# percent of your animal's daily feed intake and the Sulfur content of this #form.feed3# is #sulfur3# %.</td></tr>
		     </cfif>
		     <cfif #form.dmi4# GT 0>
		    <tr><td colspan="4">#form.feed4# is #form.dmi4# percent of your animal's daily feed intake and the Sulfur content of this #form.feed4# is #sulfur4# %.</td></tr>
		     </cfif>
		     <cfif #form.dmi5# GT 0>
		    <tr><td colspan="4">#form.feed5# is #form.dmi5# percent of your animal's daily feed intake and the Sulfur content of this #form.feed5# is #sulfur5# %.</td></tr>
		     </cfif>
		<tr>
		<TD>&nbsp;</td>
		</tr>

	<tr><td><b>Calculated values at various temperatures</b></tr></td>
		<TR>
		    <td>&nbsp;</td>
			<TD align="right">40 Degrees F</td>
			<td align="right">70 Degrees F</td>
			<td align="right">90 Degrees F</td>
		</tr>
        <TR>
			<TD>ESTIMATED H<sub>2</sub>O INTAKE IN LITERS</td><td align="right">#numberformat(water_40,"99")#</td><td align="right">#numberformat(water_70,"99")#</td><td align="right">#numberformat(water_90,"99")#</td>
		</tr>
		    <tr><td>GRAMS OF SULFUR CONSUMED IN WATER </td>
			<td align="right">#numberformat(sulfurw40,"99")#</td><td align="right">#numberformat(sulfurw70,"99")#</td><td align="right">#numberformat(sulfurw90,"99")#</td>
		</tr>
		 <tr><td>PERCENT SULFUR IN WATER (as if Dry Matter Intake) </td>
			<td align="right">#numberformat(sulfurdmi_40,"9.99")#</td><td align="right">#numberformat(sulfurdmi_70,"9.99")#</td><td align="right">#numberformat(sulfurdmi_90,"9.99")#</td>
		</tr>

		<tr><td>PERCENT SULFUR IN ALL FEED (Dry Matter Intake)</td>
			<td align="right">#numberformat(dmitot_sulfur,"9.99")#</td><td align="right">#numberformat(dmitot_sulfur,"9.99")#</td><td align="right">#numberformat(dmitot_sulfur,"9.99")#</td>
		</tr>

		<tr><td>ESTIMATED TOTAL SULFUR CONCENTRATION (%)</td>
			<td align="right">#numberformat(total_sulfur1,"9.99")#</td><td align="right">#numberformat(total_sulfur2,"9.99")#</td><td align="right">#numberformat(total_sulfur3,"9.99")#</td>
		</tr>
		</table>
</CFIF>
		</cfoutput>

		<!--- New Sept. 2020 --->
		   <footer>
		    <div>

		        <dl>
		            <dd>
		                &copy; Copyright 2020 by College of Veterinary Medicine & Biomedical Sciences<br />
		                Colorado State University. All Rights Reserved.

		            </dd>
		            <dd>
		                Version 2.1.0.0
		            </dd>

		        </dl>
		        <div class="bottomlogo"><a href="http://www.colostate.edu/"><span class="sr-only">Colorado State University</span><img src="https://calendar.colostate.edu/wp-content/themes/csu-theme/assets/img/csu-onleline-final.svg" alt="Colorado State University"></a></div>

		    </div>
</footer>

</body>
</html>
