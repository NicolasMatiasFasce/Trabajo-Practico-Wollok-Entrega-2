import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Presentacion.*
import Solista.*


object pimpinela {
	
	var integrantes = #{}
	var nombre = "Pimpinela"
	
	method eliminarDelGrupo(integrante){
		integrantes.remove(integrante)
	}
	
	method agregarAlGrupo(integrante){
		integrantes.add(integrante)
	}
	
	method esSolista() = false
	
}
