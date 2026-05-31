object camion {
    const cosasCargadas = []
    const tara = 1000

    method pesoTotal() = cosasCargadas.sum({p => p.peso()}) + tara

    method peligrosidadTotal() = cosasCargadas.sum({p => p.peligrosidad()})

    method ningunObjetoSupera_Peligrosidad(nivelPeligrosidad) = self.peligrosidadTotal() > nivelPeligrosidad

    method cargarCosa(unaCosa) = cosasCargadas.add(unaCosa)

    method descargarCosa(unaCosa) = cosasCargadas.remove(unaCosa)

    method pesosCosasCargadasEsPar() = cosasCargadas.all({ c => c.peso().even()})

    method algunaCosaPesa(unPeso) = cosasCargadas.any({p => p.peso() == unPeso})

    method primeraCosaConPeligrosidad(unValor) = cosasCargadas.find({p => p.peligrosidad() == unValor})

    method obtenerTodasLasCosasQueSuperen(unaPeligrosidad) = cosasCargadas.filter({p => p.peligrosidad() >= unaPeligrosidad})

    method obtenerTodasLasPeligrosidadesQueSuperenCosa(unaCosa) = cosasCargadas.filter({c => c.peligrosidad() >= unaCosa.peligrosidad()})
    
    method estaExcedidoDePeso() = self.pesoTotal() > 2500


    
}