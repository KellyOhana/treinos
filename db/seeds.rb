# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

aquecimento = TreinoPronto.create!(nome: 'aquecimento')
Exercicio.create!([{ nome: 'flexão', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'abdominal', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'agachamento', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'corrida no lugar', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'deslocamento lateral', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'joelho no peito', nivel: '2', treino_pronto_id: aquecimento.id },
                   { nome: 'calcanhar nos gluteos', nivel: '2', treino_pronto_id: aquecimento.id },
                   { nome: 'alpinista', nivel: '3', treino_pronto_id: aquecimento.id}])

boxe = TreinoPronto.create!(nome: 'boxe')
Exercicio.create!([{ nome: 'jab', nivel: '1', treino_pronto_id: boxe.id },
                   { nome: 'direto', nivel: '1', treino_pronto_id: boxe.id },
                   { nome: 'cruzado', nivel: '2', treino_pronto_id: boxe.id },
                   { nome: 'gancho', nivel: '2', treino_pronto_id: boxe.id },
                   { nome: 'upper', nivel: '2', treino_pronto_id: boxe.id },
                   { nome: 'esquiva', nivel: '2', treino_pronto_id: boxe.id },
                   { nome: 'esquiva + cruzado', nivel: '2', treino_pronto_id: boxe.id },
                   { nome: 'esquiva + gancho', nivel: '3', treino_pronto_id: boxe.id}])

karate = TreinoPronto.create!(nome: 'karate')
Exercicio.create!([{ nome: 'kizami zuki', nivel: '1', treino_pronto_id: karate.id },
                              { nome: 'gyaku zuki', nivel: '1', treino_pronto_id: karate.id },
                              { nome: 'Shomen Uke', nivel: '2', treino_pronto_id: karate.id },
                              { nome: 'Soto Uke', nivel: '2', treino_pronto_id: karate.id },
                              { nome: 'Jodan Ague Uke', nivel: '2', treino_pronto_id: karate.id },
                              { nome: 'Harai Otoshi Uke', nivel: '2', treino_pronto_id: karate.id },
                              { nome: 'Kake Uke', nivel: '3', treino_pronto_id: karate.id },
                              { nome: 'Jogue Harai Uke',nivel: '3', treino_pronto_id: karate.id},
                              { nome: 'Mae Gueri	', nivel: '3', treino_pronto_id: karate.id },
                              { nome: 'Yoko Gueri', nivel: '3', treino_pronto_id: karate.id },
                              { nome: 'Mawashi Gueri', nivel: '3', treino_pronto_id: karate.id }])

volei = TreinoPronto.create!(nome: 'volei')
Exercicio.create!([{ nome: 'Elevação de panturrilha', nivel: '1', treino_pronto_id: volei.id },
                              { nome: 'agachamento com salto', nivel: '1', treino_pronto_id: volei.id },
                              { nome: 'saltos largos', nivel: '1', treino_pronto_id: volei.id },
                              { nome: 'salto com caixa', nivel: '2', treino_pronto_id: volei.id },
                              { nome: 'salto horizontal parado', nivel: '2', treino_pronto_id: volei.id },
                              { nome: 'pular corda', nivel: '2', treino_pronto_id: volei.id },
                              { nome: 'saque', nivel: '3', treino_pronto_id: volei.id },
                              { nome: 'passe',nivel: '3', treino_pronto_id: volei.id},
                              { nome: 'recepção', nivel: '4', treino_pronto_id: volei.id },
                              { nome: 'levantamento', nivel: '4', treino_pronto_id: volei.id },
                              { nome: 'ataque', nivel: '5', treino_pronto_id: volei.id }])

futebol = TreinoPronto.create!(nome: 'futebol')
Exercicio.create!([{ nome: 'passe curto', nivel: '1', treino_pronto_id: futebol.id },
                              { nome: 'passe de um toque', nivel: '2', treino_pronto_id: futebol.id },
                              { nome: 'passe longo', nivel: '2', treino_pronto_id: futebol.id },
                              { nome: 'corrida com bola', nivel: '3', treino_pronto_id: futebol.id },
                              { nome: 'cruzamento', nivel: '2', treino_pronto_id: futebol.id },
                              { nome: 'chute a gol', nivel: '2', treino_pronto_id: futebol.id },
                              { nome: 'chute no alvo', nivel: '3', treino_pronto_id: futebol.id },
                              { nome: 'drible',nivel: '4', treino_pronto_id: futebol.id},
                              { nome: 'cabeceada', nivel: '4', treino_pronto_id: futebol.id },
                              { nome: 'dominio de bola', nivel: '2', treino_pronto_id: futebol.id }])