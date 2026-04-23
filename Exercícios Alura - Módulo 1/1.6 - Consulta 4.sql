/*Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.*/

select timestampdiff(year, data_nascimento_aluno, curdate()) from alunos;

/*Resultado: será a idade de todos os alunos considerando a diferença da data vigente e a data de nascimento do aluno*/
