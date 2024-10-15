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

