### ✅ **Requisitos Funcionais**

---

### 1️⃣ **Gestão de Clientes** 👥  
- 📇 Cadastro de clientes com nome, endereço, telefone, e-mail e NIF.  
- ✏️ Edição e exclusão de registros de clientes.  
- 📜 Consulta do histórico de atendimentos de cada cliente.

---

### 2️⃣ **Gestão de Equipamentos** ⚙️  
- 📝 Cadastro de equipamentos com informações como tipo, marca, modelo e número de série.  
- 🔗 Associação de cada equipamento ao respetivo cliente.  
- 🛠️ Registro do estado do equipamento no momento da entrada.

---

### 3️⃣ **Ordens de Serviço** 📋  
- 🆕 Criação de ordens de serviço contendo problema relatado, técnico responsável, data de entrada e status.  
- 🔄 Atualização do status da ordem (ex: *em análise*, *em reparação*, *aguardando peças*, *concluído*, *entregue*).  
- 🧩 Registro de peças utilizadas e serviços realizados.  
- 💰 Geração de orçamentos com base nas informações da ordem.

---

### 4️⃣ **Gestão de Técnicos** 🧑‍🔧  
- 👤 Cadastro de técnicos.  
- 📌 Atribuição de ordens de serviço a técnicos específicos.

---

### 5️⃣ **Relatórios** 📊  
- 📆 Relatórios de ordens de serviço por período.  
- 🧾 Relatórios de clientes atendidos.  
- ⚙️ Relatórios das peças mais utilizadas.

---

### 6️⃣ **Autenticação de Usuários** 🔐  
- 🔑 Sistema de login para técnicos e administradores.  
- 🚫 Controle de permissões (ex: técnicos não podem excluir clientes).

---

### 🚀 **Requisitos Não Funcionais**

- 📱 Interface intuitiva, responsiva e fácil de usar em diferentes dispositivos.  
- 🛡️ Sistema com segurança robusta e proteção de dados sensíveis.  
- 🗃️ Utilização de banco de dados relacional (ex: MySQL, PostgreSQL).  
- ♻️ Mecanismos de backup periódicos para garantir integridade dos dados.

---

### 📌 **Regras de Negócio**

- ❗ Não é possível finalizar uma ordem de serviço sem definir um diagnóstico e uma solução.  
- 🔁 Cada cliente pode ter múltiplos equipamentos cadastrados.  
- 👨‍🔧 Uma ordem de serviço só pode ser atribuída a um técnico por vez.
