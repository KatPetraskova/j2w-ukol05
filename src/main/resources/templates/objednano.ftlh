[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace odeslána</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container my-5">
    <h1 class="mb-4">Registrace odeslána</h1>

    <p>Děkujeme za registraci na letní dětský tábor.</p>

    <div class="mb-3 row">
        <label class="col-sm-3 col-form-label">Turnus:</label>
        <div class="col-sm-9">
            <span class="form-control-plaintext">${formular.turnus!}</span>
        </div>
    </div>

    <div class="mb-3 row">
        <label class="col-sm-3 col-form-label">Jméno:</label>
        <div class="col-sm-9">
            <span class="form-control-plaintext">${formular.jmeno!}</span>
        </div>
    </div>

    <div class="mb-3 row">
        <label class="col-sm-3 col-form-label">Příjmení:</label>
        <div class="col-sm-9">
            <span class="form-control-plaintext">${formular.prijmeni!}</span>
        </div>
    </div>

    <div class="mb-3 row">
        <label class="col-sm-3 col-form-label">Datum narození:</label>
        <div class="col-sm-9">
            <span class="form-control-plaintext">
                ${datumNarozeniString!}
            </span>
        </div>
    </div>

    <div class="mb-3 row">
        <label class="col-sm-3 col-form-label">Pohlaví:</label>
        <div class="col-sm-9">
            <span class="form-control-plaintext">
                [#if formular.pohlavi == "1"]Dívka
                [#elseif formular.pohlavi == "2"]Chlapec
                [/#if]
            </span>
        </div>
    </div>

    <div class="mb-3 row">
        <label class="col-sm-3 col-form-label">Telefon:</label>
        <div class="col-sm-9">
            <span class="form-control-plaintext">${formular.phone!}</span>
        </div>
    </div>

    <div class="mb-3 row">
        <div class="col-sm-12">
            <p>Potvrzení bylo odesláno na e-mail: <strong>${email!""}</strong></p>
        </div>
    </div>

    <p>Těšíme se na vás!</p>

    <a href="/" class="btn btn-secondary mt-3">Zpět na formulář</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
