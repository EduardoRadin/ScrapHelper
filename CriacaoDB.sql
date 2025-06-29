create table CARGO (CARGO_COD SERIAL not null,
CARGO_DESCRICAO varchar(50) not null,
CARGO_SALARIO numeric(8, 2) not null,
primary key (CARGO_COD));

comment on
column CARGO.CARGO_COD is 'Código de identificação do cargo';

comment on
column CARGO.CARGO_DESCRICAO is 'Descrição da função';

comment on
column CARGO.CARGO_SALARIO is 'Salário do funcionário';

create table CEP (CEP_COD text not null,
COD_MUN int4 not null,
primary key (CEP_COD));

comment on
column CEP.CEP_COD is 'Código do CEP';

comment on
column CEP.COD_MUN is 'Código do municipio';

create table ENDERECO_FUN (END_FUN_ID SERIAL not null,
COD_FUNCIONARIO int4 not null,
COD_TIPO_ENDERCO int4 not null,
COD_CEP text not null,
END_FUN_BAIRRO varchar(50) not null,
END_FUN_RUA varchar(50) not null,
END_FUN_NUMERO numeric(6, 0) not null,
END_FUN_TELEFONE varchar(9),
END_FUN_CELULAR numeric(12, 0) not null,
END_FUN_EMAIL varchar(50) not null,
primary key (END_FUN_ID));

comment on
column ENDERECO_FUN.END_FUN_ID is 'ID de identificação do endereço do funcionário';

comment on
column ENDERECO_FUN.COD_FUNCIONARIO is 'Código do funcionário';

comment on
column ENDERECO_FUN.COD_TIPO_ENDERCO is 'Tipo do endereço do funcionário';

comment on
column ENDERECO_FUN.COD_CEP is 'CEP do funcionário';

comment on
column ENDERECO_FUN.END_FUN_BAIRRO is 'Bairro onde o funcionário mora';

comment on
column ENDERECO_FUN.END_FUN_RUA is 'Rua onde o funcionário mora';

comment on
column ENDERECO_FUN.END_FUN_NUMERO is 'Número da moradia do funcionário';

comment on
column ENDERECO_FUN.END_FUN_TELEFONE is 'Telefone do funcionário';

comment on
column ENDERECO_FUN.END_FUN_CELULAR is 'Celular do funcionário';

comment on
column ENDERECO_FUN.END_FUN_EMAIL is 'Email do funcionário';

create table ENDERECO_PES (END_PES_ID SERIAL not null,
COD_PESSOA int4 not null,
COD_TIPO_ENDERECO int4 not null,
COD_CEP text not null,
END_PES_BAIRRO varchar(50) not null,
END_PES_RUA varchar(50) not null,
END_PES_NUMERO numeric(6, 0) not null,
END_PES_TELEFONE varchar(9),
END_PES_CELULAR numeric(12, 0) not null,
END_PES_EMAIL varchar(50) not null,
primary key (END_PES_ID));

comment on
column ENDERECO_PES.END_PES_ID is 'ID de identificação do endereço da pessoa.';

comment on
column ENDERECO_PES.COD_PESSOA is 'Código da pessoa';

comment on
column ENDERECO_PES.COD_TIPO_ENDERECO is 'Tipo do endereço da pessoa';

comment on
column ENDERECO_PES.COD_CEP is 'CEP da pessoa';

comment on
column ENDERECO_PES.END_PES_BAIRRO is 'Bairro onde a pessoa mora';

comment on
column ENDERECO_PES.END_PES_RUA is 'Rua onde a pessoa mora';

comment on
column ENDERECO_PES.END_PES_NUMERO is 'Número da moradia da pessoa';

comment on
column ENDERECO_PES.END_PES_TELEFONE is 'Telefone da pessoa';

comment on
column ENDERECO_PES.END_PES_CELULAR is 'Celular da pessoa';

comment on
column ENDERECO_PES.END_PES_EMAIL is 'Email da pessoa';

create table EQUIPAMENTO (EQP_ID SERIAL not null,
COD_PESSOA int4 not null,
EQP_TIPO varchar(25) not null,
EQP_MARCA varchar(25) not null,
EQP_MODELO varchar(50) not null,
EQP_NUM_SERIE numeric(30, 0) not null unique,
EQP_ESTADO_ENTRADA varchar(50) not null,
primary key (EQP_ID));

comment on
column EQUIPAMENTO.EQP_TIPO is 'Tipo do equipamento';

comment on
column EQUIPAMENTO.EQP_MARCA is 'Marca do equipamento';

comment on
column EQUIPAMENTO.EQP_MODELO is 'Modelo do equipamento';

comment on
column EQUIPAMENTO.EQP_NUM_SERIE is 'Número do série do equipamento';

comment on
column EQUIPAMENTO.EQP_ESTADO_ENTRADA is 'Descrição do equipamento ao chegar na assistência técnica';

create table ESTADO (ESTADO_COD SERIAL not null,
ESTADO_SIGLA varchar(2) not null,
ESTADO_NOME varchar(20) not null,
primary key (ESTADO_COD));

comment on
column ESTADO.ESTADO_SIGLA is 'Sigla do estado';

comment on
column ESTADO.ESTADO_NOME is 'Nome do estado';

create table FUNCIONARIO (FUN_COD SERIAL not null,
COD_CARGO int4 not null,
FUN_NOME varchar(50) not null,
FUN_CPF numeric(11, 0) not null unique,
FUN_RG numeric(9, 0) not null unique,
FUN_DATA_NAS date not null,
FUN_GEN char(1) check(FUN_GEN in ('M', 'F')), primary key (FUN_COD));

comment on
column FUNCIONARIO.FUN_NOME is 'Nome do funcionário';

comment on
column FUNCIONARIO.FUN_CPF is 'CPF do funcionário';

comment on
column FUNCIONARIO.FUN_RG is 'RG do funcionário';

comment on
column FUNCIONARIO.FUN_DATA_NAS is 'Data de nascimento do funcionário';

comment on
column FUNCIONARIO.FUN_GEN is 'Gênero do funcionário (M ou F)';

create table MUNICIPIO (MUN_COD SERIAL not null,
COD_ESTADO int4 not null,
MUN_NOME varchar(50) not null,
primary key (MUN_COD));

comment on
column MUNICIPIO.COD_ESTADO is 'Código de identificação do estado';

comment on
column MUNICIPIO.MUN_NOME is 'Nome do municipio';

create table ORDEM_SERVICO (OS_COD SERIAL not null,
COD_EQP int4 not null,
COD_FUN int4 not null,
OS_DATA_ENTRADA date not null,
OS_DATA_CONCLUSAO date not null,
OS_EQP_STATUS varchar(50) not null,
OS_EQP_PROBLEMA varchar(50) not null,
OS_ORCAMENTO numeric(8, 2) not null,
OS_SERVICO_REALIZADO varchar(200) not null,
primary key (OS_COD));

comment on
column ORDEM_SERVICO.OS_COD is 'Código de identificação da ordem de serviço';

comment on
column ORDEM_SERVICO.COD_EQP is 'Código do equipamento';

comment on
column ORDEM_SERVICO.COD_FUN is 'Código do funcionário responsável pela ordem de serviço';

comment on
column ORDEM_SERVICO.OS_DATA_ENTRADA is 'Data de entrada da ordem de serviço';

comment on
column ORDEM_SERVICO.OS_DATA_CONCLUSAO is 'Data de conclusão da ordem de serviço';

comment on
column ORDEM_SERVICO.OS_EQP_STATUS is 'Estado do equipamento';

comment on
column ORDEM_SERVICO.OS_EQP_PROBLEMA is 'Problema do equipamento';

comment on
column ORDEM_SERVICO.OS_ORCAMENTO is 'Orçamento para a ordem de serviço';

comment on
column ORDEM_SERVICO.OS_SERVICO_REALIZADO is 'Descrição dos serviços que foram realizados no equipamento';

create table OS_PECA_UTILIZADA (PECA_ID int4 not null,
COD_OS int4 not null,
QUANTIDADE int4 not null);

comment on
column OS_PECA_UTILIZADA.QUANTIDADE is 'Quantidade de peças utilizadas';

create table PECA (PECA_ID SERIAL not null,
PECA_NOME varchar(30) not null,
PECA_DESCRICAO varchar(100) not null,
PECA_PRECO numeric(8, 2) not null,
primary key (PECA_ID));

comment on
column PECA.PECA_NOME is 'Nome da peça';

comment on
column PECA.PECA_DESCRICAO is 'Descrição da peça';

comment on
column PECA.PECA_PRECO is 'Preço da peça';

create table PERMISSAO (PER_COD SERIAL not null,
PER_DESCRICAO char(1) not null check(PER_DESCRICAO in ('A', 'T')), primary key (PER_COD));

comment on
column PERMISSAO.PER_COD is 'Código do nível de permissão';

comment on
column PERMISSAO.PER_DESCRICAO is 'A - Administrador
T - Técnico';

create table PESSOA (PES_COD SERIAL not null,
PES_NOME varchar(50) not null,
PES_TIPO char(1) not null check(PES_TIPO in ('F', 'J')), PES_CPF_CNPJ numeric(14, 0) not null unique,
PES_GEN int4,
PES_DATA_NAS date not null,
primary key (PES_COD));

comment on
table PESSOA is 'Cadastro de clientes e funcionários';

comment on
column PESSOA.PES_COD is 'ID de identificação da Pessoa';

comment on
column PESSOA.PES_NOME is 'Nome da pessoa.';

comment on
column PESSOA.PES_TIPO is 'Tipo da pessoa (F - Física ou J - Jurídica)';

comment on
column PESSOA.PES_CPF_CNPJ is 'CPF ou CNPJ da pessoa.';

comment on
column PESSOA.PES_GEN is 'Gênero da pessoa (M ou F)';

comment on
column PESSOA.PES_DATA_NAS is 'Data de nascimento da pessoa.';

create table TIPO_ENDERECO (TIP_END_COD SERIAL not null,
TIP_END_DESCRICAO varchar(50) not null,
primary key (TIP_END_COD));

comment on
column TIPO_ENDERECO.TIP_END_COD is 'ID de identificação do tipo de endereço';

comment on
column TIPO_ENDERECO.TIP_END_DESCRICAO is 'Descrição do tipo de endereço';

create table USUARIO (COD_FUNCIONARIO int4 not null,
USU_PERMISSAO int4 not null,
USU_LOGIN varchar(50) not null unique,
USU_SENHA varchar(50) not null);

comment on
column USUARIO.USU_LOGIN is 'Login do funcionário';

comment on
column USUARIO.USU_SENHA is 'Senha do usuário';

alter table USUARIO add constraint FKUSUARIO88029 foreign key (USU_PERMISSAO) references PERMISSAO (PER_COD);

alter table USUARIO add constraint FKUSUARIO728678 foreign key (COD_FUNCIONARIO) references FUNCIONARIO (FUN_COD);

alter table OS_PECA_UTILIZADA add constraint FKOS_PECA_UT673306 foreign key (COD_OS) references ORDEM_SERVICO (OS_COD);

alter table OS_PECA_UTILIZADA add constraint FKOS_PECA_UT432333 foreign key (PECA_ID) references PECA (PECA_ID);

alter table ORDEM_SERVICO add constraint FKORDEM_SERV169302 foreign key (COD_FUN) references FUNCIONARIO (FUN_COD);

alter table ORDEM_SERVICO add constraint FKORDEM_SERV672429 foreign key (COD_EQP) references EQUIPAMENTO (EQP_ID);

alter table EQUIPAMENTO add constraint FKEQUIPAMENT378982 foreign key (COD_PESSOA) references PESSOA (PES_COD);

alter table ENDERECO_PES add constraint FKENDERECO_P945738 foreign key (COD_CEP) references CEP (CEP_COD);

alter table ENDERECO_FUN add constraint FKENDERECO_F954857 foreign key (COD_CEP) references CEP (CEP_COD);

alter table CEP add constraint FKCEP721326 foreign key (COD_MUN) references MUNICIPIO (MUN_COD);

alter table MUNICIPIO add constraint FKMUNICIPIO739234 foreign key (COD_ESTADO) references ESTADO (ESTADO_COD);

alter table FUNCIONARIO add constraint FKFUNCIONARI908311 foreign key (COD_CARGO) references CARGO (CARGO_COD);

alter table ENDERECO_FUN add constraint FKENDERECO_F539018 foreign key (COD_FUNCIONARIO) references FUNCIONARIO (FUN_COD);

alter table ENDERECO_PES add constraint FKENDERECO_P343901 foreign key (COD_TIPO_ENDERECO) references TIPO_ENDERECO (TIP_END_COD);

alter table ENDERECO_FUN add constraint FKENDERECO_F48044 foreign key (COD_TIPO_ENDERCO) references TIPO_ENDERECO (TIP_END_COD);

alter table ENDERECO_PES add constraint FKENDERECO_P26649 foreign key (COD_PESSOA) references PESSOA (PES_COD);
