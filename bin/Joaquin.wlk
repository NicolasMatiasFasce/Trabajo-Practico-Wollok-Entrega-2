import Cancion.*
import Fender.*
import Gibson.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*

object joaquin {
	var grupo = pimpinela
	var habilidad = 20
	
	method habilidad(){
		if(!self.esSolista()){
			return habilidad + 5
		}else{
			return habilidad
		}
	}
	method esSolista() = grupo.esSolista()
	method ejecutaBienUnaCancion(cancion) = cancion.duracion() > 300
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.solista()){
			return 100
		}else{
			return 50
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
