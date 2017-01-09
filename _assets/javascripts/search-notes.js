//Back to callbacks...
function getJSON(url, query, callback) {
    var Httpreq = new XMLHttpRequest(); // a new request
    Httpreq.open("GET", url, false);
    Httpreq.send(null);
    var json = Httpreq.responseText;
    callback(json,query);
}

// iterate over each element in the array
function searchJSON(resultsJSON,query) {
    //console.log(resultsJSON);
    var jsonObj = JSON.parse(resultsJSON);
    //console.log(jsonObj.length);
    if (jsonObj.length > 0) {
        window.results = [];
        for (var i = 0; i < jsonObj.length; i++) {
            //console.log(jsonObj[i].title);
            // look for the entry with a matching `code` value
            //console.log(query);
            console.log(jsonObj[i].title + " " + jsonObj[i].content.indexOf(query) + " Treffer.")
            if (jsonObj[i].content && jsonObj[i].content.indexOf(query) >= 0) {
                var result = jsonObj[i];
                console.log(jsonObj[i]);
                var weight = (result.content.match(/text/g) || []).length;
                result.weight = weight;
                results.push(result);
            }
        }
        results.sort(function(a, b){
            console.log(b.weight)
            return parseFloat(b.weight) - parseFloat(a.weight);
        });
        //console.log(results);
        return results;
    } else {
        console.log('empty or non-valid results.');
    }
}

getJSON("http://localhost:4000/feed.json", "text", searchJSON);