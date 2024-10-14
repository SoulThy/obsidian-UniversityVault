#basi-di-dati
# Structured Query Language
In larga parte, e' un linguaggio non procedurale $\implies$ si specificano le proprietà dell'output senza specificare l'algoritmo da applicare.

>[!example]+
> Implementazione SQL dello [[schema-relazionale-esempio.svg]]
> ```sql
> CREATE TABLE CORSI(
> 	CODICE CHAR(8) PRIMARY KEY,
> 	DENOMINAZ VARCHAR(200) NOT NULL UNIQUE,
> 	DOCENTE VARCHAR(120) NOT NULL UNIQUE
> );
> CREATE TABLE STUDENTI(
> 	MATR CHAR(7) PRIMARY KEY,
> 	NOME VARCHAR(50) NOT NULL,
> 	COGNOME(50) VARCHAR(50) NOT NULL,
> 	CF CHAR(16) NOT NULL UNIQUE
> );
> CREATE TABLE ESAMI(
>	MATR_STUD CHAR(7) NOT NULL REFERENCES STUDENTI(MATR),
>	COD_CORSO CHAR(8) NOT NULL,
>	DATA DATE NOT NULL,
>	VOTO INT NOT NULL,
>	PRIMARY KEY(MATR_STUD,COD_CORSO,DATA),
>	FOREIGN KEY COD_CORSO REFERENCES CORSO(CODICE)
>);
> ```
## KEYWORDS

| Keyword      | Descrizione                                        |
| ------------ | -------------------------------------------------- |
| CREATE TABLE | https://www.w3schools.com/SQl/sql_create_table.asp |
| PRIMARY KEY  | https://www.w3schools.com/SQl/sql_primarykey.asp   |
| NOT NULL     | https://www.w3schools.com/SQl/sql_notnull.asp      |
| UNIQUE       | https://www.w3schools.com/SQl/sql_unique.asp       |
| REFERENCES   |                                                    |
| FOREIGN KEY  |                                                    |
## DATA TYPES

| Type    | Descrizione |
| ------- | ----------- |
| CHAR    |             |
| VARCHAR |             |
| INT     |             |

