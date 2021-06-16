
class Barrio{
	var property elementos = [ ]
	method esCopado() {
		const elementosBuenos = elementos.count({ele => ele.esBueno()})
		return  elementosBuenos > (elementosBuenos - elementos.size()).abs()
		}
}

class Hogar {
	var property nivelMugre =0
	var property confort =0
	method esBueno() = nivelMugre <= confort / 2 
	method ataqueDePlaga(plaga) {
		self.nivelMugre(nivelMugre + plaga.nivelDanio())
		}
	
}
class Huerta{
	var  property capacidadProduccion = 0
	const  nivelProduccion = 15
	method esBueno() =  capacidadProduccion > nivelProduccion
	method ataqueDePlaga(plaga) {
		if (plaga.transmiteEnfermedades()) {
			self.capacidadProduccion(capacidadProduccion - plaga.nivelDanio()*0.9 +10)
		}
		else{ 
			self.capacidadProduccion(capacidadProduccion - plaga.nivelDanio()*0.9)
		}
	}
}

class Mascota{
	var property nivelSalud = 0
	method esBueno() = nivelSalud > 250
	method ataqueDePlaga(plaga) {
		if (plaga.transmiteEnfermedades()) {
			self.nivelSalud(nivelSalud - plaga.nivelDanio())
		}
	}
}

