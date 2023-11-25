# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

aquecimento = TreinoPronto.find_or_create_by(nome: 'aquecimento')
aquecimento_exercicios = [{ nome: 'flexão', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'abdominal', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'agachamento', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'corrida no lugar', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'deslocamento lateral', nivel: '1', treino_pronto_id: aquecimento.id },
                   { nome: 'joelho no peito', nivel: '2', treino_pronto_id: aquecimento.id },
                   { nome: 'calcanhar nos gluteos', nivel: '2', treino_pronto_id: aquecimento.id },
                   { nome: 'alpinista', nivel: '3', descricao: 'movimento alternado das pernas na posição de prancha', treino_pronto_id: aquecimento.id}]
aquecimento_exercicios.each do |exercicio|
  Exercicio.find_or_create_by(exercicio)
end

boxe = TreinoPronto.find_or_create_by(nome: 'boxe')
boxe_exercicios = [{ nome: 'jab', nivel: '1', descricao: 'soco com a mão da frente', treino_pronto_id: boxe.id },
                   { nome: 'direto', nivel: '1', descricao: 'soco com a mão de trás', treino_pronto_id: boxe.id },
                   { nome: 'cruzado', nivel: '2', descricao: 'soco lateral', treino_pronto_id: boxe.id },
                   { nome: 'gancho', nivel: '2', descricao: 'soco lateral na barriga', treino_pronto_id: boxe.id },
                   { nome: 'upper', nivel: '2', descricao: 'soco de baixo para cima no queixo', treino_pronto_id: boxe.id },
                   { nome: 'esquiva', nivel: '2', treino_pronto_id: boxe.id },
                   { nome: 'esquiva + cruzado', nivel: '2', descricao: 'desvio + soco lateral', treino_pronto_id: boxe.id },
                   { nome: 'esquiva + gancho', nivel: '3', descricao: 'desvio + soco lateral na barriga', treino_pronto_id: boxe.id}]
boxe_exercicios.each do |exercicio|
  Exercicio.find_or_create_by(exercicio)
end

karate = TreinoPronto.find_or_create_by(nome: 'karate')
karate_exercicios = [{ nome: 'kizami zuki', nivel: '1', descricao: 'soco com a mão da frente', treino_pronto_id: karate.id },
                     { nome: 'gyaku zuki', nivel: '1', descricao: 'soco com a mão de trás', treino_pronto_id: karate.id },
                     { nome: 'Shomen Uke', nivel: '2', descricao: 'defesa do peito de dentro para fora', treino_pronto_id: karate.id },
                     { nome: 'Soto Uke', nivel: '2', descricao: 'defesa do peito de fora para dentro', treino_pronto_id: karate.id },
                     { nome: 'Jodan Age Uke', nivel: '2', descricao: 'defesa da cabeça', treino_pronto_id: karate.id },
                     { nome: 'Harai Otoshi Uke', nivel: '2', descricao: 'defesa da cintura', treino_pronto_id: karate.id },
                     { nome: 'Kake Uke', nivel: '3', descricao: 'defesa do peito de mão aberta', treino_pronto_id: karate.id },
                     { nome: 'Jogue Harai Uke',nivel: '3', descricao: 'defesa do peito e cintura', treino_pronto_id: karate.id},
                     { nome: 'Mae Geri	', nivel: '3', descricao: 'chute frontal', treino_pronto_id: karate.id },
                     { nome: 'Yoko Geri', nivel: '3', descricao: 'chute lateral com o joelho para frente', treino_pronto_id: karate.id },
                     { nome: 'Mawashi Geri', nivel: '3', descricao: 'chute lateral', treino_pronto_id: karate.id }]
karate_exercicios.each do |exercicio|
  Exercicio.find_or_create_by(exercicio)
end

volei = TreinoPronto.find_or_create_by(nome: 'volei')
volei_exercicios = [{ nome: 'Elevação de panturrilha', nivel: '1', treino_pronto_id: volei.id },
                    { nome: 'agachamento com salto', nivel: '1', treino_pronto_id: volei.id },
                    { nome: 'saltos largos', nivel: '1', treino_pronto_id: volei.id },
                    { nome: 'salto com caixa', nivel: '2', treino_pronto_id: volei.id },
                    { nome: 'salto horizontal parado', nivel: '2', treino_pronto_id: volei.id },
                    { nome: 'pular corda', nivel: '2', treino_pronto_id: volei.id },
                    { nome: 'saque', nivel: '3', treino_pronto_id: volei.id },
                    { nome: 'passe',nivel: '3', treino_pronto_id: volei.id},
                    { nome: 'recepção', nivel: '4', treino_pronto_id: volei.id },
                    { nome: 'levantamento', nivel: '4', treino_pronto_id: volei.id },
                    { nome: 'ataque', nivel: '5', treino_pronto_id: volei.id }]
volei_exercicios.each do |exercicio|
  Exercicio.find_or_create_by(exercicio)
end

futebol = TreinoPronto.find_or_create_by(nome: 'futebol')
futebol_exercicios = [{ nome: 'passe curto', nivel: '1', treino_pronto_id: futebol.id },
                      { nome: 'passe de um toque', nivel: '2', treino_pronto_id: futebol.id },
                      { nome: 'passe longo', nivel: '2', treino_pronto_id: futebol.id },
                      { nome: 'corrida com bola', nivel: '3', treino_pronto_id: futebol.id },
                      { nome: 'cruzamento', nivel: '2', treino_pronto_id: futebol.id },
                      { nome: 'chute a gol', nivel: '2', treino_pronto_id: futebol.id },
                      { nome: 'chute no alvo', nivel: '3', treino_pronto_id: futebol.id },
                      { nome: 'drible',nivel: '4', treino_pronto_id: futebol.id},
                      { nome: 'cabeceada', nivel: '4', treino_pronto_id: futebol.id },
                      { nome: 'dominio de bola', nivel: '2', treino_pronto_id: futebol.id }]
futebol_exercicios.each do |exercicio|
  Exercicio.find_or_create_by(exercicio)
end
