require "./mascota"

class Dueño

attr_accessor :nom_apellido_dueño,:dni

def initialize(nom_apellido_dueño,dni)
@nom_apellido_dueño = nom_apellido_dueño
@dni = dni

end	 


end