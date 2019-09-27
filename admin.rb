#encoding: UTF-8
require "./mascota"
require "./mascota_factory"
require "./asociacion"
require "./dueño"
require "./excepciones"

#b)Registre a todas sus mascotas con sus respectivos dueños.

g1 = MascotaFactory.crear("Guardian","Hatchiko",12,"Negro","Jonathan Rincon","43867703",10,10,10)
g2 = MascotaFactory.crear("Guardian","Makuto",15,"Chocolate","Silvia Gomez","11111111",10,9,10)
g3 = MascotaFactory.crear("Guardian","Athos",16,"Marron rojizo","Jorge Mendoza","12345678",9,9,10)
cia1 = MascotaFactory.crear("Compañia","Loki",18,"Blanco","Daniel Casapia","23324334",9,9,9)
cia2 = MascotaFactory.crear("Compañia","Lenon",11,"Negro con Blanco","Miguel Longa","17181920",9,9,9)
cia3 = MascotaFactory.crear("Compañia","Freya",9,"Negro con Plata","Wendy Navarro","20212223",10,9,10)
co1 = MascotaFactory.crear("Comun","Bebeto",8,"Marron","Erick Chirinos","31323334",9,8,9)
co2 = MascotaFactory.crear("Comun","Fresa",20,"Caramelo","Zoila Pena","44454648",10,9,9)
co3 = MascotaFactory.crear("Comun","Tobias",17,"Atigrado","Maria Encinas","37384041",10,9,9)

 asoc = Asociacion.new("Mascotas - Parque Circolo Militar")
 
 #begin
 asoc.registrar_mascota(g1)
 asoc.registrar_mascota(g2)
 asoc.registrar_mascota(g3)
 asoc.registrar_mascota(cia1)
 asoc.registrar_mascota(cia2)
 asoc.registrar_mascota(cia3)
 asoc.registrar_mascota(co1)
 asoc.registrar_mascota(co2)
 asoc.registrar_mascota(co3)
#rescue ExcepcionPuntaje => exc 
#	puts "#{exc.class}: #{exc.message}"
#end	




#c)	Desarrolle un método que obtenga a los perros participantes incluya todos sus atributos y su calificación final. 

puts asoc.listar_mascota

#d)	Desarrolle un método que reciba como parámetro una categoría y obtenga a todos los perros de esa categoría
# para luego en sus pruebas imprimir el listad con todos sus atributos y su calificación final. 

mascota_x_categoria = asoc.obtener_mascota_x_categoria("COMPAÑIA")
        puts "-------------------------"
        puts "*** MASCOTAS POR CATEGORIA ***"
        puts "-------------------------"
		for p in mascota_x_categoria
		puts "#{p.mostrar_mascota}"
		end


#e)	Desarrolle un método que obtenga al perro ganador general de la competencia y su puntaje obtenido.

puts "------------------------------------------"
puts "*** MASCOTA GANADORA DE LA COMPETENCIA ***"
puts "------------------------------------------"
puts asoc.ganador_general

#h)	No permita registrar a más de un dueño, es decir valide el no registrar más de un DNI.

#f)	Desarrolle un método que reciba como parámetro la categoría y retorne la cantidad de mascotas que participan.

 tamaño = asoc.obtener_mascota_x_categoria("GUARDIAN")
	 puts "-----------------------------------"
	 puts "** CANTIDAD DE MASCOTAS POR CATEGORIA **"
     puts "-----------------------------------"
     puts "TOTAL: 	#{tamaño.size}"
     puts "-----------------------------------"



   
     
       
		









