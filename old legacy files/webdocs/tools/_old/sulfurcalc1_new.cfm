<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Sulfur Calculations</title>

    <br>
     <!--- CVMBS Header --->
	<CFINCLUDE TEMPLATE="../../include_2020/inclheader_2020.cfm">


</head>


<body>
<cfset dmi1 = 0>
<cfset dmi2 = 0>
<cfset dmi3 = 0>
<cfset dmi4 = 0>
<cfset dmi5 = 0>
<cfset dmi_tot = 0>
<!---
<cfoutput>
step1 #form.dmi3#
</cfoutput>
--->
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
	 <!---
	 <cfoutput>
		step2 #form.dmi3#
	</cfoutput>
	--->
	 <cfif #form.dmi4# GT 0>
	 <cfset dmi4 = #form.dmi4#/100>
	 <cfset sulfur4 = #form.sulfate4#>
	 </cfif>

	 <cfif #form.dmi5# GT 0>
	 <cfset dmi5 = #form.dmi5#/100>
	 <cfset sulfur5 = #form.sulfate5#>
	 </cfif>

	 <cfset dmi_tot = (#dmi1#+#dmi2#+#dmi3#+#dmi4#+#dmi5#)>
<!---
<cfoutput>
step3 #form.dmi3#
</cfoutput>
--->
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


<cfoutput>
<CFIF #dmi_tot# NEQ '1'>
<table width="80%" align="center">

 		<tr>
		   <td><cfset tot_per = #dmi_tot#*100 ><h3>The "Percent of Total Feed Intake" for your animal was #tot_per# percent, it must equal 100 percent.
 			 <!--- Please click <A HREF="../../webdocs/special_cases/sulfurcalc.cfm">here</a> to re-enter your information, or go "BACK" and correct your information.<br><br> --->
 			 <!--- JUST TESTING! --->
 			 Please click <A HREF="../../webdocs/tools/sulfurcalc_new.cfm">here</a> to re-enter your information, or go "BACK" and correct your information.<br><br>
			 If your total percent is 100, but the percentage of your 3rd feed ingredient is 10%, try switching this ingredient with another line.</h3>
		   </td>
		</tr></table>
<CFELSE>
<table class="table-striped" width="80%" align="center">

		<tr>
			<td colspan=3 align="center"><b>SULFUR INTAKE CALCULATIONS FOR BEEF CATTLE</b></td>
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

<br>
<!--- CVMBS Footer --->
<CFINCLUDE TEMPLATE="../../include_2020/inclfooter_2020.cfm">

</body>
</html>
