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


class Lucia {
	var grupo
	var habilidad
	var albumesPublicados = #{}
	var palabraClave
	
	constructor(unaHabilidad,solitaOEnGrupo,losAlbumesPublicados,laPalabraClave){
		habilidad = unaHabilidad
		grupo = solitaOEnGrupo
		albumesPublicados = losAlbumesPublicados
		palabraClave = laPalabraClave
	}
	
	method habilidad(){
		if(!self.esSolista()){
			return habilidad -20
		}else{
			return habilidad
		}
	}
	method esSolista() = grupo.esSolista()
	method ejecutaBienUnaCancion(cancion) = cancion.estaEnLaLetra(palabraClave)
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.esEnUnLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	method dejarGrupo(){
		grupo.eliminarDelGrupo(self)
		self.entrarAUnGrupo(solista)
	}
	method entrarAUnGrupo(otroGrupo){
		grupo = otroGrupo
		otroGrupo.agregarAlGrupo(self)
	}
}
