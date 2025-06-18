### Tabela: estado

| Campo        | Tipo       | Descrição                       |
|--------------|------------|---------------------------------|
| estado_cod   | SERIAL     | Chave primária do estado        |
| estado_sigla | VARCHAR(2) | Sigla do estado (ex: SP, RJ)    |
| estado_nome  | VARCHAR(20)| Nome completo do estado         |

---

### Tabela: municipio

| Campo      | Tipo       | Descrição                           |
|------------|------------|-------------------------------------|
| mun_cod    | SERIAL     | Chave primária do município         |
| cod_estado | INT        | FK para estado (estado_cod)         |
| mun_nome   | VARCHAR(50)| Nome do município                   |

---

### Tabela: cep

| Campo    | Tipo   | Descrição                   |
|----------|--------|-----------------------------|
| cep_cod  | SERIAL | Código do CEP               |
| cod_mun  | INT    | FK para municipio (mun_cod) |

---