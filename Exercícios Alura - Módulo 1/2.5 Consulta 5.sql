-- Consulta 5: Criar uma view que apresenta o nome, a disciplina e a nota dos alunos

-- Cria a view info_alunos com 3 campos: nome do aluno, nome da disciplina e as notas,
-- ordenando da maior nota para a menor
create view info_alunos as
select
	alunos.nome_aluno, disciplinas.nome_disciplina, notas.valor_nota
from
	alunos join notas on alunos.id_aluno = notas.id_aluno_fk
    join disciplinas on disciplinas.id_disciplina = notas.id_disciplina_fk
order by
	alunos.nome_aluno, notas.valor_nota desc;
    
-- Mostra a view criada com os alunos, a disciplina e as notas
select * from info_alunos;
