object camion {
    const cosasCargadas = []
    const tara = 1000

    method pesoTotal() = cosasCargadas.sum({p => p.peso()}) + tara


    
    method peso(){
        return tara
    }

    method cargarCosa(unaCosa) = cosasCargadas.add(unaCosa)

    method descargarCosa(unaCosa) = cosasCargadas.remove(unaCosa)

    method pesosCosasCargadasEsPar() = cosasCargadas.all({ c => c.peso().even()})

    method algunaCosaPesa(unPeso) = cosasCargadas.any({p => p.peso() == unPeso})

    method primeraCosaConPeligrosidad(unValor) = cosasCargadas.find({p => p.peligrosidad() == unValor})

    method obtenerTodasLasCosasQueSuperen(unaPeligrosidad) = cosasCargadas.filter({p => p.peligrosidad() >= unaPeligrosidad})

    method obtenerTodasLasPeligrosidadesQueSuperenCosa(unaCosa) = cosasCargadas.filter({c => c.peligrosidad() >= unaCosa.peligrosidad()})

    method estaExcedidoDePeso(){ //TODO! IMPLEMENTAR CONSIGNAS AL README.MD
        
    }


    
}