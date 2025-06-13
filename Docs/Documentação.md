# 📦 ScrapHelp – Sistema de Assistência Técnica

O **ScrapHelp** é um sistema voltado para a gestão de assistências técnicas, com foco em organização, controle de ordens de serviço e atendimento ao cliente. Desenvolvido para facilitar a rotina de técnicos e administradores, o sistema oferece recursos completos para lidar com o fluxo diário de consertos, equipamentos, relatórios e mais.

## ✅ Requisitos Funcionais

### 1. Gestão de Clientes
- Cadastro de clientes com nome, endereço, telefone, e-mail e NIF.  
- Edição e exclusão de registros de clientes.  
- Consulta ao histórico de atendimentos de cada cliente.

### 2. Gestão de Equipamentos
- Cadastro de equipamentos com informações como tipo, marca, modelo e número de série.  
- Associação de cada equipamento ao respectivo cliente.  
- Registro do estado do equipamento no momento da entrada.

### 3. Ordens de Serviço
- Criação de ordens de serviço contendo problema relatado, técnico responsável, data de entrada e status.  
- Atualização de status da ordem (ex: em análise, em reparação, aguardando peças, concluído, entregue).  
- Registro de peças utilizadas e serviços realizados.  
- Geração de orçamentos com base nas informações da ordem.

### 4. Gestão de Técnicos
- Cadastro de técnicos.  
- Atribuição de ordens de serviço a técnicos específicos.

### 5. Relatórios
- Relatórios de ordens de serviço por período.  
- Relatórios de clientes atendidos.  
- Relatórios das peças mais utilizadas.

### 6. Autenticação de Usuários
- Sistema de login para técnicos e administradores.  
- Controle de permissões (ex: técnicos não podem excluir clientes).

## ⚙️ Requisitos Não Funcionais

- Interface intuitiva, responsiva e fácil de usar em diferentes dispositivos.  
- Sistema com segurança robusta e proteção de dados sensíveis.  
- Utilização de banco de dados relacional (ex: MySQL, PostgreSQL).  
- Mecanismos de backup periódicos para garantir integridade dos dados.

## 🧠 Regras de Negócio

- Não é possível finalizar uma ordem de serviço sem definir um diagnóstico e uma solução.  
- Cada cliente pode ter múltiplos equipamentos cadastrados.  
- Uma ordem de serviço só pode ser atribuída a um técnico por vez.

---

Este projeto visa otimizar o trabalho em oficinas e centros de assistência técnica, garantindo mais controle, agilidade e segurança na prestação de serviços.

## 🗃️ Modelo de Dados (ER)
- Imagem do modelo entidade-relacionamento:

👉 [Ver imagem do Modelo ER](Imagens/MER_ScrapHelper.jpeg)

## 📋 Dicionário de Dados
- [será colocada uma tabela com todos os dados organizados]