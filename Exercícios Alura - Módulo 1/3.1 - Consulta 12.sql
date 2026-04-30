-- Consulta 12: Retorne os alunos que estão aprovados na disciplina de matemática

select
	disciplinas.nome_disciplina as Disciplina,
    alunos.nome_aluno as Nome_Aluno,
    notas.valor_nota as Nota
from 
	disciplinas join notas on disciplinas.id_disciplina = notas.id_disciplina_fk
    join alunos on alunos.id_aluno = notas.id_aluno_fk
where
	disciplinas.nome_disciplina = 'Matemática' and notas.valor_nota >= 7.0
order by
	Nota desc;
