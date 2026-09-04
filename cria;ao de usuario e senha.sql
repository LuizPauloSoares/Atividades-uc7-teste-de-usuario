CREATE DATABASE sistema_vendas

USE sistema_vendas

CREATE LOGIN login_relatorios -- nome de usuario
WITH PASSWORD ='rel@2026', -- senha do usuario 
CHECK_POLICY = ON, --  politica de senha ativa (de tempo em tempo tera q alterar a senha )
DEFAULT_DATABASE = sistema_vendas, -- definindo banco padrao
DEFAULT_LANGUAGE = Portuguese;  -- idioma padrao
go


-- visualizando logins ja existentes no servidor
SELECT name,type_desc
FROM sys.server_principals;

SELECT * FROM sys.server_principals;

-- alterando um login existente (alterando a senha)
ALTER LOGIN login_relatorios
WITH PASSWORD = 'nova@senha123';

-- bloqueando acesso temporariamente
ALTER LOGIN login_relatorios DISABLE;

-- reativar login
ALTER LOGIN login_relatorios ENABLE;

