# Login Management - SQL Server

[🇧🇷 Português](README.md) | [🇺🇸 English](README.en.md)

Repository with study scripts on creating and administering logins in SQL Server, covering password policies, default database/language and access control.

## 🛠️ Technologies

- **SQL Server** (T-SQL)
- Security commands (`CREATE LOGIN`, `ALTER LOGIN`)
- System catalog (`sys.server_principals`)

## 📂 How it works

The `sistema_vendas.sql` script:

- Creates the `sistema_vendas` database
- Creates the `login_relatorios` login, with a password, active password policy (`CHECK_POLICY`), and a default database and default language defined
- Queries the existing logins on the server via `sys.server_principals`
- Changes the password of an existing login
- Disables and re-enables the login's access (`DISABLE` / `ENABLE`)

## 🗃️ Data structure

- `sistema_vendas` — database created as a test environment
- `login_relatorios` — example login, with default database `sistema_vendas` and language `Portuguese`

## ✅ Prerequisites

- SQL Server installed (or SQL Server Express)
- SQL Server Management Studio (SSMS) or Azure Data Studio
- Administrator permission on the server (required for `CREATE LOGIN` / `ALTER LOGIN`)

## ⚙️ Installation and setup

1. Clone the repository:
   ```bash
   git clone https://github.com/LuizPauloSoares/REPOSITORY-NAME.git
   ```
2. Open SSMS (or Azure Data Studio) and connect to your local SQL Server instance
3. Open the `.sql` file
4. Run the whole script (or block by block, following the comments) with `F5`

## 💡 Usage examples

```sql
-- Check whether a login is active
SELECT name, type_desc, is_disabled
FROM sys.server_principals
WHERE name = 'login_relatorios';
```

## 📌 Project status

In development — study scripts, subject to change as new class content is covered.

## 🗺️ Roadmap / next steps

- [ ] Create a database user (`CREATE USER`) linked to the login
- [ ] Assign specific permissions (`GRANT`/`DENY`) instead of full access
- [ ] Test server and database roles

## 📜 License

Educational use — SENAC.

## 👤 Author

**Luiz Paulo Soares**

- 📧 Email: luizdayspring@gmail.com
- 📷 Instagram: [@lu1z_st](https://instagram.com/lu1z_st)
- 💼 LinkedIn: [linkedin.com/in/luiz-paulo-soares](https://linkedin.com/in/luiz-paulo-soares/)
- 💻 GitHub: [github.com/LuizPauloSoares](https://github.com/LuizPauloSoares)
