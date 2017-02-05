function imageExists(image_url) {
    var http = new XMLHttpRequest();
    http.open('HEAD', image_url, false);
    http.send();
    return http.status != 404;
}

function insertEmagramm() {
    var d = new Date();
    var year = d.getFullYear().toString();
    var month = (d.getMonth() + 1).toString();
    month = ('0' + month).slice(-2);
    var day = (d.getDate()).toString();
    day = ('0' + day).slice(-2);
    var dateString = year + month + day;
    /*console.log("dateString is: " + dateString);*/
    var ema1 = "<img data-src='";
    var ema2 = "http://www.meteoswiss.admin.ch/product/input/radio-soundings/VSSG76.LSSW_";
    var midday = "_1200.gif'";
    var ema3 = ">";
    var midnight = "_0000.gif'";
    var emaDay = ema1 + ema2 + dateString + midday + ema3;
    var emaNight = ema1 + ema2 + dateString + midnight + ema3;
    var emaDayURL = ema2 + dateString + midday + ema3;
    //console.log("emaDayURL is: " + emaDayURL);
    //console.log("emaDay is: " + emaDay);
    if (true /*imageExists(emaDayURL)*/) {
        document.getElementById("emagramm").innerHTML = emaDay;
    } else {
        document.getElementById("emagramm").innerHTML = emaNight;
    }
}

insertEmagramm();
/*var layzr = new Layzr();
layzr.update();*/