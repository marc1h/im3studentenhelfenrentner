

function registrieren (){
    let funktion = document.querySelector("input[name='funktion']:checked").value;
    let vorname = document.querySelector("#vorname").value;
    let nachname = document.querySelector("#nachname").value;
    let strasse = document.querySelector("#strasse").value;
    let plz = document.querySelector("#plz").value;
    let ort = document.querySelector("#ort").value;
    let geburtsdatum = document.querySelector("#geburtsdatum").value;
    let email = document.querySelector("#email").value;
    let password = document.querySelector("#password").value;
    let bankverbindung = document.querySelector("#bankverbindung").value;



    let formData = new FormData();
    formData.append('funktion', funktion);
    formData.append('vorname', vorname);
    formData.append('nachname', nachname);
    formData.append('strasse', strasse);
    formData.append('plz', plz);
    formData.append('ort', ort);
    formData.append('geburtsdatum', geburtsdatum);
    formData.append('email', email);
    formData.append('password', password);
    formData.append('bankverbindung', bankverbindung);

    fetch("https://528400-3.web.fhgr.ch/php/registrieren.php",
        {
            body: formData,
            method: "post",
        })

        .then((response) => {

            return response.text();

        })
        .then((data) => {

            document.querySelector('#nachricht').innerHTML = data;
            
            gotologin();


        })

}



// WEITERLEITUNG ZUM ANMELDEFENSTER
// WEITERLEITUNG ZUM ANMELDEFENSTER

function gotologin(){

  window.location.href = "/index.html";
  window.alert("Ihre Registrierung war erfolgreich. Bitte melden Sie sich an.");

}

