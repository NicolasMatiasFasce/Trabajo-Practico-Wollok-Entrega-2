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

class Musico {
	var albumesPublicados = #{}
	var habilidad
	var grupo
	constructor(losAlbumesPublicados,laHabilidad,grupoOSolista){
		albumesPublicados = losAlbumesPublicados
		habilidad = laHabilidad
		grupo = grupoOSolista
	}
	method esMinimalista() = albumesPublicados.all {album => album.todasLasCancionesSonCortas()}
	
	method transformarAlbumACancion() = albumesPublicados.map({album => album.canciones()})
	method laCancionTieneUnaPalabra (palabra) = self.transformarAlbumACancion().filter({ cancion => cancion.estaEnLaLetra(palabra) })
	method habilidad() = habilidad
	method esSolista() = grupo.esSolista()
	method dejarGrupo(){
		grupo.eliminarDelGrupo(self)
		self.entrarAUnGrupo(solista)
	}
	method entrarAUnGrupo(otroGrupo){
		grupo = otroGrupo
		otroGrupo.agregarAlGrupo(self)
	}
}
