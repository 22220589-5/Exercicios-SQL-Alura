-- Consulta 3: Identificar o total de alunos por turma

select turmas.nome_turma, count(turma_alunos.id_aluno_fk) as quantidade
from 
	turma_alunos join turmas on turma_alunos.id_turma_fk = turmas.id_turma
group by
	turmas.id_turma, turmas.nome_turma;

-- Resultado = 2 alunos por turma
