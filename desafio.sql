CREATE DATABASE EscolaDB;
USE EscolaDB;

CREATE TABLE Alunos (
    AlunoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Cursos (
    CursoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT
);

CREATE TABLE Inscricoes (
    InscricaoID INT AUTO_INCREMENT PRIMARY KEY,
    AlunoID INT,
    CursoID INT,
    DataInscricao DATE,
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

INSERT INTO Alunos (Nome, Email) VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Carlos Souza', 'carlos.souza@email.com'),
('Ana Júlia', 'ana.julia@email.com');

INSERT INTO Cursos (Nome, Descricao) VALUES
('Matemática', 'Curso de Matemática Básica'),
('Português', 'Curso de Português Avançado'),
('Ciências', 'Curso de Ciências da Natureza'),
('História', 'Curso de História do Brasil');

INSERT INTO Inscricoes (AlunoID, CursoID, DataInscricao) VALUES
(1, 1, '2024-02-01'),
(1, 2, '2024-02-15'),
(2, 1, '2024-02-03'),
(3, 3, '2024-02-20'),
(4, 4, '2024-02-25'),
(2, 4, '2024-02-28');

-- Exercício 1:
-- Obter o nome de todos os alunos inscritos no curso de "Matemática".

-- Exercício 2:
-- Listar todos os cursos em que o aluno "João Silva" está inscrito.

-- Exercício 3:
-- Encontrar o nome e email de todos os alunos inscritos em pelo menos um curso.

-- Exercício 4:
-- Listar todos os alunos e os cursos aos quais estão inscritos, incluindo a data de inscrição.

---======---

-- Exercício 5: 
-- Contar o Número de Alunos por Curso

-- Exercício 6: 
-- Listar o Último Curso em que os Alunos se Inscreveram

-- Exercício 7: 
-- Listar Cursos e Seus Alunos em Ordem Alfabética
