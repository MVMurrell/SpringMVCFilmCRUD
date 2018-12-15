package com.skilldistillery.filmquery.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.filmquery.database.DatabaseAccessorObject;
import com.skilldistillery.filmquery.entities.Actor;
import com.skilldistillery.filmquery.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private DatabaseAccessorObject dao;

//	A user can enter a Film's ID and see the details of the film in a web page. If the film is not found, they see an appropriate message.
	
	@RequestMapping(path="home.do", method=RequestMethod.GET)
	public String goHome() {
		return "home";
		
	}
		@RequestMapping(path="getFilm.do", method = RequestMethod.GET)
		public ModelAndView getFilm() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("getFilm");
			return mv;

	}
		@RequestMapping(path="createFilm.do", method = RequestMethod.GET)
		public ModelAndView createFilm() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("createFilm");
			return mv;
			
		}
		@RequestMapping(path="editFilm.do", method = RequestMethod.GET)
		public ModelAndView editFilm() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("editFilm");
			return mv;
			
		}
		@RequestMapping(path="filmById.do", method=RequestMethod.POST)
		public ModelAndView createFilm(int id) {
			Film film = dao.getFilmById(id);
			System.out.println(id);
			ModelAndView mv = new ModelAndView("getFilm");
			List<Film> films = new ArrayList<>();
			films.add(film);
			mv.addObject("film",films);
			return mv;
		}
		@RequestMapping(path="delete.do", method=RequestMethod.POST)
		public ModelAndView deleteFilm(String id) {
			int filmId = Integer.parseInt(id);
			Film film = dao.getFilmById(filmId);
			boolean filmB = dao.deleteFilm(film);
			ModelAndView mv = new ModelAndView("getFilm");
			
			if (filmB) {
				String message = "Film Deleted";
				mv.addObject("deletedFilm",message);
			}
			else {
				String message = "Delete Failed";
				mv.addObject("deletedFilm",message);
			}
			
			return mv;
		}
		@RequestMapping(path="editFilm.do" , method=RequestMethod.POST)
		public ModelAndView editFilm(@RequestParam("id") int id, @RequestParam("title")String title, @RequestParam("description") String description, @RequestParam("year") int year, @RequestParam("length") int length, @RequestParam("rating") String rating, @RequestParam("category") String category) {
		ModelAndView mv = new ModelAndView("editFilm");
		Film dummyFilm = new Film();
		dummyFilm.setId(id);
		dummyFilm.setTitle(title);
		dummyFilm.setDescription(description);
		dummyFilm.setYear(year);
		dummyFilm.setLength(length);
		dummyFilm.setRating(rating);
		dummyFilm.setRating(category);
		
		Film film = dao.editFilm(dummyFilm);
		mv.addObject("film", film );
			return mv;
		}
		@RequestMapping(path="createFilm.do" , method=RequestMethod.POST)
		public ModelAndView createFilm(@RequestParam("title")String title, @RequestParam("description") String description, @RequestParam("year") int year, @RequestParam("length") int length, @RequestParam("rating") String rating, @RequestParam("category") String category) {
			ModelAndView mv = new ModelAndView("createFilm");
			Film newFilm = new Film();
			List<Actor> cast = new ArrayList<>(dao.getActorsByFilmId(1));
			newFilm.setId(0);
			newFilm.setTitle(title);
			newFilm.setDescription(description);
			newFilm.setYear(year);
			newFilm.setLength(length);
			newFilm.setRating(rating);
			newFilm.setCategory(category);
			newFilm.setLanguage_id(1);
			newFilm.setReplacement_cost(3);
			newFilm.setRental_rate(4);
			newFilm.setRental_duration(2);
			newFilm.setSpecial_features("none");
			newFilm.setCast(cast);
			newFilm = dao.createFilm(newFilm);
			mv.addObject("film", newFilm);
			return mv;
		}
		
		@RequestMapping(path="filmByKeyword.do", method=RequestMethod.POST)
		public ModelAndView getFilmByKW(String keyword){
			List<Film> films = new ArrayList<>();
			films = dao.getFilmsByKeyword(keyword);
			ModelAndView mv = new ModelAndView("getFilm");
			mv.addObject("film",films);
			return mv;
		}
		
		
		}
	
