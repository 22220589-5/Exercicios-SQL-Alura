-- Consulta 5: Criar uma view que apresenta o nome, a disciplina e a nota dos alunos

-- cria a view info_alunos com 3 campos: nome do aluno, nome da disciplina e as notas
create view info_alunos as
select
	alunos.nome_aluno, disciplinas.nome_disciplina, notas.valor_nota
from
	alunos join turma_alunos on alunos.id_aluno = turma_alunos.id_aluno_fk
    join turma_disciplinas on turma_disciplinas.id_turma_fk = turma_alunos.id_turma_fk
    join disciplinas on disciplinas.id_disciplina = turma_disciplinas.id_disciplina_fk
    join notas on notas.id_disciplina_fk = disciplinas.id_disciplina;
    
-- Mostra os alunos, a disciplina e as notas
select * from info_alunos;
