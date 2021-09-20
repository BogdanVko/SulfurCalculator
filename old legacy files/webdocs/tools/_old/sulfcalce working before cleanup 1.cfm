<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Veterinary Diagnostic Laboratories, Histology - CVMBS - Colorado State University</title>
<meta name="Description" content="Veterinary Diagnositc Laboratories" />
<meta name="Keywords" content="College of Veterinary Medicine and Biomedical Sciences, CVMBS, Veterinary Diagnositc Laboratories" />
<meta name="author" content="Anika Enos" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- <link rel="stylesheet" href="../../css/layout_cs.css" type="text/css" /> -->


<!--- from pricelist --->
 <!-- Bootstrap theme -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">



    <!-- datatables theme.
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.1.2/css/fixedHeader.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.0/css/responsive.bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/colreorder/1.3.2/css/colReorder.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedcolumns/3.2.2/css/fixedColumns.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowreorder/1.2.0/css/rowReorder.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/autofill/2.1.3/css/autoFill.bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/keytable/2.2.0/css/keyTable.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/scroller/1.4.2/css/scroller.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.0/css/select.bootstrap.min.css" />
-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">

    <!-- Style sheet for font awesome which is prefered over the built in fonts in Bootstrap. Those fonts are going away. -->
    <link rel="stylesheet" type="text/css" href="../../include2/css/font-awesome.min.css">

    <!-- Custom styles for this template.  All Style changes should be in this file. -->
    <link rel="stylesheet" type="text/css" href="../../include2/css/vdl_theme0.css" />




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

<!--- just testing
<cfinclude template = "../../include/CSU_header_footer.html">
--->



<!--- from pricelist --->
<!-- Fixed navbar -->
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
                <img src="../..//images/CSU_Logo_Ram.png" alt="College of Veterinary Medicine and Biomedical Sciences at Colorado State University" style="height: 48px; float:left;" class="visible-xs">
                <span class="navbar-brand visible-xs">Mobile Mode</span>
            </A>
        </div><!--/.navbar-header -->
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
            </ul>
        </div><!--/.nav-collapse -->
    </div><!-- /.container -->
</nav>













<!---
<div align="center">
<div id="topnav">
    <table width="800" border="0" cellpadding="0" cellspacing="0" summary="This table is for layout purposes.">
	<tr>
		<td rowspan="3" valign="top">
			<a href="http://www.colostate.edu/" target="_blank">
				<img src="../../images/csu_logo.gif" width="133" height="90" border="0" alt="Colorado State University home" /></a></td>
		<td>
			<a href="http://www.cvmbs.colostate.edu/" target="_blank">
				<img src="../../images/cvmbs_text.gif" width="616" height="36" border="0" alt="College of Veterinary Medicine &amp; Biomedical Sciences" /></a></td>

		<td colspan="2" rowspan="3" valign="top">
			<a href="http://www.cvmbs.colostate.edu/" target="_blank">
				<img src="../../images/caduceus.gif" width="51" height="90" border="0" alt="College of Veterinary Medicine &amp; Biomedical Sciences" /></a></td></tr>
	<tr>
		<td><a href="http://www.dlab.colostate.edu/">
				<img src="../../images/vet-dlab-text.gif" width="616" height="36" border="0" alt="Veterinary Diagnostic Laboratories" /></a></td>
	</tr>

	<tr>
		<td height="18" align="center" bgcolor="#f8efc5" class="topnav">

		</td>
</tr>
</table>
</div>
</div>
--->
<!--End TopBanner -->

		<TABLE ALIGN=CENTER WIDTH=90%>
		<TR>
			<TD COLSPAN=2><CENTER><B><H4>CALCULATING TOTAL SULFUR CONCENTRATION INTAKE</b></h4></CENTER></TD>
		</TR>

			<FORM ACTION="sulfurcalc1.cfm?RequestTimeout=500" METHOD="POST">

			<TR>
				<TD align="right"><INPUT TYPE="SUBMIT" VALUE="CALCULATE"></td>
				<TD><INPUT TYPE="RESET" VALUE="RESET FORM"></td>
			</TR><br>
			</table>
			<table ALIGN=CENTER WIDTH=90% BORDER=5>
			<TR>
				<TD> ANIMAL BODY WEIGHT IN POUNDS</td>
				<TD align="center"><INPUT TYPE="TEXT"  NAME="BodyWeight"></TD>
			<TR>
			    <td>BEEF ANIMAL TYPE</td>
				<TD> <INPUT TYPE="RADIO" NAME="AN_TYPE" VALUE="non-lactating" CHECKED>NON-LACTATING<br>
			         <INPUT TYPE="RADIO" NAME="AN_TYPE" VALUE="lactating" >LACTATING</TD>
			</TR>
		    <TR>
			    <td>SULFATE IN WATER, ppm (by laboratory measurment)</td>
				<TD align="center"><INPUT TYPE="TEXT" name="SulfateWater" value="0"></TD>
			</TR>
	</table><br>
	<table ALIGN=CENTER WIDTH=90% BORDER=5>
			<TR>
			    <td ALIGN=CENTER>FEEDSTUFF NAME </td>
				<td ALIGN=CENTER>PERCENT SULFUR IN FEED <br>(by laboratory measurement)<br>(if given as sulfate, divide by 3)</td>
				<td ALIGN=CENTER>PERCENT OF TOTAL FEED/FORAGE INTAKE<br>(total of all feeds must = 100 %)</td>
			</TR>
			    <TD align="center"><INPUT TYPE="TEXT" name="Feed1"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate1" value="0"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="DMI1" value="100"></TD>
            <TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed2"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate2" value="0"></TD>
			    <TD align="center"><INPUT TYPE="TEXT" name="DMI2" value="0"></TD>
			<TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed3"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate3" value="0"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="DMI3" value="0"></TD>
			<TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed4" ></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate4" value="0" ></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="DMI4" value="0"></TD>
			<TR>
				<TD align="center"><INPUT TYPE="TEXT" name="Feed5"></TD>
				<TD align="center"><INPUT TYPE="TEXT" name="Sulfate5" value="0"></TD>
			    <TD align="center"><INPUT TYPE="TEXT" name="DMI5" value="0"></TD>
			</TR>


			</TABLE>
	</FORM>

</BODY>


<!--- from pricelist --->
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



</HTML>
