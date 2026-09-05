# Gerenciamento de Logins - SQL Server

Repositório com scripts de estudo sobre criação e administração de logins no SQL Server, abordando políticas de senha, banco/idioma padrão e controle de acesso.

## 🛠️ Tecnologias utilizadas

- **SQL Server** (T-SQL)
- Comandos de segurança (`CREATE LOGIN`, `ALTER LOGIN`)
- Catálogo de sistema (`sys.server_principals`)

## 📂 Como o sistema funciona

O script `sistema_vendas.sql`:

- Cria o banco `sistema_vendas`
- Cria o login `login_relatorios`, com senha, política de senha ativa (`CHECK_POLICY`), banco padrão e idioma padrão definidos
- Consulta os logins existentes no servidor via `sys.server_principals`
- Altera a senha de um login já existente
- Desabilita e reabilita o acesso do login (`DISABLE` / `ENABLE`)

## 🗃️ Estrutura de dados

- `sistema_vendas` — banco de dados criado como ambiente de testes
- `login_relatorios` — login de exemplo, com banco padrão `sistema_vendas` e idioma `Portuguese`

## ✅ Pré-requisitos

- SQL Server instalado (ou SQL Server Express)
- SQL Server Management Studio (SSMS) ou Azure Data Studio
- Permissão de administrador no servidor (necessária para `CREATE LOGIN` / `ALTER LOGIN`)

## ⚙️ Instalação e configuração

1. Clone o repositório:
   ```bash
   git clone <url-do-repositorio>
   ```
2. Abra o SSMS (ou Azure Data Studio) e conecte à sua instância local do SQL Server
3. Abra o arquivo `.sql`
4. Execute o script inteiro (ou por blocos, seguindo os comentários) com `F5`

## 💡 Exemplos de uso

```sql
-- Verificar se um login está ativo
SELECT name, type_desc, is_disabled
FROM sys.server_principals
WHERE name = 'login_relatorios';
```

## 📌 Status do projeto

Em desenvolvimento — scripts de estudo, sujeitos a evolução conforme novos conteúdos da aula.

## 🗺️ Roadmap / próximos passos

- [ ] Criar usuário de banco (`CREATE USER`) vinculado ao login
- [ ] Atribuir permissões específicas (`GRANT`/`DENY`) em vez de acesso total
- [ ] Testar roles de servidor e de banco de dados

## 📜 Licença

Uso educacional — SENAC.

## 👤 Autor

**Luiz**

- 📧 Email: luizdayspring@gmail.com
- 📷 Instagram: [@lu1z_st](https://instagram.com/lu1z_st)
- 💼 LinkedIn: [linkedin.com/in/luiz-paulo-soares](https://linkedin.com/in/luiz-paulo-soares/)
- 💻 GitHub: [github.com/LuizPauloSoares](https://github.com/LuizPauloSoares)
