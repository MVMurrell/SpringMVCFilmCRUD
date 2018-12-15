package com.skilldistillery.filmquery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.filmquery.database.DatabaseAccessorObject;
import com.skilldistillery.filmquery.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private DatabaseAccessorObject dao;

//	A user can enter a Film's ID and see the details of the film in a web page. If the film is not found, they see an appropriate message.

	@RequestMapping(path="home.do")
	public String goHome() {
		return "home.html";
		
	}
		@RequestMapping(path="getFilm.do", method = RequestMethod.GET)
		public ModelAndView getFilm() {
			ModelAndView mv = new ModelAndView("getFilm");
			return mv;

	}
		@RequestMapping(path="createFilm.do", method = RequestMethod.GET)
		public ModelAndView createFilm() {
			ModelAndView mv = new ModelAndView("createFilm");
			return mv;
			
		}
		@RequestMapping(path="filmById.do", method=RequestMethod.POST)
		public ModelAndView createFilm(String id) {
			int filmId = Integer.parseInt(id);
			Film film = dao.getFilmById(filmId);
			ModelAndView mv = new ModelAndView("getFilm");
			
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
		public ModelAndView editFilm(@RequestParam("id") String id, @RequestParam("title")String title, @RequestParam("description") String description, @RequestParam("year") int year, @RequestParam("length") int length, @RequestParam("rating") String rating, @RequestParam("category") String category) {
		ModelAndView mv = new ModelAndView("editFilm");
		
		Film filmId = dao.getFilmById(Integer.parseInt(id));
		
		
		
		
			return mv;
		}
		
		
			
		}
	
