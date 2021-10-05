# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

cards_list = [
  {
  	title: 'Obelisco, o Atormentador',
    description: 'Requer 3 Tributos para ser Invocado por Invocação-Normal (não pode ser Baixado Normalmente). A Invocação-Normal deste card não pode ser negada. Quando Invocado por Invocação-Normal, cards e efeitos não podem ser ativados. Nenhum duelista pode escolher este card como alvo de efeitos de card. Uma vez por turno, durante a Fase Final, se este card foi Invocado por Invocação-Especial: envie-o para o Cemitério. Você pode oferecer 2 monstros como Tributo; destrua todos os monstros que seu oponente controla. Este card não pode declarar um ataque no turno em que este efeito for ativado.',
    nivel: 10,
    atk: 4_000,
    def: 4_000
  },
  {
  	title: 'Discípulo de Rá',
    description: 'Quando este card for Invocado: você pode Invocar por Invocação-Especial até 2 "Discípulo de Rá" da sua mão e/ou do Deck. Não pode ser oferecido como Tributo, exceto para a Invocação-Tributo de "Slifer, o Dragão Celeste", "Obelisco, o Atormentador" ou "O Dragão Alado de Rá". Você não pode Invocar monstros por Invocação-Especial, exceto pelo efeito de "Discípulo de Rá".',
    nivel: 4,
    atk: 1_100,
    def: 600
  },
  {
  	title: 'Invocação Dupla',
    description: 'Você pode realizar 2 Invocações-Normal/Baixar neste turno, não apenas 1.'
  }
]

cards_list.each do |card|
  Card.create(
  	name: card[:name],
  	description: card[:description],
  	nivel: card[:nivel],
    atk: card[:atk],
    def: card[:def]
  )
end