CREATE TABLE [tb_postagem] (
	id bigint NOT NULL,
	titulo varchar NOT NULL,
	status varchar NOT NULL,
	data date NOT NULL,
	texto varchar NOT NULL,
	link varchar NOT NULL,
	tema_id bigint NOT NULL,
	usuario_id bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGEM] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_tema] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	descricao varchar(510) NOT NULL,
  CONSTRAINT [PK_TB_TEMA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuario] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	usuario varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
	tipo varchar(255) NOT NULL,
	foto varchar(510) NOT NULL,
  CONSTRAINT [PK_TB_USUARIO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [tb_postagem] WITH CHECK ADD CONSTRAINT [tb_postagem_fk0] FOREIGN KEY ([tema_id]) REFERENCES [tb_tema]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagem] CHECK CONSTRAINT [tb_postagem_fk0]
GO
ALTER TABLE [tb_postagem] WITH CHECK ADD CONSTRAINT [tb_postagem_fk1] FOREIGN KEY ([usuario_id]) REFERENCES [tb_usuario]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagem] CHECK CONSTRAINT [tb_postagem_fk1]
GO



