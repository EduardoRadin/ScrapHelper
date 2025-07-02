<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.6; max-width: 1000px; margin: auto;">

  <h1 align="center">📦 ScrapHelp – Sistema de Assistência Técnica</h1>

  <div name="resumo" align="justify">
    <h2>O que é o nosso projeto?</h2>
    <p>
      O <strong>ScrapHelp</strong> é um sistema desenvolvido para facilitar a <strong>gestão de assistências técnicas</strong> 🛠️, com foco na <strong>organização</strong>, <strong>controle de ordens de serviço</strong> 📋 e <strong>atendimento ao cliente</strong> 🤝. <br>
      Desenhado para simplificar a rotina de <strong>técnicos</strong> 👨‍🔧 e <strong>administradores</strong> 👩‍💼, o sistema oferece recursos completos para gerir:
    </p>
    <ul>
      <li>🔧 Consertos</li>
      <li>🖥️ Equipamentos</li>
      <li>📊 Relatórios</li>
      <li>E muito mais!</li>
    </ul>
  </div>

  <div name="funcionalidades" align="justify">
    <h2>Funcionalidades do Sistema</h2>
    <ul>
      <li>Cadastro de clientes, técnicos e equipamentos</li>
      <li>Gestão completa de ordens de serviço</li>
      <li>Controle de peças utilizadas</li>
      <li>Geração de relatórios</li>
      <li>Sistema de login com permissões</li>
    </ul>
  </div>

  <div name="ferramentas" align="justify">
    <h2>Quais foram as ferramentas utilizadas?</h2>
    <ol>
      <li>
        <h3><img src="https://media.imgcdn.org/repo/2024/02/visual-paradigm-dev-tool/65c09c6c6d843-visual-paradigm-dev-tool-Icon.webp" width="22" style="vertical-align: middle; margin-right: 8px;"> <strong>Visual Paradigm</strong></h3>
        <p>Utilizada para modelagem das tabelas do banco de dados (Modelo Entidade Relacionamento - ER).</p>
      </li>
      <li>
        <h3><img src="https://img.icons8.com/?size=100&id=13679&format=png&color=000000" width="22" style="vertical-align: middle; margin-right: 8px;"> <strong>Back-end Java</strong></h3>
        <p>Responsável pela lógica de negócios do sistema e comunicação com o banco de dados.</p>
      </li>
      <li>
        <h3><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/540px-Postgresql_elephant.svg.png" width="22" style="vertical-align: middle; margin-right: 8px;"> <strong>PostgreSQL</strong></h3>
        <p>Banco de dados relacional utilizado para armazenar as informações do sistema.</p>
      </li>
      <li>
        <h3><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/DBeaver_logo.svg/1024px-DBeaver_logo.svg.png" width="22" style="vertical-align: middle; margin-right: 8px;"> <strong>DBeaver</strong></h3>
        <p>Utilizado como ferramenta de gerenciamento e visualização do banco de dados.</p>
      </li>
    </ol>
  </div>

  <div name="mr-projeto" align="center">
  <h2>Modelo Relacional do Projeto</h2>
  <img src="https://github.com/EduardoRadin/ScrapHelper/blob/main/Docs/Images/MER_ScrapHelper.png?raw=true" height="600px" width="800px">
</div>

  <br>

  <div name="tabelas">
  <h2>Dicionário de Dados - ScrapHelp</h2>

  <h3>🧑‍💼 USUARIO</h3>
  <table border="1" cellspacing="0" cellpadding="5">
    <tr><th>Column Name</th><th>Data Type</th><th>PK / FK</th><th>Nullable</th><th>Description</th></tr>
    <tr><td>COD_FUNCIONARIO</td><td>int4</td><td>FK</td><td>No</td><td></td></tr>
    <tr><td>USU_PERMISSAO</td><td>int4</td><td>FK</td><td>No</td><td></td></tr>
    <tr><td>USU_LOGIN</td><td>varchar(50)</td><td></td><td>No</td><td>Login do funcionário</td></tr>
    <tr><td>USU_SENHA</td><td>varchar(50)</td><td></td><td>No</td><td>Senha do usuário</td></tr>
  </table>

  <h3>🧩 OS_PECA_UTILIZADA</h3>
  <table border="1" cellspacing="0" cellpadding="5">
    <tr><th>Column Name</th><th>Data Type</th><th>PK / FK</th><th>Nullable</th><th>Description</th></tr>
    <tr><td>PECA_ID</td><td>int4</td><td>FK</td><td>No</td><td></td></tr>
    <tr><td>COD_OS</td><td>int4</td><td>FK</td><td>No</td><td></td></tr>
    <tr><td>QUANTIDADE</td><td>int4</td><td></td><td>No</td><td>Quantidade de peças utilizadas</td></tr>
  </table>

  <h3>⚙️ PECA</h3>
  <table border="1" cellspacing="0" cellpadding="5">
    <tr><th>Column Name</th><th>Data Type</th><th>PK / FK</th><th>Nullable</th><th>Description</th></tr>
    <tr><td>PECA_ID</td><td>int4</td><td>PK</td><td>No</td><td></td></tr>
    <tr><td>PECA_NOME</td><td>varchar(30)</td><td></td><td>No</td><td>Nome da peça</td></tr>
    <tr><td>PECA_DESCRICAO</td><td>varchar(100)</td><td></td><td>No</td><td>Descrição da peça</td></tr>
    <tr><td>PECA_PRECO</td><td>numeric(8, 2)</td><td></td><td>No</td><td>Preço da peça</td></tr>
  </table>

  <h3>🛡️ PERMISSAO</h3>
  <table border="1" cellspacing="0" cellpadding="5">
    <tr><th>Column Name</th><th>Data Type</th><th>PK / FK</th><th>Nullable</th><th>Description</th></tr>
    <tr><td>PER_COD</td><td>int4</td><td>PK</td><td>No</td><td>Código do nível de permissão</td></tr>
    <tr><td>PER_DESCRICAO</td><td>char(1)</td><td></td><td>No</td><td>A - Administrador, T - Técnico</td></tr>
  </table>

  <h3>🧾 ORDEM_SERVICO</h3>
  <table border="1" cellspacing="0" cellpadding="5">
    <tr><th>Column Name</th><th>Data Type</th><th>PK / FK</th><th>Nullable</th><th>Description</th></tr>
    <tr><td>OS_COD</td><td>int4</td><td>PK</td><td>No</td><td>Código da ordem de serviço</td></tr>
    <tr><td>COD_EQP</td><td>int4</td><td>FK</td><td>No</td><td>Código do equipamento</td></tr>
    <tr><td>COD_FUN</td><td>int4</td><td>FK</td><td>No</td><td>Funcionário responsável</td></tr>
    <tr><td>OS_DATA_ENTRADA</td><td>date</td><td></td><td>No</td><td>Data de entrada</td></tr>
    <tr><td>OS_DATA_CONCLUSAO</td><td>date</td><td></td><td>No</td><td>Data de conclusão</td></tr>
    <tr><td>OS_EQP_STATUS</td><td>varchar(50)</td><td></td><td>No</td><td>Estado do equipamento</td></tr>
    <tr><td>OS_EQP_PROBLEMA</td><td>varchar(50)</td><td></td><td>No</td><td>Problema do equipamento</td></tr>
    <tr><td>OS_ORCAMENTO</td><td>numeric(8, 2)</td><td></td><td>No</td><td>Orçamento da ordem de serviço</td></tr>
    <tr><td>OS_SERVICO_REALIZADO</td><td>varchar(200)</td><td></td><td>No</td><td>Serviços realizados no equipamento</td></tr>
  </table>
<p>
  <a href="https://github.com/EduardoRadin/ScrapHelper/blob/main/Docs/DicionarioDeDados.md" target="_blank">Veja aqui o restante do <b>Dicionário de Dados</b></a>
</p>
</div>

  <div name="consultas">
    <h2>Exemplos de consultas no banco</h2>
    <ol>
      <li>
        <h3>Relatório de Clientes Ativos</h3>
      </li>
      <li>
        <h3>Relatório de Equipamentos por Cliente</h3>
      </li>
      <li>
        <h3>Relatório de Ordens de Serviço Atribuídas</h3>
      </li>
       <li>
        <h3>Relatório Resumido de Ordens por Técnico</h3>
      </li>
    </ol>
  </div>

## 🚀 Instalação e Execução

Siga os passos abaixo para configurar e executar o projeto ScrapHelp em seu ambiente local:

### Pré-requisitos

* **Java Development Kit (JDK):** Versão 17 ou superior.
* **PostgreSQL:** Banco de dados PostgreSQL instalado e em execução (versão 13 ou superior recomendada).

### Configuração do Banco de Dados

1.  **Crie o Banco de Dados:**
    Abra seu cliente PostgreSQL (ex: DBeaver, pgAdmin) e crie um novo banco de dados com o nome `ScrapHelper`.
    *(Alternativamente, você pode executar o comando SQL `CREATE DATABASE "ScrapHelper";`)*

2.  **Configure as Credenciais de Conexão:**
    No arquivo `src/main/java/db/Conexao.java`, atualize as variáveis `USUARIO` e `SENHA` com as credenciais do seu usuário PostgreSQL:
    ```java
    private static final String USUARIO = "seu_usuario_postgres";
    private static final String SENHA = "sua_senha_postgres";
    ```

3.  **Popule o Esquema do Banco de Dados:**
    Execute o script SQL `CriacaoDB.sql` no banco de dados `ScrapHelper` que você acabou de criar. Este script criará todas as tabelas e definirá as chaves primárias e estrangeiras.

### Execução da Aplicação

1.  **Compile o Projeto:**
    Navegue até o diretório raiz do projeto no seu terminal e compile o código Java:
    ```bash
    javac src/main/java/**/*.java -d out
    ```
2.  **Execute a Aplicação:**
    Após a compilação, você pode executar a aplicação principal:
    ```bash
    java -cp out main.Main
    ```
    O sistema será iniciado no console, apresentando um menu de opções para interação.

---

## 💡 Como Usar

Ao iniciar a aplicação, você verá um menu interativo no console. Para usar o sistema eficientemente:

1.  **Ordem de Cadastro Recomendada:** Para evitar erros de chave estrangeira, é recomendado seguir uma ordem lógica de cadastro:
    * Primeiro: `Estado` -> `Município` -> `CEP`
    * Depois: `Cargo` -> `Funcionário` -> `Pessoa`
    * Então: `Tipo de Endereço`
    * Por fim: `Endereços de Funcionário/Pessoa`, `Equipamento`, `Peça`, `Ordem de Serviço` e `Peça Utilizada em OS`.
2.  **Siga as Instruções:** O menu guiará você pelas opções de adicionar diferentes entidades ao sistema.
3.  **Saída do Sistema:** Digite `sair` a qualquer momento no menu principal para encerrar a aplicação.

---

    
  <div name="criadores">
    <h2>Criadores (Perfis do GitHub)</h2>
    <table>
      <tr>
        <th>Avatar</th>
        <th>Nome</th>
        <th>GitHub</th>
      </tr>
      <tr>
        <td><img src="https://avatars.githubusercontent.com/u/193429938?v=4" width="60" height="60"></td>
        <td>Eduardo Radin Valer</td>
        <td><a href="https://github.com/EduardoRadin" target="_blank">github.com/EduardoRadin</a></td>
      </tr>
      <tr>
        <td><img src="https://avatars.githubusercontent.com/u/168592464?v=4" width="60" height="60"></td>
        <td>Emilly Vani</td>
        <td><a href="https://github.com/Eminyx" target="_blank">github.com/Eminyx</a></td>
      </tr>
      <tr>
        <td><img src="https://avatars.githubusercontent.com/u/185637281?v=4" width="60" height="60"></td>
        <td>Lucas Bradacz</td>
        <td><a href="https://github.com/LucasBradacz" target="_blank">github.com/LucasBradacz</a></td>
      </tr>
      <tr>
        <td><img src="https://avatars.githubusercontent.com/u/125129885?v=4" width="60" height="60"></td>
        <td>Matheus Henrique</td>
        <td><a href="https://github.com/Matheus-HDS" target="_blank">github.com/Matheus-HDS</a></td>
      </tr>
      <tr>
        <td><img src="https://avatars.githubusercontent.com/u/205243776?v=4" width="60" height="60"></td>
        <td>Eric Camini</td>
        <td><a href="https://github.com/eric-camini482" target="_blank">github.com/eric-camini482</a></td>
      </tr>
    </table>
  </div>

  <br>
  <p align="center">Feito com 💙 por uma equipe dedicada ao bom funcionamento das assistências técnicas!</p>

</body>
</html>
