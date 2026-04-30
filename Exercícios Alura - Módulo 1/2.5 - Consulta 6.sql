-- Consulta 6: Buscar o nome do professor e a turma que ele é orientador

select 
	professores.nome_professor,  turmas.nome_turma
from 
	professores join turmas on professores.id_professor = turmas.id_professor_fk;

/*
Resultado:
Ana Oliveira - Turma A
Carlos Ferreira - Turma B
Mariana Santos - Turma C
Ricardo Silva - Turma D
Fernanda Lima - Turma E
*/
