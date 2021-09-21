<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Veterinary Diagnostic Laboratories, Histology - CVMBS - Colorado State University</title>
<meta name="Description" content="Veterinary Diagnositc Laboratories" />
<meta name="Keywords" content="College of Veterinary Medicine and Biomedical Sciences, CVMBS, Veterinary Diagnositc Laboratories" />
<meta name="author" content="Anika Enos" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />


 <!--- CVMBS Header --->
<CFINCLUDE TEMPLATE="../../include_2020/inclheader_2020.cfm">


<script type="text/javascript">

sfHover = function() {
	var sfEls = document.getElementById("nav").getElementsByTagName("LI");
	for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
			this.className+=" sfhover";
		}
		sfEls[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
		}
	}
}
if (window.attachEvent) window.attachEvent("onload", sfHover);

var time = 3000;
var numofitems = 4;


function menu(allitems,thisitem,startstate){
  callname= "gl"+thisitem;
  divname="subglobal"+thisitem;
  this.numberofmenuitems = 4;
  this.caller = document.getElementById(callname);
  this.thediv = document.getElementById(divname);
  this.thediv.style.visibility = startstate;
}

function ehandler(event,theobj){
  for (var i=1; i<= theobj.numberofmenuitems; i++){
    var shutdiv =eval( "menuitem"+i+".thediv");
    shutdiv.style.visibility="hidden";
  }
  theobj.thediv.style.visibility="visible";
}

function closesubnav(event){
  if ((event.clientY <48)||(event.clientY > 107)){
    for (var i=1; i<= numofitems; i++){
      var shutdiv =eval('menuitem'+i+'.thediv');
      shutdiv.style.visibility='hidden';
    }
  }
}
</script>
</head>


		<TABLE ALIGN=CENTER >
		<TR>
			<TD COLSPAN=2><CENTER><B>CALCULATING TOTAL SULFUR CONCENTRATION INTAKE</b></CENTER></TD>
		</TR>

			<FORM ACTION="sulfurcalc1.cfm?RequestTimeout=500" METHOD="POST">

			<TR>
				<TD align="right">
				<INPUT TYPE="SUBMIT" VALUE="CALCULATE" name="CALCULATE" id="CALCULATE"></td>

				<label for="RESET" class="sr-only">RESET</label>
				<TD><INPUT TYPE="RESET" VALUE="RESET FORM" name="RESET" id="RESET"></td>
			</TR><br>
			</FORM>
			</table>
<br>
<!--- ALIGN=CENTER WIDTH=90%  --->
			<table class="table-striped"  WIDTH=97% ALIGN="center"  style="border: 2px solid #ddd !important;" >
			<TR>
				<TD style="padding:10px">ANIMAL BODY WEIGHT IN POUNDS</td>
				<TD align="left">
				<label for="BodyWeightId" class="sr-only">Body Weight</label>
				<INPUT TYPE="TEXT"  NAME="BodyWeight" id="BodyWeightId"></TD>
			<TR>
			    <td style="padding:10px">BEEF ANIMAL TYPE</td>
				<TD align="left">
					<label for="NonLactatingId" class="sr-only">Non-Lactating</label>
					&nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="AN_TYPE" VALUE="non-lactating" CHECKED id="NonLactatingId">NON-LACTATING<br>
					<label for="LactatingId" class="sr-only">Lactating</label>
			         &nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="AN_TYPE" VALUE="lactating" id="LactatingId">LACTATING</TD>
			</TR>
		    <TR>
			    <td style="padding:10px">SULFATE IN WATER, ppm (by laboratory measurement)</td>
				<TD align="left">
				<label for="SulfateWaterId" class="sr-only">SULFATE IN WATER, ppm (by laboratory measurement)</label>
				<INPUT TYPE="TEXT" name="SulfateWater" value="0" id="SulfateWaterId"></TD>
			</TR>
	</table>
	<br>

			<!--- The bordless table isn't working so added inline style to <td> elements --->
			<table class="table-striped"  WIDTH=97%  ALIGN="center" style="border: 2px solid #ddd !important;" >
				<thead>
					<TR>
						 <td ALIGN=CENTER>FEEDSTUFF NAME </td>
						 <td ALIGN=CENTER>PERCENT SULFUR IN FEED (by laboratory measurement) (if given as sulfate, divide by 3)</td>
						 <td ALIGN=CENTER>PERCENT OF TOTAL FEED/FORAGE INTAKE (total of all feeds must = 100 %)</td>
					</TR>
				<thead>
						<tbody>
						<TR>

						    <TD align="center" style='border:none;'>
						    	<label for="Feed1Id" class="sr-only">Feed 1</label>
						    	<INPUT TYPE="TEXT" name="Feed1" id="Feed1Id">
						    </TD>
							<TD align="center" style='border:none;'>
								<label for="Sulfate1Id" class="sr-only">Sulfate 1</label>
								<INPUT TYPE="TEXT" name="Sulfate1" value="0" id="Sulfate1Id">
							</TD>
							<TD align="center" style='border:none;'>
								<label for="DMI1Id" class="sr-only">DMI 1</label>
								<INPUT TYPE="TEXT" name="DMI1" value="100" id="DMI1Id">
							</TD>
						</TR>
			            <TR>
							<TD align="center"  style='border:none;'>
								<label for="Feed2Id" class="sr-only">Feed 2</label>
								<INPUT TYPE="TEXT" name="Feed2" id="Feed2Id">
							</TD>
							<TD align="center"  style='border:none;'>
								<label for="Sulfate2Id" class="sr-only">Sulfate 2</label>
								<INPUT TYPE="TEXT" name="Sulfate2" value="0" id="Sulfate2Id">
							</TD>
						    <TD align="center"  style='border:none;'>
						    	<label for="DMI2Id" class="sr-only">DMI 2</label>
						    	<INPUT TYPE="TEXT" name="DMI2" value="0" id="DMI2Id">
						    </TD>
						</TR>
						<TR>
							<TD align="center"  style='border:none;'>
								<label for="Feed3Id" class="sr-only">Feed 3</label>
								<INPUT TYPE="TEXT" name="Feed3" id="Feed3Id">
							</TD>
							<TD align="center"  style='border:none;'>
								<label for="Sulfate3Id" class="sr-only">Sulfate 3</label>
								<INPUT TYPE="TEXT" name="Sulfate3" value="0" id="Sulfate3Id">
							</TD>
							<TD align="center"  style='border:none;'>
								<label for="DMI3Id" class="sr-only">DMI 3</label>
								<INPUT TYPE="TEXT" name="DMI3" value="0" id="DMI3Id">
							</TD>
						</TR>
						<TR>
							<TD align="center"  style='border:none;'>
								<label for="Feed4Id" class="sr-only">Feed 4</label>
								<INPUT TYPE="TEXT" name="Feed4" id="Feed4Id">
							</TD>
							<TD align="center"  style='border:none;'>
								<label for="Sulfate4Id" class="sr-only">Sulfate 4</label>
								<INPUT TYPE="TEXT" name="Sulfate4" value="0" id="Sulfate4Id">
							</TD>
							<TD align="center"  style='border:none;'>
								<label for="DMI4Id" class="sr-only">DMI 4</label>
								<INPUT TYPE="TEXT" name="DMI4" value="0" id="DMI4Id">
							</TD>
						</TR>
						<TR>
							<TD align="center"  style='border:none;'>
								<label for="Feed5Id" class="sr-only">Feed 5</label>
								<INPUT TYPE="TEXT" name="Feed5" id="Feed5Id">
							</TD>
							<TD align="center"  style='border:none;'>
								<label for="Sulfate5Id" class="sr-only">Sulfate 5</label>
								<INPUT TYPE="TEXT" name="Sulfate5" value="0" id="Sulfate5Id">
							</TD>
						    <TD align="center"  style='border:none;'>
						    	<label for="DMI5Id" class="sr-only">DMI 5</label>
						    	<INPUT TYPE="TEXT" name="DMI5" value="0" id="DMI5Id">
						    </TD>
						</TR>
						</tbody>

			</TABLE>

	</FORM>

<br>
<!--- CVMBS Footer --->
<CFINCLUDE TEMPLATE="../../include_2020/inclfooter_2020.cfm">

</BODY>

</HTML>
