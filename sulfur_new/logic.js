// @author - Bogdan Vasilchenko
// v1.0 on 10/Sep/2021
// supervisor - Jiang Wenjing
// sulfur.html is the page controlled. JQuery is included in sulfur.html
// The Math works out, but in the original .cfm calc lb to kg conversion is wrong lol
class Feedstuff {
    constructor(name, percentSulfur, percentTotal) {
        this.name = name;
        this.percentSulfur = percentSulfur;
        this.percentTotal = percentTotal;

    }

    get dmi() {
        return this.percentTotal / 100;
    }

    get sulfur() {
        return this.percentSulfur;
    }
    get feedname() {
        return this.name;
    }
}




window.onload = function () {

    const weightInPounds = document.getElementById("BodyWeightPounds").value;
    const weight = 0.4535923 * weightInPounds;
    // alert("weight in kilos is " + weight);
    //works

    let lactating = false;
    if (document.getElementById("LactatingId").checked) {
        lactating = true;
    }

    const sulfateW = document.getElementById("SulfateWaterId").value;

    const waterSulfur = (sulfateW / 1000) / 3; // Water Sulfur. Weird formula, but works idk
    let totalDmi = 0; //percent total intake of all feeds must = to 1 (100%) 

    const feed1 = new Feedstuff(
        document.getElementById("Feed1Id").value,
        document.getElementById("Sulfate1Id").value,
        document.getElementById("DMI1Id").value,
    );
    totalDmi += feed1.dmi;
    const feed2 = new Feedstuff(
        document.getElementById("Feed2Id").value,
        document.getElementById("Sulfate2Id").value,
        document.getElementById("DMI2Id").value,
    );
    totalDmi += feed2.dmi;
    const feed3 = new Feedstuff(
        document.getElementById("Feed3Id").value,
        document.getElementById("Sulfate3Id").value,
        document.getElementById("DMI3Id").value,
    );
    totalDmi += feed3.dmi;
    const feed4 = new Feedstuff(
        document.getElementById("Feed4Id").value,
        document.getElementById("Sulfate4Id").value,
        document.getElementById("DMI4Id").value,
    );
    totalDmi += feed4.dmi;
    const feed5 = new Feedstuff(
        document.getElementById("Feed5Id").value,
        document.getElementById("Sulfate5Id").value,
        document.getElementById("DMI5Id").value,
    );
    totalDmi += feed5.dmi;

    let water40 = 0,
        sulfurWater40 = 0,
        water70 = 0,
        sulfurWater70 = 0,
        water90 = 0,
        sulfurWater90 = 0;

    if (!lactating) {
        water40 = weight * 0.08;
        sulfurWater40 = water40 * waterSulfur;

        water70 = weight * .10;
        sulfurWater70 = water70 * waterSulfur;

        water90 = weight * 0.18;
        sulfurWater90 = water90 * waterSulfur;
    } else {
        water40 = weight * 0.10;
        sulfurWater40 = water40 * waterSulfur;

        water70 = weight * .15;
        sulfurWater70 = water70 * waterSulfur;

        water90 = weight * 0.15;
        sulfurWater90 = water90 * waterSulfur;
    }
    let sulfurDmi40 = 0,
        sulfurDmi70 = 0,
        sulfurDmi90 = 0;

    sulfurDmi40 = (sulfurWater40 / (weight * 0.025) / 10); // Questionable formula   
    sulfurDmi70 = (sulfurWater70 / (weight * 0.025) / 10);
    sulfurDmi90 = (sulfurWater90 / (weight * 0.025) / 10);

    let percentSulfurInAllFeed = 0; //gotta work on this.
    const percentSulfurFeed1 = feed1.dmi * feed1.sulfur;
    const percentSulfurFeed2 = feed2.dmi * feed2.sulfur;
    const percentSulfurFeed3 = feed3.dmi * feed3.sulfur;
    const percentSulfurFeed4 = feed4.dmi * feed4.sulfur;
    const percentSulfurFeed5 = feed5.dmi * feed5.sulfur;

    // This variable is PERCENT SULFUR IN ALL FEED (Dry Matter Intake)
    percentSulfurInAllFeed = percentSulfurFeed1 + percentSulfurFeed2 + percentSulfurFeed3 + percentSulfurFeed4 + percentSulfurFeed5;

    // These are ESTIMATED TOTAL SULFUR CONCENTRATION (%)
    let percentSulfur40 = 0,
        percentSulfur70 = 0,
        percentSulfur90 = 0;

    percentSulfur40 = percentSulfurInAllFeed + sulfurDmi40;
    percentSulfur70 = percentSulfurInAllFeed + sulfurDmi70;
    percentSulfur90 = percentSulfurInAllFeed + sulfurDmi90;

    $("#resetBtn").click(function () {
        $('td').find("input[type=text], textarea").val("0");
    });

    const lactatingString = lactating ? "lactating" : "not lactating";
    let feedDisplayString = ""; //JavaScript is stupid.

    if (feed1.dmi > 0) {
        feedDisplayString += "<tr><td colspan=\"4\">" + feed1.name + " is " + (feed1.dmi * 100) + " percent of your animal's daily feed intake and the Sulfur content of this er is " + feed1.sulfur + " %.</td></tr>";
    }
    if (feed2.dmi > 0) {
        feedDisplayString += "<tr><td colspan=\"4\">" + feed2.name + " is " + (feed2.dmi * 100) + " percent of your animal's daily feed intake and the Sulfur content of this er is " + feed2.sulfur + " %.</td></tr>";
    }
    if (feed3.dmi > 0) {
        feedDisplayString += "<tr><td colspan=\"4\">" + feed3.name + " is " + (feed3.dmi * 100) + " percent of your animal's daily feed intake and the Sulfur content of this er is " + feed3.sulfur + " %.</td></tr>";
    }
    if (feed4.dmi > 0) {
        feedDisplayString += "<tr><td colspan=\"4\">" + feed4.name + " is " + (feed4.dmi * 100) + " percent of your animal's daily feed intake and the Sulfur content of this er is " + feed4.sulfur + " %.</td></tr>";
    }
    if (feed5.dmi > 0) {
        feedDisplayString += "<tr><td colspan=\"4\">" + feed5.name + " is " + (feed5.dmi * 100) + " percent of your animal's daily feed intake and the Sulfur content of this er is " + feed5.sulfur + " %.</td></tr>";
    }

    // $("#calcBtn").click(function () { this was the way to do it
    $(document).on("click", "#calcBtn", function (e) {
        console.log("calculate btn pressed")
        //formatting notes:
        //round waterX to closest integer
        //round water sulfur to 2 sig figs
        //round percentSulfurX to 2 sig figs


        if (totalDmi != 1) {
            alert("Sorry, but The \"Percent of Total Feed Intake\" for your animal was " + totalDmi * 100 + " percent, it must equal 100 percent!\nTry again please")
        }


        $('#resultPrint').html("" +
            "<table class=\"table-striped\" width=\"97%\" align=\"center\">" +
            "<tbody><tr>" +
            "	<td colspan=\"3\" align=\"center\"><b>SULFUR INTAKE CALCULATIONS FOR BEEF CATTLE</b></td>" +
            "</tr>" +

            "<tr><td colspan=\"4\"><b>Animal Information:</b></td></tr>" +
            "<tr><td colspan=\"4\">Your animal is" +
            " " + lactatingString + ".</td></tr>" +
            "<tr><td colspan=\"4\">Your animal's weight is  " + weightInPounds + " pounds or  " + Math.round(weight) + " kilograms.<br><br></td>" +
            "</tr><tr><td colspan=\"4\"><b>Intake Information:</b></td></tr>" +
            "<tr><td colspan=\"4\">Water Sulfate is " + sulfateW + " ppm., water Sulfur is  " + waterSulfur.toFixed(2) + " g/l.</td></tr>" +
            feedDisplayString +
            "<tr>" +
            "<td>&nbsp;</td>" +
            "</tr>" +
            "<tr><td><b>Calculated values at various temperatures</b></td></tr>" +
            "<tr>" +
            "<td>&nbsp;</td>" +
            "<td align=\"right\">40 Degrees F</td>" +
            "<td align=\"right\">70 Degrees F</td>" +
            "<td align=\"right\">90 Degrees F</td>" +
            "</tr>" +
            "<tr>" +
            "<td>ESTIMATED H<sub>2</sub>O INTAKE IN LITERS</td><td align=\"right\">" + Math.round(water40) + "</td><td align=\"right\">" + Math.round(water70) + "</td><td align=\"right\">" + Math.round(water90) + "</td>" +
            "</tr>" +
            "<tr><td>GRAMS OF SULFUR CONSUMED IN WATER </td>" +
            "<td align=\"right\">" + Math.round(sulfurWater40) + "</td><td align=\"right\">" + Math.round(sulfurWater70) + "</td><td align=\"right\">" + Math.round(sulfurWater90) + "</td>" +
            "</tr>" +
            "<tr><td>PERCENT SULFUR IN WATER (as if Dry Matter Intake) </td>" +
            "<td align=\"right\">" + sulfurDmi40.toFixed(2) + "</td><td align=\"right\">" + sulfurDmi70.toFixed(2) + "</td><td align=\"right\">" + sulfurDmi90.toFixed(2) + "</td>" +
            "</tr>" +
            "<tr><td>PERCENT SULFUR IN ALL FEED (Dry Matter Intake)</td>" +
            "<td align=\"right\">" + percentSulfurInAllFeed.toFixed(2) + "</td><td align=\"right\">" + percentSulfurInAllFeed.toFixed(2) + "</td><td align=\"right\">" + percentSulfurInAllFeed.toFixed(2) + "</td>" +
            "</tr>" +
            "<tr><td>ESTIMATED TOTAL SULFUR CONCENTRATION (%)</td>" +
            "<td align=\"right\">" + percentSulfur40.toFixed(2) + "</td><td align=\"right\">" + percentSulfur70.toFixed(2) + "</td><td align=\"right\">" + percentSulfur90.toFixed(2) + "</td>" +
            "</tr>" +
            "</tbody></table>"

            + "");
        // $(this).prop('disabled', true); //doesn't work
    });

}

