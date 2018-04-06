	class Carta

		def initialize(num, pinta)
			@num = num
			@pinta = pinta
		end

		def imprimir
			puts "#{@num} de #{@pinta}"  
		end
	end

	def generar
		cartas = []
		pintas = ['Corazón','Diamante','Trebol','Pica']
		numeros = [1,2,3,4,5,6,7,8,9,10,'J','Q','K']
		5.times do
			card = Carta.new(pintas.sample, numeros.sample)
			cartas.push(card)
		end

	end

	

	def menu
	  puts 'escriba "jugar" para generar una mano'
	  puts 'escriba "mostrar" para mostrar la mano'
	  puts 'escriba "salir" para salir'
	  puts 'seleccione una opción'
	  opc = gets.chomp
	end

	pintas = ['Corazón','Diamante','Trebol','Pica']
	numeros = [1,2,3,4,5,6,7,8,9,10,'J','Q','K']
	cartas = []
	jugar = true
	while jugar
		opc = menu
		case opc
		when 'jugar'
			cartas = generar
			puts 'Juego en mano'
		end
		when 'mostrar'
			cartas.each do |carta|
				carta.imprimir
			end
		end
		when 'salir'
			jugar = false
		else
			puts 'Esa no es una opcion valida'
		end
	end

	puts 'Termino el juego'

