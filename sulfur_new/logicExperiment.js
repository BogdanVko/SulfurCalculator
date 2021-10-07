// @author - Bogdan Vasilchenko
// supervisor - Jiang Wenjing
// v1.0 on 10/Sep/2021
// v1.1 on 14/Sep/2021
// This is the controller for sulfur calculator
// sulfur.html is view file. JQuery is included in sulfur.html, otherwise it must be included for this to work 

//add hover to calcBtn
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




$(document).ready(function () {

    $('#calcBtn').css('cursor', 'pointer');
    $('#resetBtn').css('cursor', 'pointer');


    $("#resetBtn").click(function () {
        $('td').find("input[type=text], textarea").val("");
        $('td').find("input[type=number], textarea").val("0");

        $('#resultPrint').html("");
        $('#alt_result').html("");
    });

    // $("#calcBtn").click(function () { this was the way to do it, but the new way is better because the action controller doesn't fall off, so to say
    $(document).on("click", "#calcBtn", function () {
        //add field validation here
        console.log("calculate btn pressed")

        //formatting notes:
        //round waterX to closest integer
        //round water sulfur to 2 sig figs
        //round percentSulfurX to 2 sig figs
        // location.reload();
        const weightInPounds = document.getElementById("BodyWeightPounds").value;
        const weight = (weightInPounds / 2.2);
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
        console.log("total DMI is " + totalDmi)
        if (weight <= 0) {
            alert("weight cannot be 0");
        }
        else if (totalDmi < 0.9999 || totalDmi > 1.0001) {
            alert("total DMI must equal to 100, yours is " + totalDmi * 100);
        }
        else {
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

            const lactatingString = lactating ? "lactating" : "not lactating";
            let feedDisplayString = ""; //JavaScript is stupid.

            if (feed1.dmi > 0) {
                feedDisplayString += "<tr><td>" + feed1.name + " is " + (feed1.dmi * 100) +
                    " percent of your animal's daily feed intake and the Sulfur content of this " + feed1.name + " is " + feed1.sulfur + " %.</td></tr>";
            }
            if (feed2.dmi > 0) {
                feedDisplayString += "<tr><td>" + feed2.name + " is " + (feed2.dmi * 100) +
                    " percent of your animal's daily feed intake and the Sulfur content of this " + feed2.name + " is " + feed2.sulfur + " %.</td></tr>";
            }
            if (feed3.dmi > 0) {
                feedDisplayString += "<tr><td>" + feed3.name + " is " + (feed3.dmi * 100) +
                    " percent of your animal's daily feed intake and the Sulfur content of this " + feed3.name + " is " + feed3.sulfur + " %.</td></tr>";
            }
            if (feed4.dmi > 0) {
                feedDisplayString += "<tr><td>" + feed4.name + " is " + (feed4.dmi * 100) +
                    " percent of your animal's daily feed intake and the Sulfur content of this " + feed4.name + " is " + feed4.sulfur + " %.</td></tr>";
            }
            if (feed5.dmi > 0) {
                feedDisplayString += "<tr><td>" + feed5.name + " is " + (feed5.dmi * 100) +
                    " percent of your animal's daily feed intake and the Sulfur content of this " + feed5.name + " is " + feed5.sulfur + " %.</td></tr>";
            }




            $('#resultPrint').html("" +
                "<table class=\"table table-striped\">" +
                "<tbody><tr>" +
                "	<td  class=\"text-center\"><h5><b>SULFUR INTAKE CALCULATIONS FOR BEEF CATTLE</b></h5></td>" +
                "</tr>" +

                "<tr><td><b>Animal Information:</b></td></tr>" +
                "<tr><td>Your animal is" +
                " " + lactatingString + ".</td></tr>" +
                "<tr><td>Your animal's weight is  " + weightInPounds + " pounds or  " + weight.toFixed(2) + " kilograms.<br><br></td>" +
                "</tr><tr><td><b>Intake Information:</b></td></tr>" +
                "<tr><td>Water Sulfate is " + sulfateW + " ppm., water Sulfur is  " + waterSulfur.toFixed(2) + " g/l.</td></tr>" +
                feedDisplayString +
                "<tr>" +
                "<td>&nbsp;</td>" +
                "</tr>" +
                "</tbody></table>");

            $('#alt_result').html("" +
                " <div class=\"row text-center\" style=\"padding-bottom: 20px;\">" +
                " <div class=\"col-12 my-auto \">" +
                "<h5><b>CALCULATED VALUES AT VARIOUS TEMPERATURES</b></h5>" +
                "</div>" +

                "</div>" +
                "<div class=\"row\" style=\"background-color: rgba(0,0,0,.05);\">" +
                "<div class=\"col\">" +
                "&nbsp;" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>40 Degrees F</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>70 Degrees F</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>90 Degrees F</p>" +
                "</div>" +
                "</div>" +

                "<div class=\"row\">" +
                "<div class=\"col\">" +
                "<p>ESTIMATED H<sub>2</sub>O INTAKE IN LITERS</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>"+ Math.round(water40)+"</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>"+ Math.round(water70)+"</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>"+ Math.round(water90)+"</p>" +
                "</div>" +
                "</div>" +
                "<div class=\"row\" style=\"background-color: rgba(0,0,0,.05);\">" +
                "<div class=\"col\">" +
                "<p>GRAMS OF SULFUR CONSUMED IN WATER</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>" + Math.round(sulfurWater40) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>" + Math.round(sulfurWater70) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>" + Math.round(sulfurWater90) + "</p>" +
                "</div>" +
                "</div>" +


                "<div class=\"row\">" +
                "<div class=\"col\">" +
                "<p>PERCENT SULFUR IN WATER (as if Dry Matter Intake)</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>" + sulfurDmi40.toFixed(2) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>" + sulfurDmi70.toFixed(2) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "<p>" + sulfurDmi90.toFixed(2) + "</p>" +
                "</div>" +
                "</div>" +


                "<div class=\"row\" style=\"background-color: rgba(0,0,0,.05);\">" +
                "<div class=\"col\">" +
                "    <p>PERCENT SULFUR IN ALL FEED (Dry Matter Intake)</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "    <p>" + percentSulfurInAllFeed.toFixed(2) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "    <p>" + percentSulfurInAllFeed.toFixed(2) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "    <p>" + percentSulfurInAllFeed.toFixed(2) + "</p>" +
                "</div>" +
                "</div>" +

                "<div class=\"row\">" +
                "<div class=\"col\">" +
                "    <p>ESTIMATED TOTAL SULFUR (%)</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "    <p>" + percentSulfur40.toFixed(2) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "    <p>" + percentSulfur70.toFixed(2) + "</p>" +
                "</div>" +
                "<div class=\"col text-right\">" +
                "    <p>" + percentSulfur90.toFixed(2) + "</p>" +
                "</div>" +
                "</div>");

            // $('#result').append("NEW<br/>" + ""
            // );
            // $(this).prop('disabled', true); //doesn't work
        }
    });

});

