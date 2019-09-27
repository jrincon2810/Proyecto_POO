class Mascota
 	attr_accessor :nom_mascota, :edad_mascota, :color, :nom_apellido_dueño,:dni,:puntaje_postura
 	def initialize(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura)
 		raise ExcepcionPuntaje, "El puntaje ingresado para postura no esta permitido" if (puntaje_postura < 1 || puntaje_postura > 10)
    @nom_mascota, @edad_mascota,@color,@nom_apellido_dueño = nom_mascota, edad_mascota, color, nom_apellido_dueño
 		@dni,@puntaje_postura = dni, puntaje_postura
 	end

 	def calcular_puntaje_evaluaciones
  end
    
  def calcular_puntaje_final
    calcular_puntaje_evaluaciones + calcular_bono
  end  

 	def obtener_categoria
	end

  def calcular_bono
    bono = 0
    if calcular_puntaje_evaluaciones > 7
      bono = 2
    else bono = 0 
    end 
    return bono
  end
 
 	def mostrar_mascota
  	"Mascota #{nom_mascota.ljust(15)}\t\ Edad: #{edad_mascota}\t\	Color: #{color.ljust(15)}\t\ Dueño:#{nom_apellido_dueño.ljust(15)}\t\	DNI:#{dni.ljust(15)}\t\ POSTURA: #{puntaje_postura}" 	
  end	

  def crear_dueño(nom_apellido_dueño,dni)

  dueño = Dueño.new(nom_apellido_dueño,dni)
  
  end

  def agregar_dueño (nom_apellido_dueño,dni)

  dueño = crear_dueño(nom_apellido_dueño,dni)
  arreglo_mascotas.push(dueño)    

  end

end   

class Guardian < Mascota

 	attr_accessor :puntaje_raza, :puntaje_habilidad
 	def initialize(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura,puntaje_raza,puntaje_habilidad)
 		super(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura) #pasa los datos al initialize del padre
    raise ExcepcionPuntaje, "El puntaje ingresado para raza no esta permitido" if (puntaje_raza < 1 || puntaje_raza>10)
    raise ExcepcionPuntaje, "El puntaje ingresado para habilidad no esta permitido" if (puntaje_habilidad < 1 || puntaje_habilidad>10)
 		@puntaje_raza = puntaje_raza
 		@puntaje_habilidad = puntaje_habilidad
 	end

 	def mostrar_mascota
 		super + "    Categoria: Guardian     Puntaje Raza:#{puntaje_raza}\t\ Puntaje Habilidad: #{puntaje_habilidad}\t\ Promedio Evaluaciones: #{calcular_puntaje_evaluaciones.round(2)}  Puntaje Final: #{calcular_puntaje_final.round(2)}"
 	end

 	def calcular_puntaje_evaluaciones
 		(puntaje_postura + puntaje_raza + puntaje_habilidad)/3.0
  end

  def calcular_puntaje_final
    super
  end  

  def calcular_bono
   super
  end 

  def obtener_categoria
  		"GUARDIAN"
	end
end

class Compañia < Mascota
 	attr_accessor :puntaje_raza,:puntaje_pelaje
 	def initialize(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura,puntaje_raza,puntaje_pelaje)
 		super(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura)
    raise ExcepcionPuntaje, "El puntaje ingresado para raza no esta permitido" if (puntaje_raza < 1 || puntaje_raza>10)
    raise ExcepcionPuntaje, "El puntaje ingresado para pelaje no esta permitido" if (puntaje_pelaje < 1 || puntaje_pelaje>10)
 		@puntaje_raza=puntaje_raza
 		@puntaje_pelaje=puntaje_pelaje
 		
 	end

 	def mostrar_mascota
 		super + "    Categoria: Compañia     Puntaje Raza: #{puntaje_raza}\t\ Puntaje Pelaje:#{puntaje_pelaje}\t\ Promedio Evaluaciones: #{calcular_puntaje_evaluaciones.round(2)}\t\  Puntaje Final: #{calcular_puntaje_final.round(2)}"
 	end

 	def calcular_puntaje_evaluaciones
 	 	(puntaje_postura + puntaje_raza + puntaje_pelaje)/3.0
  end

  def calcular_puntaje_final
    super
  end
  
  def calcular_bono
   super
  end 

  def obtener_categoria
  		"COMPAÑIA"
	end
end

 class Comun < Mascota
 	attr_accessor :puntaje_aceptacion,:puntaje_disciplina
 	def initialize(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura,puntaje_aceptacion,puntaje_disciplina)
 		super(nom_mascota,edad_mascota,color,nom_apellido_dueño,dni,puntaje_postura) #pasa los datos al initialize del padre
    raise ExcepcionPuntaje, "El puntaje ingresado para aceptacion no esta permitido" if (puntaje_aceptacion < 1 || puntaje_aceptacion>10)
    raise ExcepcionPuntaje, "El puntaje ingresado para disciplina no esta permitido" if (puntaje_disciplina< 1 || puntaje_disciplina>10)
 		@puntaje_aceptacion=puntaje_aceptacion
 		@puntaje_disciplina=puntaje_disciplina
 	end

 	def mostrar_mascota
 		super + "    Categoria: Comun    Puntaje Aceptacion: #{puntaje_aceptacion}\t\ Puntaje Disciplina: #{puntaje_disciplina}\t\  Promedio Evaluaciones: #{calcular_puntaje_evaluaciones.round(2)}\t\  Puntaje Final: #{calcular_puntaje_final.round(2)}"
 	end

 	def calcular_puntaje_evaluaciones
 		 (puntaje_postura + puntaje_disciplina + puntaje_aceptacion)/3.0
  end

  def calcular_puntaje_final
    super
  end

  def calcular_bono
   super
  end 

  def obtener_categoria
  	"COMUN"	
	end
 	
 end

