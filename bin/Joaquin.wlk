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
import Albumes.*
import Musico.*


class Joaquin inherits Musico {
    var grupo
    var habilidad
    constructor(grupoDelMusico, habilidadDelMusico){
        grupo = grupoDelMusico
		habilidad = habilidadDelMusico
    }
    method habilidad(){
        if(!self.esSolista()){
            return habilidad + 5
        }else{
            return habilidad
        }
    }
    method esSolista() = grupo.esSolista()
    method ejecutaBienUnaCancion(cancion) = cancion.cancionCorta()
    method costoDeUnaPresentacion(presentacion, costoSolista, costoEnGrupo){
        if(presentacion.solista()){
            return costoSolista
        }else{
            return costoEnGrupo
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