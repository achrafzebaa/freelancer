package tn.essat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import tn.essat.model.Project;
import tn.essat.model.Proposition;
import tn.essat.service.ProjectService;
import tn.essat.service.PropositionService;

import java.util.List;

@Controller
public class PropositionController {

    @Autowired
    private PropositionService propositionService;
    @Autowired
    private ProjectService projServ;
    
    @GetMapping("/listProposition")
    public String showPropositions(Model model) {
        List<Proposition> propositions = propositionService.findAll();
        model.addAttribute("propositions", propositions);
        return "proposition-list"; 
    }

    @GetMapping("/addPropositionForm/{id}")
    public String showAddPropositionForm(@PathVariable("id") int id,Model m) {
    	Project proj = projServ.getProjectById(id);
    	m.addAttribute("proj", proj);
    	m.addAttribute("proposition", new Proposition());
        return "proposition"; 
    }

    @PostMapping("/addPropositionForm/{id}")
    public String createProposition(@PathVariable("id") int id,@ModelAttribute Proposition proposition, Model model) {
        try {
        	Project p = projServ.getProjectById(id);
        	proposition.setProj(p);
            propositionService.save(proposition);
            List<Proposition> propositions = propositionService.findAll();
            model.addAttribute("propositions", propositions);
            model.addAttribute("message", "Proposition deposé avec succes");
            return "proposition-list"; 
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "erreur.");
            return "error";
        }
    }
}
