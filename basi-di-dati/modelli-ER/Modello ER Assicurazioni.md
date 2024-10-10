#basi-di-dati #date/2024-10-07 #esercizio
In questo esempio seguiamo la metodologia di progettazione descritta in [[Progetto logico ER]].
Viene richiesto di modellare una compagnia assicurativa tramite lo schema relazionale grafico.
## Bozza
- **Veicoli**
	- Proprietario.
	- Titolare_Polizza.
- **Classe di rischio**
	- $<c_{i},s_{i}>$ : ad ogni classe e' associato uno sconto.
		$<1,50\%>$
		$<2,45\%>$
		$<3,40\%>$
		$<4,35\%>$
		$\dots$
- **Tariffe base**
	- Classi di potenza in base a **CV_FIS**, ossia i cavalli fiscali.
- **Sinistri**
- **Polizza**
---
## Implementazione
![[schemaER-assicurazioni.svg#invert_B]]
### Entità
1. **Polizza** (**ID**, Numero, Importo, Data, Targa, Vin, CV_Fis, <span style="color:rgb(112, 48, 160)">CLASSE_RIS, ID_CLI_TIT, ID_CLI_PROP</span>)
2. **Cliente** (**ID**, CF, Nome, Cognome, Pec)
3. **Sinistro** (**ID**, Data_S, Ora_S DataOra_Denuncia, <span style="color:rgb(112, 48, 160)">ID_POLIZZA</span>)
4. **Classe_Rischio** (**CLASSE**, Sconto_Perc)
5. **Tariffa_Base** (**Pot_Min**, Pot_Max, Tariffa)

Notiamo come abbiamo **4** <span style="color:rgb(112, 48, 160)">FOREIGN KEY</span> che corrispondono alle **4** frecce presenti nei rombi rappresentate sul disegno.
Nel disegno abbiamo raggruppato piu' entità in una singola entità chiamata **POLIZZA**, questo lo abbiamo fatto seguendo la metodologia definita in [[Progetto logico ER]].

### Vincoli
- **Integrità Referenziale**
	- POL(ID_CLI_PROP)$\implies$CLI(ID)
	- POL(ID_CLI_TIT)$\implies$CLI(ID)
	- POL(CLASSE_RISCHIO)$\implies$CLASSE_RIS(CLASSE)
	- SIN(ID_POL)$\implies$POL(ID)
- **Unicità**
	- POLIZZA(VIN)
	- POLIZZA(Numero)
	- CLIENTI(CF)
	- SINISTRI(DataOra_Denuncia,ID_POLIZZA)