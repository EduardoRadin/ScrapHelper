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
        <h3><img src="https://cdn-icons-png.flaticon.com/512/5432/5432506.png" width="22" style="vertical-align: middle; margin-right: 8px;"> <strong>Back-end Java</strong></h3>
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
  <a href="https://github.com/EduardoRadin/ScrapHelper/blob/main/Docs/DicionarioDeDados.md" target="_blank">Veja aqui o restante do <b>Dicionário de Dados</b>b></a>
</p>
</div>

  <div name="consultas">
    <h2>Exemplos de consultas no banco</h2>
    <ol>
      <li>
        <h3>Listar ordens de serviço com cliente, técnico e status</h3>
      </li>
      <li>
        <h3>Peças mais utilizadas por período</h3>
      </li>
      <li>
        <h3>Clientes atendidos no mês</h3>
      </li>
    </ol>
  </div>

   <div>
        <h1>
            🚀 Guia de Instalação e Uso do ScrapHelp
        </h1>

        <section>
            <h2>
                1. Baixando o Programa
            </h2>
            <p>
                Para começar, você precisará obter o código-fonte do projeto. Você pode clonar o repositório Git para a sua máquina local utilizando o comando abaixo no seu terminal:
            </p>
            <div>
                <code>git clone https://github.com/EduardoRadin/ScrapHelper.git</code>
            </div>
            <p>
                Após a clonagem, navegue até o diretório do projeto:
            </p>
            <div>
                <code>cd ScrapHelper</code>
            </div>
        </section>

        <section>
            <h2>
                2. Pré-requisitos
            </h2>
            <p>
                Certifique-se de ter os seguintes softwares instalados em sua máquina:
            </p>
            <ul>
                <li>
                    <span>Java Development Kit (JDK):</span> Versão 17 ou superior.
                    <a href="https://www.oracle.com/java/technologies/downloads/" target="_blank">Baixar JDK</a>
                </li>
                <li>
                    <span>PostgreSQL:</span> Banco de dados PostgreSQL instalado e em execução (versão 13 ou superior recomendada).
                    <a href="https://www.postgresql.org/download/" target="_blank">Baixar PostgreSQL</a>
                </li>
            </ul>
        </section>

        <section>
            <h2>
                3. Configuração do Banco de Dados
            </h2>
            <ol>
                <li>
                    <span>Crie o Banco de Dados:</span>
                    <p>Abra seu cliente PostgreSQL (ex: DBeaver, pgAdmin) e crie um novo banco de dados com o nome <code>ScrapHelper</code>.</p>
                    <div>
                        <code>CREATE DATABASE "ScrapHelper";</code>
                    </div>
                </li>
                <li>
                    <span>Configure as Credenciais de Conexão:</span>
                    <p>No arquivo <code>src/main/java/db/Conexao.java</code>, atualize as variáveis <code>USUARIO</code> e <code>SENHA</code> com as credenciais do seu usuário PostgreSQL:</p>
                    <div>
                        <pre><code>private static final String USUARIO = "seu_usuario_postgres";
private static final String SENHA = "sua_senha_postgres";</code></pre>
                    </div>
                </li>
                <li>
                    <span>Popule o Esquema do Banco de Dados:</span>
                    <p>Execute o script SQL <code>CriacaoDB.sql</code> no banco de dados <code>ScrapHelper</code>. Este script criará todas as tabelas e definirá as chaves primárias e estrangeiras.</p>
                    <p>Você pode fazer isso abrindo o arquivo <code>CriacaoDB.sql</code> no seu cliente PostgreSQL e executando-o.</p>
                </li>
            </ol>
        </section>

        <section>
            <h2>
                4. Execução da Aplicação
            </h2>
            <ol>
                <li>
                    <span>Compile o Projeto:</span>
                    <p>Navegue até o diretório raiz do projeto no seu terminal e compile o código Java:</p>
                    <div>
                        <code>javac src/main/java/**/*.java -d out</code>
                    </div>
                </li>
                <li>
                    <span>Execute a Aplicação:</span>
                    <p>Após a compilação, você pode executar a aplicação principal:</p>
                    <div>
                        <code>java -cp out main.Main</code>
                    </div>
                    <p>O sistema será iniciado no console, apresentando um menu de opções para interação.</p>
                </li>
            </ol>
        </section>
        <section>
            <h2>
                5. Como Utilizar o Sistema
            </h2>
            <p>
                Ao iniciar a aplicação, você verá um menu interativo no console. Para usar o sistema eficientemente:
            </p>
            <ul>
                <li>
                    <span>Ordem de Cadastro Recomendada:</span> Para evitar erros de chave estrangeira, é altamente recomendado seguir uma ordem lógica de cadastro:
                    <ul>
                        <li>Primeiro: <code>Estado</code> &rarr; <code>Município</code> &rarr; <code>CEP</code></li>
                        <li>Depois: <code>Cargo</code> &rarr; <code>Funcionário</code> &rarr; <code>Pessoa</code></li>
                        <li>Então: <code>Tipo de Endereço</code></li>
                        <li>Por fim: <code>Endereços de Funcionário/Pessoa</code>, <code>Equipamento</code>, <code>Peça</code>, <code>Ordem de Serviço</code> e <code>Peça Utilizada em OS</code>.</li>
                    </ul>
                </li>
                <li>
                    <span>Siga as Instruções:</span> O menu guiará você pelas opções de adicionar diferentes entidades ao sistema.
                </li>
                <li>
                    <span>Saída do Sistema:</span> Digite <code>sair</code> a qualquer momento no menu principal para encerrar a aplicação.
                </li>
            </ul>
        </section>

        <p>
            Este guia foi criado para facilitar a sua experiência com o ScrapHelp. Em caso de dúvidas, consulte a documentação completa no repositório.
        </p>
    </div>
    
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
