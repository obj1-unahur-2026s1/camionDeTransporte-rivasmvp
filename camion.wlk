import cosas.*
object camion {
    const cosasCargadas = []
    const tara = 1000


    method cosaMasPesadaCargada() = cosasCargadas.max({p => p.peso()})


    method unaCosaPesaEntre_Y_(min , max){
        return cosasCargadas.any({c => c.peso().between(min, max)})
            

    }


    method pesoTotal() = cosasCargadas.sum({p => p.peso()}) + tara

    method peligrosidadTotal() = cosasCargadas.sum({p => p.peligrosidad()})

    method ningunObjetoSupera_Peligrosidad(nivelPeligrosidad) = cosasCargadas.all({e => e.peligrosidad() < nivelPeligrosidad})

    method cargarCosa(unaCosa) = cosasCargadas.add(unaCosa)

    method descargarCosa(unaCosa) = cosasCargadas.remove(unaCosa)

    method pesosCosasCargadasEsPar() = cosasCargadas.all({ c => c.peso().even()})

    method algunaCosaPesa(unPeso) = cosasCargadas.any({p => p.peso() == unPeso})

    method primeraCosaConPeligrosidad(unValor) = cosasCargadas.find({p => p.peligrosidad() == unValor})

    method obtenerTodasLasCosasQueSuperen(unaPeligrosidad) = cosasCargadas.filter({p => p.peligrosidad() >= unaPeligrosidad})

    method obtenerTodasLasPeligrosidadesQueSuperenCosa(unaCosa) = cosasCargadas.filter({c => c.peligrosidad() >= unaCosa.peligrosidad()})
    
    method estaExcedidoDePeso() = self.pesoTotal() > 2500


    
}