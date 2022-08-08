def main
    ventas = {Enero: 15000, Febrero: 22000, Marzo: 12000, Abril: 17000, Mayo: 81000, Junio: 13000, Julio: 21000, Agosto: 41200, Septiembre: 25000, Octubre: 21500, Noviembre: 91000, Diciembre: 21000}
    quarters(ventas)
end

def quarters(hash)
    q = hash.values.each_slice(hash.length/4).to_a
    {"Q1" =>q[0].inject(0){ |sum,x| sum + x }, "Q2" =>q[1].inject(0){ |sum,x| sum + x }, "Q3" =>q[2].inject(0){ |sum,x| sum + x }, "Q4" =>q[3].inject(0){ |sum,x| sum + x }}
end

puts main