<div style="border: 0px solid #00f; padding: 10px; display: flex; justify-content: center;">
    <div style="box-shadow: 3px 3px 5px #888; display: flex; align-items: center; text-align: center; font-family: 'Verdana', sans-serif;">        
        <h1 style="margin: 0; text-shadow: 2px 2px 3px #888;">Formação SQL Database Specialist</h1>
    </div>
</div>

<br>
<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center; font-family: 'Lato', sans-serif;">
    <h2 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Helvetica', sans-serif; text-decoration: none;">Desafio: Projeto Conceitual de Banco de Dados • Oficina Mecânica</h2>
</div>


<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center;">
    <div style="display: flex; align-items: center; justify-content: center;">
               <h4 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Raleway', sans-serif;">I ❤️ Front-End Development!</h4>
    </div>
</div>


<h3>Encontre-me :handshake: </h3> 


<p align="center">
    <a href="https://www.linkedin.com/in/renatomoreira-rm/" target="_blank">
        <img alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-0077B5?style=plastic&logo=linkedin&logoColor=white">
    </a>
    <a href="https://github.com/RenatoMor" target="_blank">
        <img alt="GitHub" src="https://img.shields.io/badge/GitHub-181717?style=plastic&logo=github&logoColor=white">
    </a>
    <a href="https://discord.com/channels/@me/1123380010779152444/" target="_blank">
        <img alt="Discord" src="https://img.shields.io/badge/Discord-5865F2?style=plastic&logo=discord&logoColor=white">
    </a>
</a>
    <a href="https://kovihq.slack.com/" target="_blank">
        <img alt="Slack" src="https://img.shields.io/badge/Slack-4A154B?style=plastic&logo=slack&logoColor=white">
    </a>
    <a href="https://www.instagram.com/renatomorspider/" target="_blank">
        <img alt="Instagram" src="https://img.shields.io/badge/Instagram-E4405F?style=plastic&logo=instagram&logoColor=white">
    </a>
    <a href="mailto:piano.tato@gmail.com" target="_blank">
        <img alt="Gmail" src="https://img.shields.io/badge/Gmail-EA4335?style=plastic&logo=gmail&logoColor=white">
    </a>
</p>
</p>
<br>

<div style="height: 2px; background-color: #0077B5;"></div>

<h3>Menu</h3>

- [Descrição do Projeto :scroll:](#descrição-do-projeto-scroll)
- [Cliente :writing_hand:](#cliente-writing_hand)
- [Veículo :hammer_and_wrench:](#veículo-hammer_and_wrench)
- [Serviço :sparkles:](#serviço-sparkles)
- [Peças :footprints:](#peças-footprints)
- [Peças_Serviço :footprints:](#peças_serviço-footprints)
- [Forma de Pagamento :footprints:](#forma-de-pagamento-footprints)
- [Mecânicos :footprints:](#mecânicos-footprints)
- [Equipe de Mecânicos :footprints:](#equipe-de-mecânicos-footprints)
- [Serviços_Equipe de Mecânicos :footprints:](#serviços_equipe-de-mecânicos-footprints)
- [Ordem de Serviço :footprints:](#ordem-de-serviço-footprints)
- [Licença :traffic_light:](#licença-traffic_light)
- [Agradecimentos :tada:](#agradecimentos-tada)

---

###  Descrição do Projeto :scroll:

O sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica:

Clientes levam veículos para reparo ou revisão periódica. Cada veículo é atribuído a uma equipe de mecânicos, que identifica os serviços necessários e registra uma ordem de serviço (OS) com data de entrega. O valor de cada serviço, consultado em uma tabela de referência de mão de obra, e o custo das peças compõem a OS. Após a autorização do cliente, a mesma equipe avalia e realiza os serviços. Os mecânicos são identificados por código, nome, endereço e especialidade. Cada OS possui número, data de emissão, valor, status e data de conclusão. Uma OS pode ser composta por vários serviços, e um serviço pode estar presente em várias OS. Da mesma forma, uma OS pode incluir várias peças, e uma peça pode ser utilizada em diversas OS.

---

### **Cliente** :writing_hand:

**Atributos** 

|IDCliente|Nome|CPF|
|---------|----|---|
|CNPJ|Endereço|Tipo de Cliente|

**Relacionamentos:** 

- Um cliente pode ter um ou mais veículos, e um veículo pertence a apenas um cliente.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDCliente

---

### Veículo :hammer_and_wrench:

**Atributos**  

|IDVeiculo|IDCliente|
|------------|-----------|
|Placa|Modelo|Ano|

**Relacionamentos:**

- Um veículo pertence a apenas um cliente, e um cliente pode ter um ou mais veículos.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDVeiculo
- FK: IDCliente (referenciando Cliente)

---

### Serviço :sparkles:

**Atributos**  

|IDServiço|IDOrdemServiço|Descricao|Valor|Aprovação|
|------------------|-----------|-----|-----|-----|

**Relacionamentos:**

- Um serviço pode estar presente em várias OS, e uma OS pode incluir vários serviços.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDServiço
- FK: IDOrdemServiço (referenciando IDOrdemServiço)

---

### Peças :footprints:

**Atributos**

|IDPeças|Descricao|Valor|
|------------|------------|---------|

**Relacionamentos:**

- Um tipo de peça pode estar incluída em diversas OS, e uma OS pode incluir várias peças.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDPeças

---

### Peças_Serviço :footprints:

**Atributos**  

|IDPeças|IDServiço|
|---------|---------|

**Relacionamentos:**

- Um serviço pode incluir várias peças, e uma peça pode estar incluída em diversos serviços.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDPeças_Serviço
- FK: IDPeças (referenciando IDPeças)
- FK: IDServiço (referenciando IDServiço)

---

### Forma de Pagamento :footprints:

**Atributos** 

|IDFormaPagamento|IDOrdemServiço|Descricao|Tipo|
|----------------|---------|------------|------|

**Relacionamentos:**

- Uma forma de pagamento pode estar presente em várias OS, e uma OS pode incluir várias formas de pagamento.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDFormaPagamento
- FK: IDOrdemServiço (referenciando IDOrdemServiço)

---

### Mecânicos :footprints:

**Atributos** 

|IDMecânico|IDEquipeMecânicos|Nome|Endereco|Especialidade|
|--------|---------|----------|------|-----|

**Relacionamentos:**

- Um mecânico pode pertencer a uma equipe de mecânicos, e uma equipe de mecânicos pode ter um ou mais mecânicos.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDMecânico
- FK: IDEquipeMecânicos (referenciando IDEquipeMecânicos)

---

### Equipe de Mecânicos :footprints:

**Atributos**  

|IDEquipeMecânicos|NomeEquipe|Especialidade|
|---------------|--------|---------|

**Relacionamentos:**

- Uma equipe de mecânicos pode ter um ou mais mecânicos, e um mecânico pode pertencer a uma equipe de mecânicos.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDEquipeMecânicos

---

### Serviços_Equipe de Mecânicos :footprints:

**Atributos**  

|IDServiço|IDEquipeMecânicos|
|---------|--------|

**Relacionamentos:**

- Um serviço pode estar presente em várias equipes de mecânicos, e uma equipe de mecânicos pode incluir vários serviços.

**Chave Primária (PK) Estrangera(FK):**

- PK: IDEquipeMecânicos
- FK: IDEquipeMecânicos (referenciando IDEquipeMecânicos)

---

### Ordem de Serviço :footprints:

**Atributos**  

|IDOrdemServiço|IDOrdemServiço|DataEmissão|ValorTotal|Status|DataConclusão|
|---------|-----|-----|-----|-----|-----|

**Relacionamentos:**

- Uma OS pode incluir vários serviços, e um serviço pode estar presente em várias OS.

**Chave Primária (PK) Estrangera(FK):** 

- PK: IDOrdemServiço
- FK: IDOrdemServiço (referenciando IDOrdemServiço)

---

Copyright © 2023 / RenatoMor

---

### Licença :traffic_light:
Este projeto está licenciado sob a Licença consulte o arquivo 
 [MIT](https://opensource.org/licenses/MIT).

---

### Agradecimentos :tada:
Digital Innovation One: Pela oportunidade de aprendizado e formação em Java.

JetBrains: Pela excelente IDE IntelliJ IDEA.

