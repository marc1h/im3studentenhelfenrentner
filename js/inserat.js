var inseratID;

var wochentage = [];


holeUserInserat();

holeAlleWochentage();



function neuesInserat(){

    let aktion = document.querySelector("input[name='aktion']:checked").value;
    let thema = document.querySelector("#thema").value;
    let kurzbeschrieb = document.querySelector("#kurzbeschrieb").value;
    let zeit = document.querySelector("#zeit").value;
    let preis = document.querySelector("#preis").value;
    let kanton = document.querySelector("#kanton").value;


    let formData = new FormData();
    formData.append('aktion', aktion);
    formData.append('thema', thema);
    formData.append('kurzbeschrieb', kurzbeschrieb);
    formData.append('zeit', zeit);
    formData.append('preis', preis);
    formData.append('kanton', kanton);

    formData.append('wochentage', JSON.stringify(wochentage));

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    formData.append('user', userID);

    fetch("https://528400-3.web.fhgr.ch/php/neuesInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((response) => {

            return response.text();
      

        })
        .then((data) => {

            document.querySelector('#nachricht').innerHTML = data;
            document.querySelector('#button-veroeffentlichen').classList.add("hidden");
            document.querySelector('#button-aktualisieren').classList.remove("hidden");
            document.querySelector('#button-loeschen').classList.remove("hidden");
            
            
        })

}



function holeUserInserat() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://528400-3.web.fhgr.ch/php/holeUserInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {


            if (data.length == 0) {

                document.querySelector('#infoText').innerHTML = "Füllen Sie dieses Formular aus, um Ihr Inserat aufzuschalten: <br><br>";

                document.querySelector('#button-veroeffentlichen').classList.remove("hidden");

     
                // falls es bereits ein Inserat zu diesem User gibt
            } else {

                // speichere die inseratID in der Variable (wird benötigt für Aktualisieren & Löschen)
                inseratID = data[0].ID;

                document.querySelector('#infoText').innerHTML = "Hier können Sie Ihr Inserat bearbeiten:"

                document.querySelector('#button-aktualisieren').classList.remove("hidden");
                document.querySelector('#button-loeschen').classList.remove("hidden");

                document.querySelector('#thema').value = data[0].thema;
                document.querySelector('#kurzbeschrieb').value = data[0].kurzbeschrieb;
                document.querySelector('#zeit').value = data[0].zeit;
                document.querySelector('#preis').value = data[0].preis;
                document.querySelector('#kanton').value = data[0].kanton;


                if (data[0].aktion == 1) {

                    document.querySelector('#biete_an').checked = true;

                } else {

                    document.querySelector('#suche').checked = true;

                }

                // färbe die Wochentage des Inserates korrekt ein
                holeWochentageVonInserat(inseratID);

            }
        })
}



function aktualisiereInserat() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let aktion = document.querySelector('input[name="aktion"]:checked').value;
    let thema = document.querySelector('#thema').value;
    let kurzbeschrieb = document.querySelector('#kurzbeschrieb').value;
    let zeit = document.querySelector('#zeit').value;
    let preis = document.querySelector('#preis').value;
    let kanton = document.querySelector('#kanton').value;
  

    let jsonWochentage = JSON.stringify(wochentage);

    let formData = new FormData();
    formData.append('aktion', aktion);
    formData.append('userID', userID);
    formData.append('thema', thema);
    formData.append('kurzbeschrieb', kurzbeschrieb);
    formData.append('zeit', zeit);
    formData.append('preis', preis);
    formData.append('kanton', kanton);

    formData.append('wochentage', jsonWochentage);

    formData.append('inseratID', inseratID);

    fetch("https://528400-3.web.fhgr.ch/php/aktualisiereInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.text();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {

            document.querySelector('#nachricht').innerHTML = data;

        })
}





// WOCHENTAGE
// WOCHENTAGE

function holeAlleWochentage() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    fetch("https://528400-3.web.fhgr.ch/php/holeAlleWochentage.php",
        {
            body: "",
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {

            data.forEach(wochentag => {

                let dieserWochentag = document.createElement("div");

                dieserWochentag.innerHTML = " <p onclick='addWochentag(" + wochentag.ID + ")' id='" + wochentag.ID + "'class='wochentag' >" + wochentag.wochentag + "</p> ";

                dieserWochentag.style = 'background-color: #eaf4fe; border: ; border-radius: 10px; font-weight: bold; padding: 0px 15px 0px 15px; margin-top: 20px; margin-right: 30px; cursor: pointer;';
                document.getElementById("wochentage").appendChild(dieserWochentag);
                
            });
           
        })
}




function addWochentag(id) {

    // Prüfe, ob Wochentag bereits im Array ist 
    if (wochentage.indexOf(id) == -1) {

        document.getElementById(id).style = "Color: #56A4FE;"

        wochentage.push(id);

    } else {

        document.getElementById(id).style = "Color: black;"

        wochentage.splice(wochentage.indexOf(id), 1);

    }

}

function holeWochentageVonInserat(id) {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('inseratID', id);

    fetch("https://528400-3.web.fhgr.ch/php/holeWochentageVonInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {

            if (data) {

                data.forEach(wochentag => {

                    // färbe den Wochentag ein
                    document.getElementById(wochentag.ID).style = "color: #56A4FE;";

                    // pushe den Wochentag in die globale Variable
                    wochentage.push(parseInt(wochentag.ID));

                });

            }

        })

}


function loescheInserat() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);
    formData.append('inseratID', inseratID);

    fetch("https://528400-3.web.fhgr.ch/php/loescheInserat.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {

                return res.text();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {

            document.querySelector('#nachricht').innerHTML = data;

            document.querySelector('#button-veroeffentlichen').classList.remove("hidden");
            document.querySelector('#button-aktualisieren').classList.add("hidden");
            document.querySelector('#button-loeschen').classList.add("hidden");

            
            document.querySelector('#thema').value = "";
            document.querySelector('#kurzbeschrieb').value = "";
            document.querySelector('#zeit').value = "";
            document.querySelector('#preis').value = "";
            document.querySelector('#kanton').value = "";
            document.querySelector('#suche').checked = false;
            document.querySelector('#biete_an').checked = false;

            document.querySelector('.wochentag').style = "Color: black;"; //funktioniert nicht, obwohl alle Klasse haben (nur 1. Wochentag wird gelöscht)
            
            document.getElementById('1').style = "Color: black;";
            document.getElementById('2').style = "Color: black;";
            document.getElementById('3').style = "Color: black;";
            document.getElementById('4').style = "Color: black;";
            document.getElementById('5').style = "Color: black;";
            document.getElementById('6').style = "Color: black;";
            document.getElementById('7').style = "Color: black;";

        
          
            // Variablen leeren
            wochentage = [];
            inseratID = "";



        })
};




// ABMELDEN
// ABMELDEN

function logout(){

    localStorage.clear();   
    window.location.href = "/index.html";

}




