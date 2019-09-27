

class MascotaFactory

	def self.crear(categoria,*arg)
	
		case categoria 
		when "Guardian"
		Guardian.new(arg[0],arg[1], arg[2],arg[3],arg[4],arg[5], arg[6], arg[7])
    	when "Compañia"
    	Compañia.new(arg[0],arg[1], arg[2],arg[3],arg[4],arg[5], arg[6], arg[7])	
    	when "Comun"
    	Comun.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5], arg[6], arg[7])
    	end	
		
	end

end	