import Cancion.*
import Fender.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*


object gibson {

	var valor = 15
	
	var malTratada = false

	method valor() = valor

	method malTratar() {
		valor = 5
		malTratada = true
	}

	method estaSana() = malTratada

}
