object knightRider {
    const property peso = 500
    const property peligrosidad = 10
}

object bumblebee{
    const property peso = 800
    var property estaEnAuto = false

    method transformar(){ 
        estaEnAuto = !estaEnAuto
    } 

    method peligrosidad() {
        if (estaEnAuto){
            return 15
        }
        else{
            return 30
        }
    }}

object paqueteDeLadrillos{
    var property cantLadrillos = 0
    method peso() = cantLadrillos * 2

    method peligrosidad() = 2

    method apilarLadrillos(nroLadrillos){
        cantLadrillos = cantLadrillos + nroLadrillos
    }

}
object arenaAGranel{
    var property peligrosidad = 1
    var property peso = 0

}
object bateriaAntiaerea{
    var property tieneMisiles = false

    method peligrosidad() = if (tieneMisiles) 100 else 0

    method peso() = if (self.tieneMisiles()) 800 else 200
    method cargarMisiles(){
        tieneMisiles = !tieneMisiles
    }
    }

object contenedorPortuario{
    const property cosasDentro = [] 
    method peso() = cosasDentro.sum({c => c.peso()}) + 100

    method añadirCosa(unaCosa) = cosasDentro.add(unaCosa)
    method quitarCosa(unaCosa) = cosasDentro.remove(unaCosa)
    
    method peligrosidad() {
        if (!cosasDentro.isEmpty()){

            var cosaMasPeligrosa = cosasDentro.max({c => c.peligrosidad()})
            return cosaMasPeligrosa.peligrosidad()}

        else{
            return 0
    }}
}

object residuos{
    var property peso = 30
    var property peligrosidad = 1
}

object embalaje{

    var cosaEnvuelta = 0

    method peligrosidad() = cosaEnvuelta.peligrosidad() / 2
    method peso(){
        var peso = 0

        if (cosaEnvuelta == 0){
            peso = 0}

        else{
            peso = cosaEnvuelta.peso()
        }

        return peso
    }

    method envolver(unaCosa){
        cosaEnvuelta = unaCosa}

    
  
}