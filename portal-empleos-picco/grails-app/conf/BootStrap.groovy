import grails.util.Environment
import portal.empleos.picco.enumerations.Ciudad
import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.Institucion
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.usuario.Empresa
import portal.empleos.picco.usuario.Persona
import portal.empleos.picco.utils.DBUtils

class BootStrap {

	TipoTrabajo tp1,tp2,tp3,tp4,tp5,tp6,tp7,tp8,tp9,tp10,tp11,tp12,tp13,tp14,tp15,tp16,tp17,tp18
	
	def init = { servletContext ->
		switch (Environment.current) {
			case Environment.DEVELOPMENT:
				crearInstituciones()
				crearCiudades()
				crearTiposTrabajo()
				crearConocimientos()
				crearPersonas()
				crearEmpresas()
				break;
			case Environment.PRODUCTION:
				println "No special configuration required"
				break;
		}
	}
	
	def destroy = {
	}
	
	void crearInstituciones() {
		Institucion i1 = new Institucion(nombre:"UADE", privada:true)
		Institucion i2 = new Institucion(nombre:"UCA", privada:true)
		Institucion i3 = new Institucion(nombre:"UAI", privada:true)
		Institucion i4 = new Institucion(nombre:"ITBA", privada:true)
		Institucion i5 = new Institucion(nombre:"CAECE", privada:true)
		Institucion i6 = new Institucion(nombre:"UTN", privada:false)
		Institucion i7 = new Institucion(nombre:"UBA", privada:false)
		Institucion i8 = new Institucion(nombre:"UNSAM", privada:false)
		DBUtils.validateAndSave([i1,i2,i3,i4,i5,i6,i7,i8])
	}
	
	void crearCiudades() {
		Ciudad c1 = new Ciudad(ciudad:"CABA", provincia:"Buenos Aires", pais:"Argentina")
		Ciudad c2 = new Ciudad(ciudad:"Mar del plata", provincia:"Buenos Aires", pais:"Argentina")
		Ciudad c3 = new Ciudad(ciudad:"Tandil", provincia:"Buenos Aires", pais:"Argentina")
		Ciudad c4 = new Ciudad(ciudad:"Cordoba", provincia:"Cordoba", pais:"Argentina")
		Ciudad c5 = new Ciudad(ciudad:"La falda", provincia:"Cordoba", pais:"Argentina")
		Ciudad c6 = new Ciudad(ciudad:"Tilcara", provincia:"Jujuy", pais:"Argentina")
		Ciudad c7 = new Ciudad(ciudad:"Purmamarca", provincia:"Jujuy", pais:"Argentina")
		Ciudad c8 = new Ciudad(ciudad:"La quiaca", provincia:"Jujuy", pais:"Argentina")
		Ciudad c9 = new Ciudad(ciudad:"M2U", provincia:"Montevideo", pais:"Uruguay")
		Ciudad c10 = new Ciudad(ciudad:"Montevideo", provincia:"Montevideo", pais:"Uruguay")
		DBUtils.validateAndSave([c1,c2,c3,c4,c5,c6,c7,c8,c9,c10])
	}
	
	void crearTiposTrabajo() {
		tp1 = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		tp2 = new TipoTrabajo(nombre:"QA", rubro:"SISTEMAS")
		tp3 = new TipoTrabajo(nombre:"ARQUITECTURA", rubro:"SISTEMAS")
		tp4 = new TipoTrabajo(nombre:"SOPORTE", rubro:"SISTEMAS")
		tp5 = new TipoTrabajo(nombre:"REDES", rubro:"SISTEMAS")
		tp6 = new TipoTrabajo(nombre:"DBA", rubro:"SISTEMAS")
		tp7 = new TipoTrabajo(nombre:"INFRAESTRUCTURA", rubro:"SISTEMAS")
		tp8 = new TipoTrabajo(nombre:"PENAL", rubro:"ABOGACIA")
		tp9 = new TipoTrabajo(nombre:"CIVIL", rubro:"ABOGACIA")
		tp10= new TipoTrabajo(nombre:"LABORAL", rubro:"ABOGACIA")
		tp11= new TipoTrabajo(nombre:"FAMILIAR", rubro:"ABOGACIA")
		tp12= new TipoTrabajo(nombre:"TRAUMATOLOGIA", rubro:"MEDICINA")
		tp13= new TipoTrabajo(nombre:"KINESIOLOGIA", rubro:"MEDICINA")
		tp14= new TipoTrabajo(nombre:"CARDIOLOGIA", rubro:"MEDICINA")
		tp15= new TipoTrabajo(nombre:"PSICOLOGIA", rubro:"MEDICINA")
		tp16= new TipoTrabajo(nombre:"PSIQUIATRIA", rubro:"MEDICINA")
		tp17= new TipoTrabajo(nombre:"NEUMONOLOGIA", rubro:"MEDICINA")
		tp18= new TipoTrabajo(nombre:"EMFERMERIA", rubro:"MEDICINA")
		DBUtils.validateAndSave([tp1,tp2,tp3,tp4,tp5,tp6,tp7,tp8,tp9,tp10,tp11,tp12,tp13,tp14,tp15,tp16,tp17,tp18])
	}
	
	void crearConocimientos() {
		Conocimiento c1 = new Conocimiento(nombre:"JAVA", tipo:tp1)
		Conocimiento c2 = new Conocimiento(nombre:"HIBERNATE", tipo:tp1)
		Conocimiento c3 = new Conocimiento(nombre:"SPRING", tipo:tp1)
		Conocimiento c4 = new Conocimiento(nombre:"SEAM", tipo:tp1)
		Conocimiento c5 = new Conocimiento(nombre:"GRAILS", tipo:tp1)
		Conocimiento c6 = new Conocimiento(nombre:"JSF", tipo:tp1)
		Conocimiento c7 = new Conocimiento(nombre:"JSP", tipo:tp1)
		Conocimiento c8 = new Conocimiento(nombre:"SWING", tipo:tp1)
		Conocimiento c9 = new Conocimiento(nombre:"EJB", tipo:tp1)
		Conocimiento c10= new Conocimiento(nombre:"JUNIT", tipo:tp1)
		Conocimiento c11= new Conocimiento(nombre:"TEST UNITARIO", tipo:tp2)
		Conocimiento c12= new Conocimiento(nombre:"TEST DE INTEGRACION", tipo:tp2)
		Conocimiento c13= new Conocimiento(nombre:"TEST DE STRESS", tipo:tp2)
		Conocimiento c14= new Conocimiento(nombre:"WINDOWS", tipo:tp4)
		Conocimiento c15= new Conocimiento(nombre:"LINUX", tipo:tp4)
		Conocimiento c16= new Conocimiento(nombre:"MAC", tipo:tp4)
		Conocimiento c17= new Conocimiento(nombre:"TCP/IP", tipo:tp5)
		Conocimiento c18= new Conocimiento(nombre:"DIRECCIONAMIENTO", tipo:tp5)
		Conocimiento c19= new Conocimiento(nombre:"IPv6", tipo:tp5)
		Conocimiento c20= new Conocimiento(nombre:"JUICIOS", tipo:tp6)
		Conocimiento c21= new Conocimiento(nombre:"CAGAR GENTE", tipo:tp6)
		Conocimiento c22= new Conocimiento(nombre:"ROBAR", tipo:tp6)
		Conocimiento c23= new Conocimiento(nombre:"MUÑECAS", tipo:tp12)
		Conocimiento c24= new Conocimiento(nombre:"TOBILLOS", tipo:tp12)
		Conocimiento c25= new Conocimiento(nombre:"RODILLAS", tipo:tp12)
		Conocimiento c26= new Conocimiento(nombre:"TIBIA Y PERONE", tipo:tp12)
		Conocimiento c27= new Conocimiento(nombre:"MAGNETO", tipo:tp13)
		Conocimiento c28= new Conocimiento(nombre:"MASAJES", tipo:tp13)
		Conocimiento c29= new Conocimiento(nombre:"REHABILITACION", tipo:tp13)
		Conocimiento c30= new Conocimiento(nombre:"PARO CARDIACO", tipo:tp14)
		Conocimiento c31= new Conocimiento(nombre:"INFARTO", tipo:tp14)
		Conocimiento c32= new Conocimiento(nombre:"LOQUITOS", tipo:tp15)
		Conocimiento c33= new Conocimiento(nombre:"LOCAZOS", tipo:tp16)
		Conocimiento c34= new Conocimiento(nombre:"PULMONES", tipo:tp17)
		Conocimiento c35= new Conocimiento(nombre:"ALVEOLOS", tipo:tp17)
		Conocimiento c36= new Conocimiento(nombre:"RESPIRACION", tipo:tp18)
		Conocimiento c37= new Conocimiento(nombre:"RESUCITACION", tipo:tp18)
		DBUtils.validateAndSave([c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37])
	}
	
	void crearPersonas() {
		Persona p1 = new Persona(nombre:"Diego", apellido:"Miglino", intereses:"Futbol", dni:30303303, cuil:"30-30303303-3", celular: 654321, email:"diego@diego.com", emailAlternativo:"diegoAlt@diego.com", direccion:"Escobar 1342", telefono:123456, presentacion:"soy diego")
		Persona p2 = new Persona(nombre:"Micaela", apellido:"Benito", intereses:"Patin", dni:34303303, cuil:"34-34343343-3", celular: 123456, email:"mica@mica.com", emailAlternativo:"micaAlt@mica.com", direccion:"Lebensohn 321", telefono:123456, presentacion:"soy mica")
		Persona p3 = new Persona(nombre:"Coco", apellido:"Miglino", intereses:"Comer", dni:55305505, cuil:"50-55305505-5", celular: 132435, email:"coco@coco.com", emailAlternativo:"cocoAlt@coco.com", direccion:"Arias 123", telefono:132435, presentacion:"soy un perro")
		DBUtils.validateAndSave([p1,p2,p3])
	}
	
	void crearEmpresas() {
		Empresa e1 = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola mercado libre")
		Empresa e2 = new Empresa(denominacion:"VOSTU", razonSocial: "PYME", email:"vostu@vostu.com", emailAlternativo:"vostuAlt@vostu.com", direccion:"Madero 123", telefono:654321, presentacion:"hola vostu")
		Empresa e3 = new Empresa(denominacion:"GRUPO MOST", razonSocial: "PYME", email:"most@most.com", emailAlternativo:"mostAlt@most.com", direccion:"Reconquista 123", telefono:645331, presentacion:"hola most")
		DBUtils.validateAndSave([e1,e2,e3])
	}

}