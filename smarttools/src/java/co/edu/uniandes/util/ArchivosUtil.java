package co.edu.uniandes.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Clase que permitira tener metodos de utilidad de directorios y archivos
 * @author jhon
 *
 */
public class ArchivosUtil {
	
	
	/**
	 * Metodo que nos permite obternet los nombres de los archivos 
	 * que se encuentran en un directorio especifico
	 * @param pathDir
	 * @return List<String> de archivos que se encuentran en un directorio
	 * 			null si el directorio no existe
	 */
	public static List<String> obtenerArchivosDeDirectorio(String pathDir) {
		
		List<String> archivosDirectorio = new ArrayList<String>();
		
		File f = new File(pathDir);
		if (f.exists() && f.isDirectory()){ 
			
			File[] ficheros = f.listFiles();
			for (int x=0;x<ficheros.length;x++){
				
				archivosDirectorio.add(ficheros[x].getName());
			 
			}
			
			
		} else { 
			
			System.out.println("El directorio " + pathDir + " no existe");
			return null;
		}
		
		return archivosDirectorio;
	}
	
	
	/**
	 * Valida si existe un directorio y si no existe lo crea
	 * @param path
	 */
	public static void validateCreateDirectory(String pathDir) {
		
		File f = new File(pathDir);
		if (f.exists()){ 
			System.out.println("El directorio existe");
		} else {
			System.out.println("El directorio no existe se creara uno nuevo");
			
			try {
				if (f.mkdir()) {
					System.out.println("Se creo el directorio " + f.getAbsolutePath() + " exitosamente");
				} else {
					System.out.println("No se pudo crear el directorio " + f.getAbsolutePath());
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
