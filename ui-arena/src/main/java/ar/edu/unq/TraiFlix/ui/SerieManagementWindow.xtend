package ar.edu.unq.TraiFlix.ui

import org.uqbar.arena.windows.Window
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Selector
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import ar.edu.unq.TraiFlix.appModel.SerieManagementAppModel
import org.uqbar.arena.widgets.List
import org.uqbar.arena.windows.ErrorsPanel
import ar.edu.unq.TraiFlix.models.Episode
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.Button
import ar.edu.unq.TraiFlix.models.Content

class SerieManagementWindow extends Window<SerieManagementAppModel> {
	
	new( WindowOwner owner, SerieManagementAppModel model ) {
		super(owner, model)
	}
	
	override createContents(Panel mainPanel) {
		
		this.title = "TraiFlix - Administrar Series [EN CONSTRUCCION]"
		mainPanel.layout = new VerticalLayout		
				
		// Build general information panel...
		createGeneralInfoPanel( mainPanel )
		
		var centralPanel = new Panel(mainPanel)
		centralPanel.layout = new HorizontalLayout
		
		// Build categories panel...		
		createCategoriesPanel(centralPanel)
		
		// Build episodes panel...
		createEpisodesPanel(centralPanel)

		// Build related content panel...
		createRelatedContentPanel(mainPanel)
		
		new ErrorsPanel( mainPanel, "" ) 
			
	}
	

	private def void createGeneralInfoPanel(Panel parentPanel) {
		
		new Panel(parentPanel) => [
			layout = new HorizontalLayout
		
			// Title
			new Label(it) => [			
				text = "Titulo" 
			]
			new TextBox(it) => [
				value <=> "serie.title"
				width = 170
			]			
				
			// Classificacion
			new Label(it) => [
				text = "Clasificacion" 
			]
			new Selector(it) => [
				items <=> "availableClassifications"
				value <=> "serie.clasification"
			]
			
			// Creators
			new Label(it) => [			
				text = "Creadores" 			
			]
			new TextBox(it) => [
				value <=> "serie.creators"
				width = 170
			]
		]
	}
	
	
	private def void createCategoriesPanel(Panel parentPanel) {
				
		new Panel(parentPanel) => [
			layout = new VerticalLayout

			new Label(it) => [			
				text = "Categorias" 
				alignLeft
			]
			new List(it) => [
				items <=> "availableCategories"				
			]
		]
		
	}
	

	def createEpisodesPanel(Panel parentPanel) {
		
		new Panel(parentPanel) => [
			layout = new HorizontalLayout
					
			new Label(it) => [			
				text = "Capitulos"
				alignLeft
			]
			
			// Episodes grid
			new Table<Episode>(it, typeof(Episode))=> [				
				items <=> "serie.episodes"
						
				new Column<Episode>(it) => [
				    title = "Temporada"
				    fixedSize = 200				    
				    bindContentsToProperty("season")
				]
				new Column<Episode>(it) => [
				    title = "Capitulo"
				    fixedSize = 300
				    bindContentsToProperty("title")
				]
			]
			
			// Add/remove episode button panel...
			new Panel(it) => [
				layout = new VerticalLayout
				new Button(it) => [ 
					caption = "Agregar"
					alignCenter
					onClick [ | onAddEpisode() ]
				]
				new Button(it) => [ 
					caption = "Quitar"
					alignCenter
					onClick [ | onRemoveEpisode() ]
				]
			]
		]
		
	}
	
	
	def createRelatedContentPanel(Panel parentPanel) {
		
		new Panel(parentPanel) => [
			layout = new VerticalLayout
					
			new Label(it) => [			
				text = "Contenido relacionado"
				alignLeft
			]
			
			new Panel(it) => [
				layout = new HorizontalLayout
			
				// Episodes grid
				new Table<Content>(it, typeof(Content))=> [				
					items <=> "availableContents"
							
					new Column<Content>(it) => [
					    title = "Titulo"
					    fixedSize = 270				    
					    bindContentsToProperty("title")
					]
					new Column<Content>(it) => [
					    title = "Contenido"
					    fixedSize = 270
					    bindContentsToProperty("title")
					]
				]
				
				// Add/remove episode button panel...
				new Panel(it) => [
					layout = new VerticalLayout
					new Button(it) => [ 
						caption = "Agregar"
						alignCenter
						onClick [ | onAddRelatedContent() ]
					]
					new Button(it) => [ 
						caption = "Quitar"
						alignCenter
						onClick [ | onRemoveRelatedContent() ]
					]
				]
			]
			
			// Cancel/Ok button panel...			
			new Panel(it) => [
				layout = new HorizontalLayout
				new Button(it) => [ 
					caption = "Cancelar"
					alignCenter
					width = 200
					onClick [ | onCancel() ]
				]
				new Button(it) => [ 
					caption = "Aceptar"
					alignCenter
					width = 200
					onClick [ | onOk() ]
				]				
			]			
		]
	}
	
	
	private def onAddEpisode() {
		/* TO-DO:
		 * - instanciar el appModel para el caso de uso "crear un capitulo"
		 * 		ese appModel contiene un nuevo Episode y el resto de los datos necesarios para el caso de uso
		 * - instanciar la ventana de administracion de capitulos y pasarle su appModel
		 * - si se sale de la ventana con onAccept, llamar a mi modelObject.serie.addEpisode() con el capitulo creado
		 */
	}
	
	
	private def onRemoveEpisode() {		
	}
	
	
	private def onAddRelatedContent() {	
		/* TO-DO:
		 * - instanciar el appModel para el caso de uso "seleccionar un contenido relacionado (pelicula, serie, capitulo)"
		 * 		ese appModel contiene una lista de todos los contenidos disponibles en Traiflix, excepto la serie que se esta administrando
		 * - instanciar la ventana de seleccion de contenido y pasarle su appModel
		 * - si se sale de la ventana con onAccept, llamar a mi modelObject.serie.addRelated() con el contenido elegido
		 */	
	}
	
	
	private def onRemoveRelatedContent() {		
	}
	
	
	private def onCancel() {		
	}
	
	
	private def onOk() {		
	}
	
	
}