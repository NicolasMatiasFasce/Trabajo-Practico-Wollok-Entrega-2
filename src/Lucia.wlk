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


object lucia {
	var grupo = pimpinela
	var habilidad = 70
	
	method habilidad(){
		if(!self.esSolista()){
			return habilidad -20
		}else{
			return habilidad
		}
	}
	method esSolista() = grupo.esSolista()
	method ejecutaBienUnaCancion(cancion) = cancion.estaEnLaLetra("familia")
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
