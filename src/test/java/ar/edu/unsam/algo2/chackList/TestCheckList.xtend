package ar.edu.unsam.algo2.chackList

import ar.edu.unsam.algo2.checkList.CheckList
import ar.edu.unsam.algo2.checkList.Item
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class TestCheckList {
	
	CheckList miLista
	Item yerba
	Item mayonesa
	
	@Before
	def void initialize() {
		miLista = new CheckList("Compras")
		yerba = new Item("Yerba")
		mayonesa = new Item("Mayonesa")
		
		miLista.agregarItem(yerba)
		miLista.agregarItem(mayonesa)
	}

	@Test
	def void testListaPendiente() {
		Assert.assertTrue(miLista.estaPendiente())
	}
	
	@Test
	def void testListaEnProgreso() {
		yerba.toggleChecked()
		Assert.assertTrue(miLista.estaEnProgreso())
	}
	
	@Test
	def void testListaCompleto() {
		yerba.toggleChecked()
		mayonesa.toggleChecked()
		
		Assert.assertTrue(miLista.estaCompleto())
	}
	
	@Test
	def void testListaNoEstaCompleto() {
		Assert.assertFalse(miLista.estaCompleto())
	}
	
}