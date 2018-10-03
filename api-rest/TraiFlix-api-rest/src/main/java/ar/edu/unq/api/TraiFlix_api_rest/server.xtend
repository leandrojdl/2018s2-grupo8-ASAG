package ar.edu.unq.api.TraiFlix_api_rest

import ar.edu.unq.TraiFlix.models.TraiFlix
import ar.edu.unq.TraiFlix.models.id.MovieId
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.xtrest.api.annotation.Body
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Delete
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.api.annotation.Post
import org.uqbar.xtrest.http.ContentType
import org.uqbar.xtrest.json.JSONUtils
import org.uqbar.xtrest.api.annotation.Put

/**
 * Servidor RESTful implementado con XtRest.
 */
@Controller
class RestfulServer {

	extension JSONUtils = new JSONUtils

	TraiFlix traiFlixsSystem

	new(TraiFlix traiFlixsSystem) {
		this.traiFlixsSystem = traiFlixsSystem
	}

	//GENERAL

	
	/**
	 *  Determinar si es un usuario válido o no
	 * 
	 * 		Parametros
	 * 		 	● Body [ {username​: nombre del usuario a autenticarse}]
	 * 		
	 *		Responses:
	 *			● 204 No content  
	 * 			● 200 OK
	 * 			● 401 Unauthorized
	 */
	@Post("/auth")
	def autentification(@Body String body) {
		//TODO FIXME modelar!!
		return ok()
	}
	
	/**
	 * Retorna el listado de las categorías de la plataforma
	 * 
	 * 		Responses:
	 *			● 200 OK
	 * 
	 */
	@Get("/categories")
	def getCategories() {
		
		
		response.contentType = ContentType.APPLICATION_JSON

		return ok(traiFlixsSystem.categories.toJson)
		
	}
	
	/**
	 * Retorna el listado de los contenidos que tengan la categoría {category}. 
	 * En los contenidos puede haber Películas y Series, pero no Capítulos de series.
	 * 
	 * 		Responses:
	 *			● 200 OK
	 * 
	 */
	@Get("/content/:category")
	def getCategoriesContents() {
		
		response.contentType = ContentType.APPLICATION_JSON
		
		return ok()
	}
	
	/**
	 * Retorna el listado del contenido favorito del usuario. En los contenidos puede
	 * haber Películas y Series, pero no Capítulos de series.
	 * 
	 * 		Responses:
	 *			● 200 OK
	 * 
	 * 
	 */
	@Get("/:username/favs")
	def getContentsUserFavs() {
		//TODO FIXME modelar!!
		return ok()
	}
	
	/**
	 * Que retorne la información de la película con id {id} para el usuario {username}. 
	 * Se debe añadir también cierta información relevante para el usuario: si vió la película 
	 * y también la lista de amigos que se la recomendaron
	 * 
	 * 		Parámetros
	 *			● id​: el id de la película
	 *			● username​: nombre del usuario
	 * 
	 * 		Responses:
	 *			● 200 OK
	 * 			● 404 Not Found
	 * 
	 */
	@Get(":username/movie/:id")
	def getMoviesUserFavs() {
		//TODO FIXME modelar!!
		return ok()
	}
	
	/**
	 * Que retorne la información para {username} de la serie con id = {id}.
	 * 
	 * 		Parámetros
	 *			● id​: el id de la serie
	 *			● username​: nombre del usuario
	 * 
	 * 		Responses:
	 *			● 200 OK
	 * 			● 404 Not Found
	 */
	@Get("/:username/serie/:id")
	def getSeriesUserFavs() {
		//TODO FIXME modelar!!
		return ok()
	}
	
	/**
	 *  Genera una recomendación de una serie o película de un usuario a otro.
	 * 
	 * 		Parametros
	 *			● type​: Tipo del contenido. Debería aceptar sólo alguno de estos valores:
	 *				[movie, serie]
	 *			● id​: Id del contenido
	 *			● user-from​: nombre de usuario que recomienda un contenido
	 *			● user-to​: nombre de usuario al que le recomiendan un contenido
	 * 		
	 *		Responses:
	 *			● 202 Accepted 
	 *			● 200 OK
	 *			● 400 Bad Request
	 */
	@Post("/recommend/:type/:id")
	def recomended(@Body String body) {
		//TODO FIXME modelar!!
		return ok()
	}
	
	/**
	 * Que busque en todo el contenido y retorne aquellos que matchean con la búsqueda
	 * 	
	 * 		Parámetros
	 * 			● text​: Valor a buscar
	 * 		Responses
	 *			● 200 OK
	 *			● 400 Bad Request
	 * 
	 */
	@Post("/search")
	def search(@Body String body) {
		//TODO FIXME modelar!!
		return ok()
	}
	
	
	
	/**
	 * Que establezca si el usuario marcó como visto o no visto determinado contenido.
	 * 	
	 * 		Parámetros
	 * 			● type​: Tipo del contenido. Debería aceptar sólo alguno de estos valores:
	 *				[movie, serie]
	 *			● id​: Id del contenido
	 *			● value​: Valor booleano que indique si se marca como favorito o se quita de los
	 *				favoritos. Debería aceptar sólo alguno de estos valores: [true, false]
	 *			● username​: Nombre de usuario que está generando la acción
	 * 		Responses
	 *			● 202 Accepted
	 * 			● 200 OK
	 *			● 400 Bad Request
	 * 
	 */
	@Put("/:username/fav/:type/:id")
	def setWatchedUser(@Body String body) {
		//TODO FIXME modelar!!
		return ok()
	}
	
		/**
	 * Establece el rating estipulado por el usuario.
	 * 	
	 * 		Parámetros
	 *			● type​: Tipo del contenido. Debería aceptar sólo alguno de estos valores:
	 *				[movie, chapter]
	 *			● id​: Id del contenido
	 *			● stars​: Valor que represente el rating efectuado. Debería aceptar sólo alguno
	 *				de estos valores: [1, 2, 3, 4, 5]
	 *			● username​: Nombre de usuario que está generando la acción
	 * 		Responses
	 *			● 202 Accepted
	 * 			● 200 OK
	 *			● 400 Bad Request
	 * 
	 */
	@Put("/:username/rating/:type/:id")
	def setRatingUser(@Body String body) {
		//TODO FIXME modelar!!
		return ok()
	}
	
	
	
	//MOVIES

	/**
	 * Permite obtener el listado total de las peliculas
	 */
	@Get("/movies")
	def getMovies() {

		response.contentType = ContentType.APPLICATION_JSON

		return ok(this.traiFlixsSystem.movies.toJson)
	}


	/**
	 * Permite agregar un actor (con nombre)a la pelicula informada por parámetro
	 */
	@Post("/movies/:nameMovie/:nameActor")
	def addNameActorToMovie() {
		response.contentType = ContentType.APPLICATION_JSON
		try {
			val movie = this.traiFlixsSystem.searchMovie(nameMovie);
			movie.actors = movie.actors + ", " + nameActor
			return ok()
		} catch (Exception exception) {
			return badRequest(getErrorJson(exception.message + " No existe la serie con nombre: " + nameMovie))
		}
	}

	/**
	 * Permite agregar un actor a la pelicula informada por parámetro. 
	 * El actor debe ser enviado en el body del mensaje
	 */
	@Post("/movies/:movieName") 
	// http://0.0.0.0:9000/series/Breaking
	// Body [ { "name" : "as"}]
	//def agregarActor(String name) {
	def addActorToMovie(@Body String body) {
		response.contentType = ContentType.APPLICATION_JSON
		try {
			val actor = body.fromJson(Actor)

			val movie = this.traiFlixsSystem.searchMovie(movieName);
			movie.actors = movie.actors + ", " + actor.name
			return ok()
		} catch (Exception exception) {
			return badRequest(getErrorJson(exception.message + " No existe la peli con nombre: " + movieName))
				}
				
	}


	/**
     * Permite eliminar un por su id.
     * 
     * Atiende requests de la forma DELETE /series/1.
     */
    @Delete('/movies')
    def deleteSerieById(@Body String body) {
        try {
        	val id = body.fromJson(MovieId)
            this.traiFlixsSystem.deleteMovie(id)
            
            return ok()
        } catch (NumberFormatException exception) {
            return badRequest(getErrorJson("El id debe ser un número entero"))
        }
    }
    
	private def getErrorJson(String message) {
		'{ "error": "' + message + '" }'
	}

}

@Accessors
class Actor{
	String name
}
