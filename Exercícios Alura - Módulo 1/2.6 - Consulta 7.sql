-- Consulta 7: Retornar o nome e a nota do aluno que possui a melhor nota na disciplina de Matemática

-- Ordenando as notas dos alunos da disciplina matemática pelo maior valor e 
-- destacando o primeiro valor (o maior) com a cláusula LIMIT 1
select
	alunos.nome_aluno, notas.valor_nota, disciplinas.nome_disciplina
from
	notas join disciplinas on notas.id_disciplina_fk = disciplinas.id_disciplina
    join alunos on notas.id_aluno_fk = alunos.id_aluno
where
	disciplinas.nome_disciplina = 'Matemática'
order by
	notas.valor_nota desc
LIMIT 1;


-- Versão alternativa mais complicada usando a função max() dentro de uma subconsulta no where
select
	alunos.nome_aluno, notas.valor_nota, disciplinas.nome_disciplina
from
	notas join disciplinas on notas.id_disciplina_fk = disciplinas.id_disciplina
    join alunos on notas.id_aluno_fk = alunos.id_aluno
where
	disciplinas.nome_disciplina = 'Matemática' 
    and 
    notas.valor_nota = (
		select 
			max(notas.valor_nota)
		from
			notas join disciplinas on notas.id_disciplina_fk = disciplinas.id_disciplina
		where
			disciplinas.nome_disciplina = 'Matemática'
    );

/*
Resultado:
Carolina Oliveira - 9.40 - Matemática
*/
