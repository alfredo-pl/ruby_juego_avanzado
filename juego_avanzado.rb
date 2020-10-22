puts"Bienvenido al juego Piedra, Papel y Tijera"
jugador=''
while jugador != 4
    puts"Turno Jugador\nMenu:
    1: PIEDRA
    2: PAPEL
    3: TIJERAS
    4: SALIR
    "
    jugador=gets.chomp.to_i

    if jugador > 4 || jugador<= 0
        puts"Opción invalida vuelva a iniciar"
    else
        pc = %w{ piedra papel tijera }
        numero_pc = rand(pc.length)

        if jugador ==1
            if  pc[numero_pc] == 'piedra'
                puts "cpu #{pc[numero_pc]} , player piedra, quedaron en empate"
            elsif  pc[numero_pc] == 'papel'
                puts "cpu #{pc[numero_pc]} , player piedra, cpu ha ganado"
            else
                puts "cpu #{pc[numero_pc]} , player piedra, player ha ganado"
            end
        elsif jugador ==2
            if  pc[numero_pc] == 'papel'
                puts "cpu #{pc[numero_pc]} , player papel, quedaron en empate"
            elsif  pc[numero_pc] == 'tijera'
                puts "cpu #{pc[numero_pc]} , player papel, cpu ha ganado"
            else
                puts "cpu #{pc[numero_pc]} , player papel, player ha ganado"
            end
        elsif jugador ==3
            if  pc[numero_pc] == 'tijera' 
                puts "cpu #{pc[numero_pc]} , player tijera, quedaron en empate"
            elsif  pc[numero_pc] == 'piedra'
                puts "cpu #{pc[numero_pc]} , player tijera, cpu ha ganado"
            else
                puts "cpu #{pc[numero_pc]} , player tijera, player ha ganado"
            end
        else
            puts"Fin del juego"
            jugador=4
        end
    end
end