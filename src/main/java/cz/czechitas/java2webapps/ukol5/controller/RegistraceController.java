package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("formular");
        modelAndView.addObject("formular", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("/")
    public ModelAndView form(@Valid @ModelAttribute("formular") RegistraceForm form, BindingResult bindingResult) {

        if (form.getDatumNarozeni() != null) {
            Period period = form.getDatumNarozeni().until(LocalDate.now());
            int vek = period.getYears();
            if (vek < 9 || vek > 15) {
                bindingResult.rejectValue("datumNarozeni", "vek.nespravny",
                        "Věk dítěte musí být mezi 9 a 15 lety.");
            }
        }

        if (bindingResult.hasErrors()) {
            return new ModelAndView("formular")
                    .addObject("formular", form)
                    .addObject("errors", bindingResult);
        }

        return new ModelAndView("objednano")
                .addObject("email", form.getEmail());
    }

}
