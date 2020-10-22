puts"Bienvenido al juego Piedra, Papel y Tijera"

option=''
while option != 3
    puts"Menú:
    1:PLAYER 1 vs CPU
    2:PLAYER 1 vs PLAYER 2
    3:EXIT
    "
    option = gets.chomp.to_i
        if option > 3 || option<= 0
            puts"Opción inválida vuelva a iniciar"
        elsif option == 1
            jugador=''
            while jugador != 4
                puts"Turno PLAYER 1\nMenú:
                1: PIEDRA
                2: PAPEL
                3: TIJERAS
                4: SALIR DE PARTIDA
                "
                jugador=gets.chomp.to_i

                if jugador > 4 || jugador<= 0
                    puts"Opción inválida vuelva a iniciar"
                else
                    pc = %w{ piedra papel tijera }
                    numero_pc = rand(pc.length)

                    if jugador ==1
                        if  pc[numero_pc] == 'piedra'
                            puts "CPU #{pc[numero_pc]} , PLAYER1 piedra, quedaron en empate"
                        elsif  pc[numero_pc] == 'papel'
                            puts "CPU #{pc[numero_pc]} , PLAYER1 piedra, CPU ha ganado"
                        else
                            puts "CPU #{pc[numero_pc]} , PLAYER1 piedra, PLAYER1 ha ganado"
                        end
                    elsif jugador ==2
                        if  pc[numero_pc] == 'papel'
                            puts "CPU #{pc[numero_pc]} , PLAYER1 papel, quedaron en empate"
                        elsif  pc[numero_pc] == 'tijera'
                            puts "CPU #{pc[numero_pc]} , PLAYER1 papel, CPU ha ganado"
                        else
                            puts "CPU #{pc[numero_pc]} , PLAYER1 papel, PLAYER1 ha ganado"
                        end
                    elsif jugador ==3
                        if  pc[numero_pc] == 'tijera' 
                            puts "CPU #{pc[numero_pc]} , PLAYER1 tijera, quedaron en empate"
                        elsif  pc[numero_pc] == 'piedra'
                            puts "CPU #{pc[numero_pc]} , PLAYER1 tijera, CPU ha ganado"
                        else
                            puts "CPU #{pc[numero_pc]} , PLAYER1 tijera, PLAYER1 ha ganado"
                        end
                    else
                        puts"FIN DE LA PARTIDA"
                        jugador=4
                    end
                end
            end
        elsif option == 2
            game=true
            turn=true
            while game
                puts"Turno PLAYER 1\nMenú:
                1: PIEDRA
                2: PAPEL
                3: TIJERAS
                4: SALIR DE PARTIDA
                "
                jugador=gets.chomp.to_i
                if jugador > 4 || jugador<= 0
                    puts"Opción inválida vuelva a iniciar"
                else
                    while turn
                        puts"Turno PLAYER 2\nMenú:
                        1: PIEDRA
                        2: PAPEL
                        3: TIJERAS
                        4: SALIR DE PARTIDA
                        "
                        jugador2=gets.chomp.to_i
                        if jugador2 > 4 || jugador2<= 0
                            puts"Opción inválida vuelva a iniciar"
                        else
                            if jugador ==1
                                if  jugador2 == 1
                                    puts "PLAYER1 piedra , PLAYER2 piedra, quedaron en empate"
                                    turn=false
                                elsif  jugador2 == 2
                                    puts "PLAYER1 piedra , PLAYER2 papel, PLAYER2 ha ganado"
                                    turn=false
                                elsif  jugador2 == 3
                                    puts "PLAYER1 piedra , PLAYER2 tijeras, PLAYER1 ha ganado"
                                    turn=false
                                else 
                                    puts "PLAYER2 DESEA SALIR DE LA PARTIDA"
                                    turn=false
                                end
                            elsif jugador ==2
                                if jugador2 ==1
                                    puts "PLAYER1 papel , PLAYER2 piedra, PLAYER1 en empate"
                                    turn=false
                                elsif  jugador2 == 2
                                    puts "PLAYER1 papel , PLAYER2 papel, quedaron en empate"
                                    turn=false
                                elsif  jugador2 == 3
                                    puts "PLAYER1 papel , PLAYER2 tijeras, PLAYER2 ha ganado"
                                    turn=false
                                else 
                                    puts "PLAYER2 DESEA SALIR DE LA PARTIDA"
                                    turn=false
                                end
                            elsif jugador ==3
                                if jugador2 ==1
                                    puts "PLAYER1 tijeras , PLAYER2 piedra, PLAYER2 ha ganado"
                                    turn=false
                                elsif  jugador2 == 2
                                    puts "PLAYER1 tijeras , PLAYER2 papel, PLAYER1 ha ganado"
                                    turn=false
                                elsif  jugador2 == 3
                                    puts "PLAYER1 tijeras , PLAYER2 tijeras, quedaron en empate"
                                    turn=false
                                else 
                                    puts "PLAYER2 DESEA SALIR DE LA PARTIDA"
                                    turn=false
                                end
                            elsif jugador == 4 && jugador2 == 4
                                puts "AMBOS PLAYERS DESEAN SALIR DE LA PARTIDA"
                                turn=false
                            else
                                puts "PLAYER1 DESEA SALIR DE LA PARTIDA"
                                turn=false    
                            end
                            game=false
                        end

                    end
                
                end
            end
        else
            puts"EXIT DEL JUEGO"  
        end
end