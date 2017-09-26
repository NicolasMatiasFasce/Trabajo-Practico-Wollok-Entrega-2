import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Solista.*
import Albumes.*

class Presentacion {
	var fecha = new Date()
	var lugar
	var musicos = #{}
	
	constructor(anio,mes,dia,lugarDelEvento,musicosQueVanATocar){
		fecha.initialize(dia, mes, anio)
		lugar = lugarDelEvento
		musicos = musicosQueVanATocar
	}
	method fecha() = fecha
	method lugar() = lugar
	method musicos() = musicos
	method costoDeLaPresentacion() = musicos.sum({ musico => musico.costoDeUnaPresentacion(self) })
	method solista() = musicos.size() == 1
	method esEnUnLugarConcurrido() = lugar.esConcurrido(fecha)
	method esDespuesDeSeptiembreDel17() = (fecha.year() >= 2018) || ((fecha.year() == 2017) && (fecha.month() > 9))

}
