import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*


object solista {
	
	var integrantes = #{}
	var nombre = "Solista"
	
	method eliminarDelGrupo(integrante){
		integrantes.remove(integrante)
	}
	
	method agregarAlGrupo(integrante){
		integrantes.add(integrante)
	}
	
	method esSolista() = true
	
}
