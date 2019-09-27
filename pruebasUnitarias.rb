
require "test/unit"
require "./mascota"
require "./mascota_factory"
require "./asociacion"
require "./dueño"
require "./excepciones"

class TestParticipantes < Test::Unit::TestCase

def test_calcular_puntaje_final

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

	 asoc.registrar_mascota(g1)
	 asoc.registrar_mascota(g2)
	 asoc.registrar_mascota(g3)
	 asoc.registrar_mascota(cia1)
	 asoc.registrar_mascota(cia2)
	 asoc.registrar_mascota(cia3)
	 asoc.registrar_mascota(co1)
	 asoc.registrar_mascota(co2)
	 asoc.registrar_mascota(co3)

	arreglo = asoc.obtener_mascotas
	for p in arreglo
	puts " #{p.nom_mascota}		#{p.calcular_puntaje_final}"
	end

	assert_equal 12.0, g1.calcular_puntaje_final.round(2)
	assert_equal 11.67, g2.calcular_puntaje_final.round(2)
	assert_equal 11.33, g3.calcular_puntaje_final.round(2)
	assert_equal 11.0, cia1.calcular_puntaje_final.round(2)
	assert_equal 11.0, cia2.calcular_puntaje_final.round(2)
	assert_equal 11.67, cia3.calcular_puntaje_final.round(2)
	assert_equal 10.67, co1.calcular_puntaje_final.round(2)
	assert_equal 11.33, co2.calcular_puntaje_final.round(2)
	assert_equal 11.33, co3.calcular_puntaje_final.round(2)

	
end	

def test_cantidad_mascotas

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
	 asoc.registrar_mascota(g1)
	 asoc.registrar_mascota(g2)
	 asoc.registrar_mascota(g3)
	 asoc.registrar_mascota(cia1)
	 asoc.registrar_mascota(cia2)
	 asoc.registrar_mascota(cia3)
	 asoc.registrar_mascota(co1)
	 asoc.registrar_mascota(co2)
	 asoc.registrar_mascota(co3)

	arreglo = asoc.obtener_cantidad_mascotas
	assert_equal 9, arreglo

 end

 def test_ganador_concurso

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
	 asoc.registrar_mascota(g1)
	 asoc.registrar_mascota(g2)
	 asoc.registrar_mascota(g3)
	 asoc.registrar_mascota(cia1)
	 asoc.registrar_mascota(cia2)
	 asoc.registrar_mascota(cia3)
	 asoc.registrar_mascota(co1)
	 asoc.registrar_mascota(co2)
	 asoc.registrar_mascota(co3)

	ganador = asoc.ganador_general
	assert_equal "GANADOR GENERAL DEL CONCURSO:\n" + "NOMBRE: Hatchiko\t PUNTAJE FINAL:12.0", ganador

 end


 def test_mascota_xcategoria

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
	 asoc.registrar_mascota(g1)
	 asoc.registrar_mascota(g2)
	 asoc.registrar_mascota(g3)
	 asoc.registrar_mascota(cia1)
	 asoc.registrar_mascota(cia2)
	 asoc.registrar_mascota(cia3)
	 asoc.registrar_mascota(co1)
	 asoc.registrar_mascota(co2)
	 asoc.registrar_mascota(co3)

	 mascota_x_categoria = asoc.obtener_mascota_x_categoria("COMPAÑIA")
        puts "-------------------------------------------------------------------------"
        puts "*********************** MASCOTAS POR CATEGORIA **************************"
        puts "-------------------------------------------------------------------------"
		for p in mascota_x_categoria
		puts "#{p.mostrar_mascota}"
		end
	assert_equal 3, mascota_x_categoria.size
end


 def test_cantidad_mascota_xcategoria

   	g1 = MascotaFactory.crear("Guardian","Hatchiko",12,"Negro","Jonathan Rincon","43867703",10,10,10)
	g2 = MascotaFactory.crear("Guardian","Makuto",15,"Chocolate","Silvia Gomez","11111111",10,9,10)
	g3 = MascotaFactory.crear("Guardian","Athos",16,"Marron rojizo","Jorge Mendoza","12345678",9,9,10)
	cia1 = MascotaFactory.crear("Compañia","Loki",18,"Blanco","Daniel Casapia","23324334",9,9,9)
	cia2 = MascotaFactory.crear("Compañia","Lenon",11,"Negro con Blanco","Miguel Longa","17181920",9,9,9)
	cia3 = MascotaFactory.crear("Compañia","Freya",9,"Negro con Plata","Wendy Navarro","20212223",10,9,10)
	co1 = MascotaFactory.crear("Comun","Bebeto",8,"Marron","Erick Chirinos","31323334",10,8,9)
	co2 = MascotaFactory.crear("Comun","Fresa",20,"Caramelo","Zoila Pena","44454648",10,9,9)
	co3 = MascotaFactory.crear("Comun","Tobias",17,"Atigrado","Maria Encinas","37384041",10,9,9)

	 asoc = Asociacion.new("Mascotas - Parque Circolo Militar")
	 asoc.registrar_mascota(g1)
	 asoc.registrar_mascota(g2)
	 asoc.registrar_mascota(g3)
	 asoc.registrar_mascota(cia1)
	 asoc.registrar_mascota(cia2)
	 asoc.registrar_mascota(cia3)
	 asoc.registrar_mascota(co1)
	 asoc.registrar_mascota(co2)
	 asoc.registrar_mascota(co3)

	 cantidad_mascota_x_categoria = asoc.obtener_mascota_x_categoria("COMPAÑIA")
     assert_equal 3, cantidad_mascota_x_categoria.size
end


	
end	





		