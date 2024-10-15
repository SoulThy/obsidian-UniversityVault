#basi-di-dati #esercizio 
- ==Libri== con $0^+$ ==autori==
- ==Utenti==
- ==Prestiti== - Stato e eventi conservati nel tempo (permanenza)
- Traccia delle singole ==copie==
- ==Casa ED.== (Nome, P_IVA, IND)
- ==Richieste== per noleggiare un certo libro, le singole richieste sono per "opere dell'ingegno", ossia non richiediamo un certo ISBN bensì usiamo il titolo


> [!info] Come si identifica un libro?
> - Oggetto editoriale $\implies$`ISBN`
> - Opera dell'ingegno $\implies$ `TITOLO`, `ANNO`
> - Oggetto fisico $\implies$ `CODICE`
> Quindi rappresenteremo ogni realtà tramite una propria entita'

# Schema ER
![[modello-er-biblioteca.svg#invert_B]]
Tramite lo schema ER e' facile implementare in codice delle operazioni che pescano direttamente dalle tabelle.
>[!example]- Example, diagramma degli stati che lavora sull'attributo `STATO` dell'entita `RICHIESTA`
>![[diagramma-stati-richiesta-stato.svg#invert_B]]
# Entità
1. **LIBRI_OPERA** 
	1. ==ID==
	2. TITOLO
	3. DATA_PPUB (*Data prima pubblicazione*)
2. **LIBRI_EDITO**
	1. ==ID==
	2. ISBN
	3. PREZZO
	4. ID_CASAED (foreign key)
	5. ID_LIB_OP (foreign key)
3. **LIBRI_FISICI**
	1. ==ID==
	2. CODICE
	3. DATA_ACQUIS
	4. ID_LIB_ED (foreign key)
	5. ID_SCAFF (foreign key)
4. **SCAFFALI**
	1. ==ID==
	2. NUMERO
	3. SIGLA
5. **SALE**
	1. ==SIGLA==
	2. DESCR
6. **CASE_ED**
	1. ==ID==
	2. P_IVA
	3. NOME
	4. IND
7. **AUTORI**
	1. ==ID==
	2. NOME
	3. COGNOME
	4. NAZ
	5. CITTA
	6. DATA_MORTE
	7. DATA_NASC
8. **SCRIVONO**
	1. ==ID_LIB_OP==
	2. ==ID_AUT==
	3. POS
9. UTENTI
	1. ==ID==
	2. CF
	3. NOME
	4. COGNOME
	5. TEL
	6. EMAIL
10. RICHIESTE
	1. ==ID==
	2. DATAORA
	3. STATO
	4. ID_LIB_OP (foreign key)
	5. ID_UTENTE (foreign key)
11. PRESTITI
	1. ==ID==
	2. DATAORA_INIZ
	3. DATAORA_RESTIT
	4. ID_UTENTE (foreign key)
	5. ID_LIB_FIS (foreign key)