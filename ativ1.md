1. Quais tabelas você definiu inicialmente?

Parei pra pensar no que realmente precisava existir no banco pra funcionar o mínimo do Vendex, e cheguei em só duas tabelas por enquanto:

categories: guarda as categorias dos produtos (id, name). É nela que vou me basear pros filtros lá na frente.
products: guarda os produtos em si (id, name, description, price, image_url, stock, category_id, created_at). O category_id é uma referência pra tabela categories.

Cheguei a pensar em já criar tabela de usuário e de carrinho também, mas decidi deixar pra depois, porque por enquanto o carrinho é uma coisa que só existe na tela (adicionar/remover item), sem precisar ser salvo no banco. Achei melhor seguir a ideia do livro de só criar tabela quando a aplicação realmente precisar dela.

2. Você utilizou migrations? Se sim, quantas migrations? Descreva em uma frase o que cada uma faz.

Sim, usei 2 migrations (arquivos .sql numerados dentro de backend/migrations/):

001_create_categories.sql — cria a tabela de categorias primeiro, porque a tabela de produtos vai depender dela.
002_create_products.sql — cria a tabela de produtos, já com a foreign key category_id apontando pra categories.
3. Qual o caminho do arquivo que gera a seed do seu banco?

backend/seed.sql

4. Quais os endpoints que você irá implementar inicialmente?
GET /api/products — retorna a lista de todos os produtos, já com o nome da categoria junto.

Decidi começar só com esse endpoint mesmo, em vez de já sair implementando tudo (filtro, busca, detalhe do produto, carrinho etc). A ideia é fazer primeiro um caminho completo e simples — do banco até uma tela mostrando os produtos — pra garantir que a base do projeto (backend, banco, conexão com o front) está funcionando antes de complicar. Sem uma lista de produtos, nenhuma das outras funcionalidades do Vendex faz sentido (não dá pra ver detalhe, filtrar ou adicionar ao carrinho um produto que ainda não existe na tela), então esse foi o ponto de partida mais óbvio pra mim. Os próximos endpoints (detalhe do produto, listagem de categorias pros filtros, etc.) pretendo ir adicionando aos poucos nas próximas atividades.

5. Você está usando algum framework para escrever os endpoints da sua API?

Sim, estou usando Express rodando em cima do Node.js, com TypeScript, e o banco é PostgreSQL