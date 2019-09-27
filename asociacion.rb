class Asociacion

attr_accessor :nombre, :arreglo_mascotas
 	def initialize(nombre)
 		@nombre = nombre
 		@arreglo_mascotas = []
 	end

 	def registrar_mascota(mascota)
     
 		if not buscar_dni(mascota.dni) || if not buscar_dueño(mascota.nom_apellido_dueño)
  	  arreglo_mascotas.push(mascota)
    else puts "El DNI #{mascota.dni} ya se encuentra registrado"
    puts "El dueño #{mascota.nom_apellido_dueño} ya se encuentra registrado, solo puede inscribir una mascota"
		end
  end
  
 	end

 	def listar_mascota	
 	msj = "** CONCURSO: #{nombre} **\n"
 	msj += "LISTA GENERAL DE CONCURSANTES:\n"
 		for p in arreglo_mascotas

     msj += p.mostrar_mascota + "\n" 
    #arreglo_mascotas.each do |mascota|
 		#	msj += mascota.mostrar_mascota + "\n"
 		end
 	msj += "TOTAL DE PARTICIPANTES: #{obtener_cantidad_mascotas}"
 		
 	end

 	def	ganador_general
 		max_puntaje = 0
 		ganador = nil
  	msj = "GANADOR GENERAL DEL CONCURSO:\n"
 		for p in arreglo_mascotas
 			if p.calcular_puntaje_final>max_puntaje
 				max_puntaje = p.calcular_puntaje_final
 				ganador = p.nom_mascota
 			end
 		end
 		msj += "NOMBRE: #{ganador}\t PUNTAJE FINAL:#{max_puntaje}"
 		
 	end

 	def buscar_dni(dni)
 		existe = false
  		for p in arreglo_mascotas
 			if p.dni == dni
 				existe = true
 				break
 			end
 		end		
 		return existe

 	end	

  def buscar_dueño(nom_apellido_dueño)
    existe = false
      for p in arreglo_mascotas
      if p.nom_apellido_dueño == nom_apellido_dueño
        existe = true
        break
      end
    end   
    return existe

  end

 	 def obtener_mascota_x_categoria(categoria)
      pet_tempo = []
      for p in arreglo_mascotas
      	if p.obtener_categoria == categoria
          pet_tempo.push(p)
      	end
      end
      return pet_tempo
  end
	
	def obtener_cantidad_mascotas
  	arreglo_mascotas.size
  end

  def obtener_mascotas  
    return arreglo_mascotas
  end   	 	
 end	

 	