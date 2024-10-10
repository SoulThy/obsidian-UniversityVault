#basi-di-dati #date/2024-09-23 #esercizio
In questo esempio seguiamo la metodologia di progettazione descritta in [[Progetto logico ER]].
![[progetto-logico-unviersita.svg#invert_B]]
## Entità
1. Studenti (ID, Nome, Cognome, Matr)
2. PDS (ID, DataOra_pres, corrente, ID_STUD)
3. INCLUDE (Data, Voto, ID_PDS, ID_CORSO)
4. CORSI(ID, Codice, Nome, CFU)
## Vincoli
1. **Integrità referenziale** (ne abbiamo una per ogni punta dei rombi)
	* PDS(ID_STUD)$\longrightarrow$STUDENTE(ID)
	* INCLUDE(ID_PDS)$\longrightarrow$PDS(ID)
	* INCLUDE(ID_CORSO)$\longrightarrow$CORSO(ID)
2. **Univocità** (uno per ogni chiave su schema ER che non e' già chiave primaria)
	* STUDENTE(Matr)
	* CORSO(Codice)
	* PDS(DataOra_pres, ID_STUD)