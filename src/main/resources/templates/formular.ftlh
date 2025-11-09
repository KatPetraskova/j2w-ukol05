[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container my-5">
    <main>
        <h1 class="mb-4">Registrace na letní dětský tábor</h1>

        <form method="post" action="/">
         <div class="mb-3">
            <label for="turnus" class="radek" class="form-label">Turnus:</label>
             <select id="turnus" name="turnus">
                <option value="">Vyberte turnus</option>
                        <option value="1">Turnus 1</option>
                        <option value="2">Turnus 2</option>
                        <option value="3">Turnus 3</option>
                        <option value="4">Turnus 4</option>
                        <option value="5">Turnus 5</option>
                        <option value="6">Turnus 6</option>
                        <option value="7">Turnus 7</option>
                        <option value="8">Turnus 8</option>
             </select>
             [#if errors?? && errors.hasFieldErrors("turnus")]
                 <div class="error">${errors.getFieldError("turnus").defaultMessage}</div>
             [/#if]
             </div>

            <div class="mb-3">
             <label for="jmeno" class="radek" class="form-label">Jméno:</label>
             <input type="text" id="jmeno" name="jmeno" value="${formular.jmeno!}">
             [#if errors?? && errors.hasFieldErrors("jmeno")]
                <div class="error">${errors.getFieldError("jmeno").defaultMessage}</div>
             [/#if]
             </div>

            <div class="mb-3">
            <label for="prijmeni" class="radek" class="form-label">Příjmení:</label>
            <input type="text" id="prijmeni" name="prijmeni" value="${formular.prijmeni!}">
            [#if errors?? && errors.hasFieldErrors("prijmeni")]
               <div class="error">${errors.getFieldError("prijmeni").defaultMessage}</div>
            [/#if]
            </div>

<div class="mb-3">
            <label for="datum" class="radek" class="form-label">Datum narození:</label>
            <input type="date" id="datumNarozeni" name="datumNarozeni" value="${datumNarozeniString!}">
            [#if errors?? && errors.hasFieldErrors("datumNarozeni")]
                <div class="error">${errors.getFieldError("datumNarozeni").defaultMessage}</div>
            [/#if]
            </div>

<div class="mb-3">
            <label for="pohlavi" class="radek" class="form-label">Pohlaví:</label>
            <select id="pohlavi" name="pohlavi">
               <option value="">-- Vyberte --</option>
               <option value="1">Dívka</option>
               <option value="2">Chlapec</option>
             </select>
             [#if errors?? && errors.hasFieldErrors("pohlavi")]
               <div class="error">${errors.getFieldError("pohlavi").defaultMessage}</div>
             [/#if]
             </div>

<div class="mb-3">
            <label for="email" class="radek" class="form-label">E-mail:</label>
            <input type="email" id="email" name="email" value="${formular.email!}">
            [#if errors?? && errors.hasFieldErrors("email")]
                <div class="error">${errors.getFieldError("email").defaultMessage}</div>
            [/#if]
            </div>

<div class="mb-3">
            <label for="phone" class="radek" class="form-label">Telefon:</label>
            <input type="text" id="phone" name="phone" value="${formular.phone!}">
            [#if errors?? && errors.hasFieldErrors("phone")]
                <div class="error">${errors.getFieldError("phone").defaultMessage}</div>
            [/#if]
            </div>

            <button type="submit" class="btn btn-primary">Objednat</button>


        </form>
    </main>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
