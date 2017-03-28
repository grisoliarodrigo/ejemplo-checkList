package ar.edu.unsam.algo2.checkList

import org.eclipse.xtend.lib.annotations.Accessors

class Item {
	
	String descripcion
	@Accessors boolean checked = false
	
	new (String _descripcion){
		this.descripcion = _descripcion
	}
	
	def toggleChecked() {
		checked = !checked
	}
	
}