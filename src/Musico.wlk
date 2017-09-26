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
	constructor(losAlbumesPublicados){
		albumesPublicados = losAlbumesPublicados
	}
	method esMinimalista() = albumesPublicados.all {album => album.todasLasCancionesSonCortas()}
	
	method transformarAlbumACancion() = albumesPublicados.map({album => album.canciones()})
	method laCancionTieneUnaPalabra (palabra) = self.transformarAlbumACancion().filter({ cancion => cancion.estaEnLaLetra(palabra) })

}
