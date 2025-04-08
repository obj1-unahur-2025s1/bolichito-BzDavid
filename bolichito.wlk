import bolichito-BzDavid.personas.*
import bolichito-BzDavid.objetos.*

object bolichito {
    var objetoEnVidriera = 'No hay objeto'

    var objetoEnMostrador = 'No hay objeto'

    method objetoEnVidriera() = objetoEnVidriera

    method objetoEnMostrador() = objetoEnMostrador

    method cambiarObjetoEnVidriera(objeto){
        objetoEnVidriera = objeto
    }

    method cambiarObjetoEnMostrador(objeto){
        objetoEnMostrador = objeto
    }

    method esBrillante() = objetoEnMostrador.material().esBrillante() and 
        objetoEnVidriera.material().esBrillante()
    
    method esMonocromatico() = objetoEnMostrador.color() == objetoEnVidriera.color()

    method estaEquilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()

    method tieneObjetoDelColor_(colorDelObjeto) = 
        objetoEnMostrador.color() == colorDelObjeto or 
        objetoEnVidriera.color() == colorDelObjeto

    method sePuedeMejorar() = not self.estaEquilibrado() or 
        self.esMonocromatico()
    
    method puedeOfrecerUnObjetoA_(personaAOfrecer) = 
        personaAOfrecer.leGusta(objetoEnMostrador) or 
        personaAOfrecer.leGusta(objetoEnVidriera) 
}