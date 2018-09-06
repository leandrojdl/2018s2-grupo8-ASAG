package ar.edu.unq.TraiFlix.models

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Serie implements RatingableAndRecommenable{
	
	Integer id
	String title
	List<Category> categories
	Clasification clasification
	String creators
	List<RatingableAndRecommenable> relateds
	List<Episode> episodes;
	
	
	new(){
		super()
		categories = newArrayList
		relateds = newArrayList
		episodes = newArrayList
	}
	
	
	override getRating() {
		var List<Assessment> assessments = newArrayList
		var Integer sum = 0
		for (Episode epi : episodes) {
			assessments.addAll(epi.assessments)
		}
		for (Assessment ass : assessments) {
			sum = sum + ass.getValue()
		}
		if(sum != 0){
			return sum/assessments.size 
		}
		return 0
	}
	
	
	def getEpisode(Integer id){
		episodes.findFirst[
			elem | elem.id == id
		]
	}
	
	
	def addEpisode(Episode episode) {
		episodes.add(episode)
	}
	
	def quantityOfSeasonsSerie(){
		episodes.map[elem |
			elem.season
		].max
	}
	
	def quantityOfEpisodesSereie(){
		episodes.size
	}
	
	def serieHasCategory(Category category){
		categories.contains(Category)
	}
	
	def clasificationIs(Clasification clasification1){
		clasification == clasification1
	}
	
	override recommend() {
		this
	}
	
}
