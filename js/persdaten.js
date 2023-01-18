var userID;


holeUser();


function holeUser() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');

    let formData = new FormData();
    formData.append('userID', userID);

    fetch("https://528400-3.web.fhgr.ch/php/holePersDaten.php",
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

            if (data.length == 0) {


            } else {

                userID = data[0].ID;

                document.querySelector('#vorname').value = data[0].vorname;
                document.querySelector('#nachname').value = data[0].nachname;
                document.querySelector('#strasse').value = data[0].strasse;
                document.querySelector('#plz').value = data[0].plz;
                document.querySelector('#ort').value = data[0].ort;
                document.querySelector('#geburtsdatum').value = data[0].geburtsdatum;
                document.querySelector('#bankverbindung').value = data[0].bankverbindung;  

                if (data[0].funktion == 1) {

                    document.querySelector('#rentner').checked = true;

                } else {

                    document.querySelector('#student').checked = true;

                }



            }
        })
}



function aktualisierePersDaten() {

    let userID = localStorage.getItem('userID');
    let token = localStorage.getItem('token');


    let funktion = document.querySelector('input[name="funktion"]:checked').value;
    let vorname = document.querySelector('#vorname').value;
    let nachname = document.querySelector('#nachname').value;
    let strasse = document.querySelector('#strasse').value;
    let plz = document.querySelector('#plz').value;
    let ort = document.querySelector('#ort').value;
    let geburtsdatum = document.querySelector('#geburtsdatum').value;
    let bankverbindung = document.querySelector('#bankverbindung').value;


    let formData = new FormData();
    formData.append('funktion', funktion);
    formData.append('userID', userID);
    formData.append('vorname', vorname);
    formData.append('nachname', nachname);
    formData.append('strasse', strasse);
    formData.append('plz', plz);
    formData.append('ort', ort);
    formData.append('geburtsdatum', geburtsdatum);
    formData.append('bankverbindung', bankverbindung);





    fetch("https://528400-3.web.fhgr.ch/php/aktualisierePersDaten.php",
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