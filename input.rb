class Mesh
    def initialize(hash)
        @i = hash.i
        @j = hash.j
        @k = hash.k
    end
    def ijk(i,j,k)
        @i = i
        @j = j
        @k = k
    end
    def XB(i0,i1,j0,j1,k0,k1)
    end
end

class Time
    def intialize(hash)
        @duration = hash.duration
    end
end

class Miscellaneous
    def intialize(hash)
        @ambient_temp = hash.ambient_temp
    end
end

class Dump
    def initialize(hash)
        number_of_frames = hash.number_of_frames
        dt_heat_release_rate = hash.dt_heat_release_rate
        dt_prof = hash.dt_prof
    end
end

class Reaction
    def initialize(hash)
        fuel = hash.fuel
        fyi = hash.fyi
        carbon = hash.carbon
        hydrogen = hash.hydrogen
        co_yield = ha.sh.co_yield
    end
end

class Obstruction
    def initialize(hash)
        @surface = hash.surface 
        @surface_id = hash.surface_id
        Surface.new({id: hash.surface_id, type: "obstruction"})
    end
end

class Surface
    def initialize(id, type)
        @id = id
        @type = type
    end
    
    def values(hash)
        @color = hash.color
        @material_id = hash.material_id
        @backing = hash.backing
        @thickness = hash.thickness
    end
end

class Vent
    def initialize(id, mb)
        @mb = mb
        @id = id
        Surface.new({id: id, type: "vent"})
    end
end

class SLCF
    def initialize(hash)
        @pby = hash.pby
        @type = hash.type || hash.quantity #type is quantity
        @vector = hash.vector 
     end
end

class Bndf
    def initialize(hash)
        @type = hash.type || hash.quantity #type is quantity
    end
end

class Device
    def initialize(hash)
        @id = hash.id
        @x = hash.x
        @y = hash.y
        @z = hash.z
        @type = hash.type || hash.quantity #type is quantity
        @vector = hash.vector 
    end
end