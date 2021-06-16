import Elementos.*

class Plagas {
	var property poblacion =0
	var property plagasCirculando =[ ]
	method  transmiteEnfermedades() = poblacion >= 10
	method efectoAtaquePlaga(elemento){
		poblacion = poblacion  * 1.1 
		elemento.ataqueDePlaga(self)
	}
}

class PlagaCucarachas inherits Plagas{
	var property  pesoPromedio = 0
	method nivelDanio() = poblacion / 2
	override method  transmiteEnfermedades() = super() and pesoPromedio >= 10
	override method efectoAtaquePlaga(elemento) {
		super(elemento) 
		pesoPromedio += 2
	}
}
class PlagaMosquitos inherits Plagas{
		method nivelDanio() = poblacion
	override method  transmiteEnfermedades() = super()  and  poblacion % 3 == 0 
}

class PlagaPulgas inherits Plagas{
	method nivelDanio() = poblacion * 2
}

class PlagaGarrapatas inherits Plagas{	
	method nivelDanio() = poblacion * 2
	override method efectoAtaquePlaga(elemento) {
		poblacion = poblacion  * 1.2
		elemento.ataqueDePlaga(self)
		}
}
