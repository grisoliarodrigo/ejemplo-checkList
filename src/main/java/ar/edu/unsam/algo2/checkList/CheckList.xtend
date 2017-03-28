package ar.edu.unsam.algo2.checkList

import java.util.List

class CheckList {
	
	//A mi me gustaban los comentarios
	String descripcion
	List<Item> items = newArrayList
	
	new (String _decripcion){
		this.descripcion = _decripcion
	}
	
	def agregarItem(Item item) {
		items.add(item)
	}
	
	//Está completo
	def estaCompleto() {
		items.forall [ item | item.checked ]
	}
	
	//Está en progreso
	def estaEnProgreso() {
		items.exists [ item | item.checked ] && items.exists [ item | !item.checked ]
	}
	
	//Está pendiente
	def estaPendiente() {
		items.forall [ item | !item.checked ]
	}
	
	
	
}