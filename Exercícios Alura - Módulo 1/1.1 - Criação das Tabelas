/*CRIAÇÃO DAS TABELAS:*/

create table alunos (
	id_aluno int not null auto_increment,
    primary key(id_aluno),
    nome_aluno varchar(50) not null,
    data_nascimento_aluno date not null,
    genero_aluno enum('M', 'F'),
    endereco_aluno varchar(50),
    telefone_aluno varchar(20),
    email_aluno varchar(25)
);

create table professores (
	id_professor int not null auto_increment,
    primary key(id_professor),
    nome_professor varchar(50) not null,
    data_nascimento_professor date not null,
    genero_professor enum('M', 'F'),
    telefone_professor varchar(20),
    email_professor varchar(25)
);

create table disciplinas (
	id_disciplina int not null auto_increment,
    primary key (id_disciplina),
    nome_disciplina varchar(50) not null,
    descricao varchar(100) not null,
    carga_horaria int unsigned not null,
    id_professor_fk int,
    foreign key (id_professor_fk) references professores(id_professor)
);

create table turmas (
	id_turma int not null auto_increment,
    primary key (id_turma),
    nome_turma varchar(20) not null,
    ano_letivo year,
    id_professor_fk int,
    foreign key (id_professor_fk) references professores(id_professor)
);

create table turma_disciplinas (
	id_turma_fk int,
    id_disciplina_fk int,
    primary key(id_turma_fk, id_disciplina_fk),
    foreign key (id_turma_fk) references turmas(id_turma),
    foreign key (id_disciplina_fk) references disciplinas(id_disciplina)
);

create table turma_alunos (
	id_turma_fk int,
    id_aluno_fk int,
    primary key(id_turma_fk, id_aluno_fk),
    foreign key (id_turma_fk) references turmas(id_turma),
    foreign key (id_aluno_fk) references alunos(id_aluno)
);
    
create table notas (
	id_nota int not null auto_increment,
    primary key(id_nota),
    id_aluno_fk int,
    foreign key (id_aluno_fk) references alunos(id_aluno),
    id_disciplina_fk int,
    foreign key(id_disciplina_fk) references disciplinas(id_disciplina),
    valor_nota decimal(5,2),
    data_avaliacao date
);
