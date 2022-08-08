ventas = {Enero: 15000, Febrero: 22000, Marzo: 12000, Abril: 17000, Mayo: 81000, Junio: 13000, Julio: 21000, Agosto: 41200, Septiembre: 25000, Octubre: 21500, Noviembre: 91000, Diciembre: 21000}

def search(hash,sales)
    sales.each do |i|
        found = hash.invert[i.to_i]
        if found
            puts "#{found}"
        else
            puts "no encontrado"
        end
    end
end

search(ventas,ARGV)