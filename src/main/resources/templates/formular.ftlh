[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <div class="container">
    <main>
        <h1>Registrace na letní dětský tábor</h1>

        <form method="post" action="/">

            <label for="turnus" class="radek">Turnus:</label>
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


             <label for="jmeno" class="radek">Jméno:</label>
             <input type="text" id="jmeno" name="jmeno" value="${formular.jmeno!}">
             [#if errors?? && errors.hasFieldErrors("jmeno")]
                <div class="error">${errors.getFieldError("jmeno").defaultMessage}</div>
             [/#if]

            <label for="prijmeni" class="radek">Příjmení:</label>
            <input type="text" id="prijmeni" name="prijmeni" value="${formular.prijmeni!}">
            [#if errors?? && errors.hasFieldErrors("prijmeni")]
               <div class="error">${errors.getFieldError("prijmeni").defaultMessage}</div>
            [/#if]

            <label for="datum" class="radek">Datum narození:</label>
            <input type="date" id="datumNarozeni" name="datumNarozeni" value="${formular.datumNarozeni?if_exists}">
            [#if errors?? && errors.hasFieldErrors("datumNarozeni")]
                <div class="error">${errors.getFieldError("datumNarozeni").defaultMessage}</div>
            [/#if]

            <label for="pohlavi" class="radek">Pohlaví:</label>
            <select id="pohlavi" name="pohlavi">
               <option value="">-- Vyberte --</option>
               <option value="1">Dívka</option>
               <option value="2">Chlapec</option>
             </select>
             [#if errors?? && errors.hasFieldErrors("pohlavi")]
               <div class="error">${errors.getFieldError("pohlavi").defaultMessage}</div>
             [/#if]

            <label for="email" class="radek">E-mail:</label>
            <input type="email" id="email" name="email" value="${formular.email!}">
            [#if errors?? && errors.hasFieldErrors("email")]
                <div class="error">${errors.getFieldError("email").defaultMessage}</div>
            [/#if]

            <label for="phone" class="radek">Telefon:</label>
            <input type="text" id="phone" name="phone" value="${formular.phone!}">
            [#if errors?? && errors.hasFieldErrors("phone")]
                <div class="error">${errors.getFieldError("phone").defaultMessage}</div>
            [/#if]

            <div class="radek controls">
                <button type="submit">Objednat</button>
            </div>

        </form>
    </main>
    </div>
</body>
</html>
