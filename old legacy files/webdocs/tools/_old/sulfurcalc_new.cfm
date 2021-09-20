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
			<TD COLSPAN=2><CENTER><B><H4>CALCULATING TOTAL SULFUR CONCENTRATION INTAKE</b></h4></CENTER></TD>
		</TR>

			<FORM ACTION="sulfurcalc1_new.cfm?RequestTimeout=500" METHOD="POST">

			<TR>
				<TD align="right"><INPUT TYPE="SUBMIT" VALUE="CALCULATE"></td>
				<TD><INPUT TYPE="RESET" VALUE="RESET FORM"></td>
			</TR><br>
			</table>
<br>
<!--- ALIGN=CENTER WIDTH=90%  --->
			<table class="table"  WIDTH=100% border-spacing='10'  style="border: 2px solid #ddd !important;">
			<TR>
				<TD> ANIMAL BODY WEIGHT IN POUNDS</td>
				<TD align="left"><INPUT TYPE="TEXT"  NAME="BodyWeight"></TD>
			<TR>
			    <td>BEEF ANIMAL TYPE</td>
				<TD align="left">
					&nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="AN_TYPE" VALUE="non-lactating" CHECKED>NON-LACTATING<br>
			         &nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="AN_TYPE" VALUE="lactating" >LACTATING</TD>
			</TR>
		    <TR>
			    <td>SULFATE IN WATER, ppm (by laboratory measurement)</td>
				<TD align="left"><INPUT TYPE="TEXT" name="SulfateWater" value="0"></TD>
			</TR>
	</table>
	<br>

<!---
	<table class="table table-borderless" ALIGN=CENTER >
	<thead>
			<TR>
			    <th scope="col">FEEDSTUFF NAME </th>
				<th scope="col">PERCENT SULFUR IN FEED <br>(by laboratory measurement)<br>(if given as sulfate, divide by 3)</th>
				<th scope="col">PERCENT OF TOTAL FEED/FORAGE INTAKE<br>(total of all feeds must = 100 %)</th>
			</TR>
			<thead>
			<tbody>
			<TR>

			    <TD align="center"><INPUT TYPE="TEXT" name="Feed1"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate1" value="0"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="DMI1" value="100"></TD>
			</TR>
            <TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed2"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate2" value="0"></TD>
			    <TD align="center"><INPUT TYPE="TEXT" name="DMI2" value="0"></TD>
			</TR>
			<TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed3"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate3" value="0"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="DMI3" value="0"></TD>
			</TR>
			<TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed4" ></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate4" value="0" ></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="DMI4" value="0"></TD>
			</TR>
			<TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed5"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate5" value="0"></TD>
			    <TD align="center"><INPUT TYPE="TEXT" name="DMI5" value="0"></TD>
			</TR>
			</tbody>

			</TABLE>


			<br>
--->

			<!--- The bordless table isn't working so added inline style to <td> elementks --->
			<table class="table" border-spacing='5'  style="border: 2px solid #ddd !important;" >
				<thead>
					<TR>
						 <td ALIGN=CENTER>FEEDSTUFF NAME </td>
						 <td ALIGN=CENTER>PERCENT SULFUR IN FEED (by laboratory measurement) (if given as sulfate, divide by 3)</td>
						 <td ALIGN=CENTER>PERCENT OF TOTAL FEED/FORAGE INTAKE (total of all feeds must = 100 %)</td>
					</TR>
				<thead>
						<tbody>
						<TR>

						    <TD align="center" style='border:none;'><INPUT TYPE="TEXT" name="Feed1"></TD>
							<TD align="center" style='border:none;'><INPUT TYPE="TEXT" name="Sulfate1" value="0"></TD>
							<TD align="center" style='border:none;'><INPUT TYPE="TEXT" name="DMI1" value="100"></TD>
						</TR>
			            <TR>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Feed2"></TD>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Sulfate2" value="0"></TD>
						    <TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="DMI2" value="0"></TD>
						</TR>
						<TR>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Feed3"></TD>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Sulfate3" value="0"></TD>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="DMI3" value="0"></TD>
						</TR>
						<TR>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Feed4" ></TD>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Sulfate4" value="0" ></TD>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="DMI4" value="0"></TD>
						</TR>
						<TR>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Feed5"></TD>
							<TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="Sulfate5" value="0"></TD>
						    <TD align="center"  style='border:none;'><INPUT TYPE="TEXT" name="DMI5" value="0"></TD>
						</TR>
						</tbody>

			</TABLE>

	</FORM>

<!--- CVMBS Footer --->
<CFINCLUDE TEMPLATE="../../include_2020/inclfooter_2020.cfm">

</BODY>

</HTML>
