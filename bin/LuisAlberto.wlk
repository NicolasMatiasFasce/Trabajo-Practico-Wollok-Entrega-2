import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*
import Albumes.*
import Musico.*


object luisAlberto inherits Musico {
	var grupo = solista
	var guitarra = fender
	
	method habilidad() = return 100.min(8 * guitarra.valor())
	
	method ejecutaBienUnaCancion(cancion) = true
	
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.esDespuesDeSeptiembreDel17()){
			return 1200
		}else{
			return 1000
		}
	}
	method esSolista() = grupo.esSolista()
	method dejarGrupo(){
		grupo.eliminarDelGrupo(self)
		self.entrarAUnGrupo(solista)
	}
	method entrarAUnGrupo(otroGrupo){
		grupo = otroGrupo
		otroGrupo.agregarAlGrupo(self)
	}
	method guitarra(nuevaGuitarra){
		guitarra = nuevaGuitarra
	}
	method maltratarSuGuitarra(){
		guitarra.malTratar()
	}
}
