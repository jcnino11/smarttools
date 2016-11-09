package com.smarttools;

import java.io.File;

public class ArchivoUtil {
	
	public static String RUTA = System.getProperty("java.io.tmpdir")+"smarttools";
	public static String SEP = File.separator;
	public static final String RUTA_CARGUES = RUTA+SEP+"cargues";
	public static final String RUTA_REPORTES = RUTA+SEP+"reportes";
	public static final String RUTA_CARGUES_IN = RUTA_CARGUES+SEP+"in"+SEP;
	public static final String RUTA_CARGUES_OUT = RUTA_CARGUES+SEP+"out"+SEP;
	public static final String RUTA_REPORTES_OUT = RUTA_REPORTES+SEP+"out"+SEP;
	public static final String RUTA_LOGO = "images"+SEP+"logo.png";
	public static final String RUTA_REPORTES_FUENTE = "reports"+SEP;
}
