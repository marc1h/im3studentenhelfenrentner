

holeUser();

holeInserate(); 

function holeUser(){

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://528400-3.web.fhgr.ch/php/holeUser.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token), //btoa: damit es verschlüsselt ist

            }
        })

        .then((res) => {

            if (res.status >= 200 && res.status < 300) {
                console.log("Status 200");
                return res.json();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {

            document.querySelector("#vorname").innerHTML = data[0].vorname;
        })

}


function holeInserate(){


    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://528400-3.web.fhgr.ch/php/holeInserate.php",
        {
            body: formData,
            method: "post",
            headers: {

                'Authorization': 'Basic ' + btoa(userID + ':' + token),

            }
        })

        .then((res) => {

            // falls die Sitzung nicht abgelaufen ist, verarbeite die JSON antwort
            if (res.status >= 200 && res.status < 300) {

                return res.json();

            } else {

                alert('Ihre Sitzung ist abgelaufen. Sie werden auf die Anmelde-Seite weitergeleitet.');
                window.location = "/index.html"

            }

        })
        .then((data) => {


            InserateAnzeigen(data);


        })

}



function InserateAnzeigen(data) {

    data.forEach(inserat => {                               //Inserat gross 

        
        if (parseInt(inserat.aktion)){

            inserat.aktion = "Ich biete an ... ";  
            
                    
        let inseratContainer = document.createElement("div");
        inseratContainer.innerHTML =

            '<br><br>' +
            '<div class="inserat">' +
            '<h3 class="bietean">' + inserat.aktion + '</h3>' +
            '<h2>' + inserat.thema + '</h2>' +
            '<p>' + inserat.kurzbeschrieb + '</p> <br>' +
            '<p> Zeit: ' + inserat.zeit + '</p>' +
            '<p> Wochentage: '+ ' <span id="Inserat-' + inserat.ID + '">  </span> </p>' +
            '<p>Preisvorschlag: ' + inserat.preis + '</p> <br>' +
            '<button class="kontaktieren-bietean">' + '<a target="_blank" href="mailto:' + inserat.email + '">' + 'Inserat kontaktieren' + '</a>' + '</button> <br>' +
            '<p> 📍' + inserat.kanton + '</p>' +
            '</div> <br>';



        document.getElementById("liste-inserate").appendChild(inseratContainer);

       holeWochentageVonInserat(inserat.ID);
            

        } else {

            inserat.aktion = "Ich suche ... ";
            
                    
        let inseratContainer = document.createElement("div");
        inseratContainer.innerHTML =

            '<br><br>' +
            '<div class="inserat">' +
            '<h3 class="suche">' + inserat.aktion + '</h3>' +
            '<h2>' + inserat.thema + '</h2>' +
            '<p>' + inserat.kurzbeschrieb + '</p> <br>' +
            '<p> Zeit: ' + inserat.zeit + '</p>' +
            '<p> Wochentage: '+ ' <span id="Inserat-' + inserat.ID + '">  </span> </p>' +
            '<p>Preisvorschlag: ' + inserat.preis + '</p> <br>' +
            '<button class="kontaktieren-suche">' + '<a target="_blank" href="mailto:' + inserat.email + '">' + 'Inserat kontaktieren' + '</a>' + '</button> <br>' +
            '<p> 📍' + inserat.kanton + '</p>' +
            '</div> <br>';



        document.getElementById("liste-inserate").appendChild(inseratContainer);

       holeWochentageVonInserat(inserat.ID);

        }



    });

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

            console.log(data);

            if (data.length > 0) {

                data.forEach(element => {

                    // füge die Wochnetage ins Dokument ein 
                    // (ID, welche in der Funktion InserateAnzeigen dynamisch vergeben wird)
                    document.getElementById("Inserat-" + id).innerHTML += element.wochentag + ' ';

                });

            }

        })

}





// ABMELDEN
// ABMELDEN

function logout(){
    console.log("ausgeführt aus Logout");
    localStorage.clear();   
    window.location.href = "/index.html";

}






