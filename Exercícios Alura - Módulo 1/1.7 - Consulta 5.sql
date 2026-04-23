/*Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado se a sua nota foi igual ou maior que 6.*/

/*O código abaixo calcula a quantidade de alunos aprovados (21) e reprovados (29) segundo o critério do enunciado:*/

select count(*) as Quantidade,
case 
	when valor_nota >= 6 then 'Aprovado'
    else 'Reprovado'
end as Status_Aluno
from notas
group by Status_Aluno;

/*Caso haja a necessidade de expandir a tabela com o detalhemtno dos alunos, suas notas e o seu status de aprovação:*/

select alunos.nome_aluno, notas.valor_nota,
case 
	when notas.valor_nota >= 6 then 'Aprovado'
    else 'Reprovado'
end as Status_Aluno
from notas join alunos
on notas.id_aluno_fk = alunos.id_aluno;
