----Consultas
-- Com base na modelagem conceitual e lógica e no projeto físico do banco de dados resultante
-- do trabalho 1, cada equipe deverá escrever 5 (cinco) queries com o objetivo de extrair dados do
-- referido banco. É de responsabilidade das equipes definir as instruções SQL de seleção e
-- apresentá-las de forma sintaticamente correta, observando a estrutura física do banco de
-- dados criado, de acordo com os seguintes requisitos:
--     * em pelo menos uma das queries deverá ser usado JOIN (de qualquer tipo);
--     * em pelo menos uma das queries deverá ser usada uma função de agregação (soma, média, contagem, valor máximo, valor mínimo);
--     * em pelo menos uma das queries deverá ser usado agrupamento (GROUP BY);
--     * em pelo menos uma das queries deverá ser usada ordenação (ORDER BY);
--     * em pelo menos uma das queries deverá ser usada uma subquery (SELECT aninhado).
-- Observação 1: é possível combinar mais de um requisito na mesma query.
-- Observação 2: a entrega deverá ser feita via Moodle, respeitando o prazo estabelecido e as equipes previamente cadastradas.

-- 1) Mostrar o id e nome dos usuários que pertencem ao grupo de nome Automacao141
SELECT 
  u.id, 
  u.name
FROM 
  userr u JOIN userr_groupp ug ON u.id = ug.id_user JOIN groupp g ON g.id = ug.id_group
WHERE
  g.name = 'Automacao141';
   
-- 2) Mostrar o nome de cada empresa e sua respectiva menor, maior e média das avaliações. Ordenado da maior média para a menor.
SELECT 
  c.name,
  min(r.score),
  avg(r.score) as media,
  max(r.score)
FROM 
  company c, 
  rating r
WHERE
  c.id = r.id_company
GROUP BY
  c.name
ORDER BY
  media DESC;

-- 3) Mostrar o nome de cada usuário com o respectivo número de partidas que jogou e o preço total que pagou.
SELECT 
  u.name,
  count(*) as numero_partidas,
  sum(pay.price) as total_pago
FROM 
  userr u
  JOIN
  plays p
  ON u.id = p.id_user
  JOIN
  match m
  ON m.id = p.id_match
  JOIN
  payment pay
  ON m.id = pay.id_match
GROUP BY
  u.name;

-- 4) Mostrar o nome de cada usuário com o respectivo número de partidas de futebol que jogou, gols marcados e gols sofridos pelo time em que estava jogando.
SELECT 
  u.name,
  count(*) as partidas_futebol,
  sum(case when p.team = true then m.result_1 else m.result_0 end) as gols_pro,
  sum(case when p.team = true then m.result_0 else m.result_1 end) as gols_contra 
FROM 
  userr u
  JOIN
  plays p
  ON u.id = p.id_user
  JOIN
  match m
  ON m.id = p.id_match
  JOIN
  sport s
  ON s.id = m.id_sport
WHERE
  s.category = 'futebol'
GROUP BY
  u.name;



