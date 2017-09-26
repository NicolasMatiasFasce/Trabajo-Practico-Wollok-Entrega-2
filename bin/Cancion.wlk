import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*
import Albumes.*

class Cancion {
	var duracion
	var letra
	
	constructor(nuevaDuracion,nuevaLetra) {
		duracion = nuevaDuracion
		letra = nuevaLetra
	}
	
	method estaEnLaLetra(palabra) {
		return letra.toLowerCase().contains(palabra.toLowerCase())
	}
	method contenidoDeLetra(){
		return letra.length()
	}

	method cancionCorta() {
		return duracion < 300
	}
	method duracion() {
		return duracion
	}
}
