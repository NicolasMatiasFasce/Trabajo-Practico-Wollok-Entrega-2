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
		return letra.contains(palabra)
	}

	method cancionCorta() {
		return duracion < 300
	}
}
