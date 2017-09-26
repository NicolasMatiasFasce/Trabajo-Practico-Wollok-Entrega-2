import Lucia.*
import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*


class Albumes {
	var titulo
	var canciones = #{}
	var fechaDeLanzamiento
	var unidadesALaVenta
	var unidadesVendidas
	
	constructor(unTitulo,lasCanciones,laFechaDeLanzamiento,lasUnidadesALaVenta,lasUnidadesVendidas){
		titulo = unTitulo
		canciones = lasCanciones
		fechaDeLanzamiento = laFechaDeLanzamiento
		unidadesALaVenta = lasUnidadesALaVenta
		unidadesVendidas = lasUnidadesVendidas
	}
	method albumMinimalista() = canciones.all({cancion => cancion.cancionCorta()})
	method duracionDelAlbum() = canciones.sum {cancion => cancion.duracion()}
	method cancionMasLarga() = canciones.max {cancion => cancion.contenidoDeLetra()}
	method canciones() = canciones

}
