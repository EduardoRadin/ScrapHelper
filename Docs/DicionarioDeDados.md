## 🧑‍💼 USUARIO
| Column Name      | Data Type    | PK / FK | Nullable | Description           |
|------------------|--------------|---------|----------|-----------------------|
| COD_FUNCIONARIO  | int4         | FK      | No       |                       |
| USU_PERMISSAO    | int4         | FK      | No       |                       |
| USU_LOGIN        | varchar(50)  |         | No       | Login do funcionário  |
| USU_SENHA        | varchar(50)  |         | No       | Senha do usuário      |

## 🧩 OS_PECA_UTILIZADA
| Column Name | Data Type | PK / FK | Nullable | Description                    |
|-------------|-----------|---------|----------|--------------------------------|
| PECA_ID     | int4      | FK      | No       |                                |
| COD_OS      | int4      | FK      | No       |                                |
| QUANTIDADE  | int4      |         | No       | Quantidade de peças utilizadas |

## ⚙️ PECA
| Column Name     | Data Type     | PK / FK | Nullable | Description         |
|-----------------|---------------|---------|----------|---------------------|
| PECA_ID         | int4          | PK      | No       |                     |
| PECA_NOME       | varchar(30)   |         | No       | Nome da peça        |
| PECA_DESCRICAO  | varchar(100)  |         | No       | Descrição da peça   |
| PECA_PRECO      | numeric(8, 2) |         | No       | Preço da peça       |

## 🛡️ PERMISSAO
| Column Name    | Data Type | PK / FK | Nullable | Description                      |
|----------------|-----------|---------|----------|----------------------------------|
| PER_COD        | int4      | PK      | No       | Código do nível de permissão     |
| PER_DESCRICAO  | char(1)   |         | No       | A - Administrador, T - Técnico   |

## 🧾 ORDEM_SERVICO
| Column Name          | Data Type     | PK / FK | Nullable | Description                                |
|----------------------|---------------|---------|----------|--------------------------------------------|
| OS_COD               | int4          | PK      | No       | Código da ordem de serviço                 |
| COD_EQP              | int4          | FK      | No       | Código do equipamento                      |
| COD_FUN              | int4          | FK      | No       | Funcionário responsável                    |
| OS_DATA_ENTRADA      | date          |         | No       | Data de entrada                            |
| OS_DATA_CONCLUSAO    | date          |         | No       | Data de conclusão                          |
| OS_EQP_STATUS        | varchar(50)   |         | No       | Estado do equipamento                      |
| OS_EQP_PROBLEMA      | varchar(50)   |         | No       | Problema do equipamento                    |
| OS_ORCAMENTO         | numeric(8, 2) |         | No       | Orçamento da ordem de serviço              |
| OS_SERVICO_REALIZADO | varchar(200)  |         | No       | Serviços realizados no equipamento         |

## 🖥️ EQUIPAMENTO
| Column Name        | Data Type     | PK / FK | Nullable | Description                              |
|--------------------|---------------|---------|----------|------------------------------------------|
| EQP_ID             | int4          | PK      | No       |                                          |
| COD_PESSOA         | int4          | FK      | No       |                                          |
| EQP_TIPO           | varchar(25)   |         | No       | Tipo do equipamento                      |
| EQP_MARCA          | varchar(25)   |         | No       | Marca do equipamento                     |
| EQP_MODELO         | varchar(50)   |         | No       | Modelo do equipamento                    |
| EQP_NUM_SERIE      | numeric(30)   |         | No       | Número de série                          |
| EQP_ESTADO_ENTRADA | varchar(50)   |         | No       | Estado ao chegar na assistência técnica  |

## 🏙️ CEP
| Column Name | Data Type | PK / FK | Nullable | Description          |
|-------------|-----------|---------|----------|----------------------|
| CEP_COD     | int4      | PK      | No       | Código do CEP        |
| COD_MUN     | int4      | FK      | No       | Código do município  |

## 🏘️ MUNICIPIO
| Column Name  | Data Type   | PK / FK | Nullable | Description                        |
|--------------|-------------|---------|----------|------------------------------------|
| MUN_COD      | int4        | PK      | No       |                                    |
| COD_ESTADO   | int4        | FK      | No       | Código de identificação do estado |
| MUN_NOME     | varchar(50) |         | No       | Nome do município                  |

## 🗺️ ESTADO
| Column Name   | Data Type   | PK / FK | Nullable | Description     |
|---------------|-------------|---------|----------|-----------------|
| ESTADO_COD    | int4        | PK      | No       |                 |
| ESTADO_SIGLA  | varchar(2)  |         | No       | Sigla do estado |
| ESTADO_NOME   | varchar(20) |         | No       | Nome do estado  |

## 👔 CARGO
| Column Name    | Data Type     | PK / FK | Nullable | Description             |
|----------------|---------------|---------|----------|-------------------------|
| CARGO_COD      | int4          | PK      | No       | Código de identificação |
| CARGO_DESC     | varchar(50)   |         | No       | Descrição da função     |
| CARGO_SALARIO  | numeric(8, 2) |         | No       | Salário do funcionário  |

## 👨‍💼 FUNCIONARIO
| Column Name  | Data Type   | PK / FK | Nullable | Description            |
|--------------|-------------|---------|----------|------------------------|
| FUN_COD      | int4        | PK      | No       |                        |
| COD_CARGO    | int4        | FK      | No       |                        |
| FUN_NOME     | varchar(50) |         | No       | Nome do funcionário    |
| FUN_CPF      | numeric(11) |         | No       | CPF do funcionário     |
| FUN_RG       | numeric(9)  |         | No       | RG do funcionário      |
| FUN_DATA_NAS | date        |         | No       | Data de nascimento     |
| FUN_GEN      | char(1)     |         | Yes      | Gênero (M ou F)        |

## 🏠 TIPO_ENDERECO
| Column Name       | Data Type   | PK / FK | Nullable | Description              |
|-------------------|-------------|---------|----------|--------------------------|
| TIP_END_COD       | int4        | PK      | No       | ID do tipo de endereço   |
| TIP_END_DESCRICAO | varchar(50) |         | No       | Descrição do tipo        |

## 🏡 ENDERECO_FUN
| Column Name       | Data Type    | PK / FK | Nullable | Description                    |
|-------------------|--------------|---------|----------|--------------------------------|
| END_FUN_ID        | int4         | PK      | No       | ID do endereço do funcionário  |
| COD_FUNCIONARIO   | int4         | FK      | No       | Código do funcionário          |
| COD_TIPO_ENDERCO  | int4         | FK      | No       | Tipo do endereço               |
| COD_CEP           | int4         | FK      | No       | CEP do funcionário             |
| END_FUN_BAIRRO    | varchar(50)  |         | No       | Bairro                         |
| END_FUN_RUA       | varchar(50)  |         | No       | Rua                            |
| END_FUN_NUMERO    | numeric(6)   |         | No       | Número da moradia              |
| END_FUN_TELEFONE  | varchar(9)   |         | Yes      | Telefone                       |
| END_FUN_CELULAR   | numeric(12)  |         | No       | Celular                        |
| END_FUN_EMAIL     | varchar(50)  |         | No       | Email                          |

## 🏡 ENDERECO_PES
| Column Name        | Data Type    | PK / FK | Nullable | Description                   |
|--------------------|--------------|---------|----------|-------------------------------|
| END_PES_ID         | int4         | PK      | No       | ID do endereço da pessoa      |
| COD_PESSOA         | int4         | FK      | No       | Código da pessoa              |
| COD_TIPO_ENDERECO  | int4         | FK      | No       | Tipo de endereço              |
| COD_CEP            | int4         | FK      | No       | CEP da pessoa                 |
| END_PES_BAIRRO     | varchar(50)  |         | No       | Bairro                        |
| END_PES_RUA        | varchar(50)  |         | No       | Rua                           |
| END_PES_NUMERO     | numeric(6)   |         | No       | Número                        |
| END_PES_TELEFONE   | varchar(9)   |         | Yes      | Telefone                      |
| END_PES_CELULAR    | numeric(12)  |         | No       | Celular                       |
| END_PES_EMAIL      | varchar(50)  |         | No       | Email                         |

## 🧍 PESSOA
| Column Name    | Data Type   | PK / FK | Nullable | Description                            |
|----------------|-------------|---------|----------|----------------------------------------|
| PES_COD        | int4        | PK      | No       | ID de identificação da pessoa          |
| PES_NOME       | varchar(50) |         | No       | Nome da pessoa                         |
| PES_TIPO       | char(1)     |         | No       | Tipo da pessoa (F-Física / J-Jurídica) |
| PES_CPF_CNPJ   | numeric(14) |         | No       | CPF ou CNPJ da pessoa                  |
| PES_GEN        | int4        |         | Yes      | Gênero da pessoa (M ou F)              |
| PES_DATA_NAS   | date        |         | No       | Data de nascimento da pessoa           |
