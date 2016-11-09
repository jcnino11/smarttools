package co.edu.uniandes.util;

/**
 * Clase que permite tener utilidades para manejo de cadenas
 * @author jhon
 *
 */
public class StringUtil {

	
	public static String nameWithoutSpace(String file) {
		
		String[] array = file.split(" ");
		String newString = "";
		
		for (int i = 0; i < array.length; i++) {
			newString.concat(array[i].concat("\\"));
		}
		
		return newString;
		
	} 
	
}
