[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace odeslána.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<div class="container">
<main>
    <h1>Registrace odeslána</h1>

    <p>Děkujeme za registraci na letní dětský tábor.</p>

    <div class="radek">
        <label>Turnus:</label>
    <span>${formular.turnus!}</span>
    </div>

    <div class="radek">
        <label>Jméno:</label>
        <span>${formular.jmeno!}</span>
    </div>

    <div class="radek">
         <label>Příjmení:</label>
         <span>${formular.prijmeni!}</span>
    </div>

    <div class="radek">
        <label>Datum narození:</label>
        <span>${formular.datumNarozeni?if_exists?string("dd.MM.yyyy")}</span>
    </div>

    <div class="radek">
         <label>Pohlaví:</label>
         <span>
             [#if formular.pohlavi == "1"]Dívka
             [#elseif formular.pohlavi == "2"]Chlapec
             [/#if]
         </span>
    </div>

    <div class="radek">
         <label>Telefon:</label>
         <span>${formular.phone!}</span>
    </div>

    <div class="radek">
         <p>Potvrzení bylo odesláno na e-mail: <strong>${email}</strong></p>
    </div>


    <p>Těšíme se na vás!</p>

    <p><a href="/">Zpět na formulář</a></p>
</main>
</body>
</html>