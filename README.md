**(Não é necessario utilizar o arquivo .sql ja que utilizei o laravel que cria direto com as migrates)**


# 🏠 Sistema de Cadastro de Pessoas e Imóveis (Laravel + MySQL)

Este sistema web permite o cadastro, listagem, edição e exclusão de **pessoas** e **imóveis**, onde cada imóvel está associado a um **contribuinte** (pessoa). Inclui autenticação personalizada sem uso de pacotes prontos.

## 🚀 Tecnologias

- **Backend:** Laravel
- **Banco de dados:** MySQL
- **Frontend:** Framework de componentes (ex: Bootstrap, Tailwind, etc)
- **Autenticação:** Implementada manualmente via `AuthController`

---

## ✅ Requisitos

- PHP >= 8.1  
- Composer  
- MySQL >= 5.7  
- Node.js e npm  
- Extensões PHP:
  - `pdo_mysql`
  - `openssl`
  - `mbstring`
  - `tokenizer`
  - `xml`
  - `ctype`
  - `json`
  - `bcmath`
  - `fileinfo`

---

## 💻 Instalação

### 1. Clone o repositório

```bash
git clone <URL_DO_REPOSITORIO>
cd nome-do-projeto
```

### 2. Instale as dependências

```bash
composer install
npm install && npm run dev
```

### 3. Crie o banco de dados MySQL

Abra o MySQL e execute:

```sql
CREATE DATABASE nome_do_banco CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

**Substitua `nome_do_banco` por um nome que desejar (ex: `sistema_imoveis`).**

### 4. Configure o `.env`

```bash
cp .env.example .env
php artisan key:generate
```

Edite o arquivo `.env` com suas configurações de banco:

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nome_do_banco
DB_USERNAME=seu_usuario
DB_PASSWORD=sua_senha
```

### 5. Rode as migrations

```bash
php artisan migrate
```
### 6. Rode as seeds(opcional: cria 100 usuarios e imoveis)
```bash
php artisan db:seed
```
### 7. Inicie o servidor

```bash
php artisan serve
```

Acesse: [http://localhost:8000](http://localhost:8000)

---

## 🧩 Estrutura do Banco de Dados

### Tabela `pessoas`

| Campo       | Tipo        | Descrição            |
|-------------|-------------|----------------------|
| id          | bigint      | Chave primária       |
| nome        | varchar     | Nome da pessoa       |
| cpf         | varchar(14) | CPF                  |
| nascimento  | date        | Data de nascimento   |
| sexo        | enum        | M ou F               |
| telefone    | varchar     | Telefone             |
| email       | varchar     | E-mail               |
| timestamps  | datetime    | created_at/updated_at|

### Tabela `imoveis`

| Campo           | Tipo    | Descrição                       |
|------------------|---------|---------------------------------|
| id              | bigint | Chave primária                 |
| logradouro      | varchar | Nome da rua                    |
| numero          | varchar | Número                         |
| bairro          | varchar | Bairro                         |
| complemento     | varchar | Complemento (opcional)         |
| contribuinte_id | bigint  | FK (relaciona com `pessoas`)   |
| timestamps      | datetime| created_at/updated_at          |

---

## 🔐 Autenticação

Gerenciada por um `AuthController`, com os métodos:

- `login(Request $request)`  
- `logout()`  
- `showLogin()`
- `showRegister()`
- `register(Request $request) 

As rotas protegidas usam o middleware `auth`.  
Senhas são criptografadas com `bcrypt`.

---

## ⚙️ Funcionalidades

- ✅ CRUD de Pessoas  
- ✅ CRUD de Imóveis vinculados a uma Pessoa  
- ✅ Login e Logout  
- ✅ Validação de dados no backend  
- ✅ Interface limpa e funcional  
- ✅ Consulta por filtro logradouro na route imoveis.index

---

## 🧠 Dicas Úteis

### Criar um usuário manualmente pelo Tinker

```bash
php artisan tinker
>>> \App\Models\User::create([
  'name' => 'Admin',
  'email' => 'admin@example.com',
  'password' => bcrypt('senha')
]);
```

### Resetar e recriar as tabelas

```bash
php artisan migrate:fresh --seed
```

---

## 💬 Contato

Caso tenha dúvidas ou queira contribuir, sinta-se à vontade para abrir uma _issue_ ou _pull request_.

---
