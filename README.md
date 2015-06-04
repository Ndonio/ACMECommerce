#ACMECommerce

Acme commerce è il sistema informativo sul web per la gestione degli ordini, utilizzato dall'azienda AcmeLaboratories che effettua una piccola attivit� dei propri prodotti.
 
_NB. TOCCA MODIFICARE LE SPECIFICHE, Questo file riporta le informazioni del powerpoint del professore!_

##CASI D'USO:
####Caso d'uso UC1: consulta listino 
 **Attore primario:** utente non registrato.  
 **Pre-Condizioni**: un utente sta utilizzando il sistema.  
 **Scenario principale di successo:**  
 **1.** L'utente vuole consultare il catalogo prodotti.  
 **2.** L'utente sceglie l'attività "Consulta Catalogo".  
 **3.** Il sistema mostra il catalogo generale con i vari prodotti.  
 **4.** L'utente seleziona un prodotto.  
 **5.** Il sistema mostra i dettagli del prodotto scelto.  
 _L'utente ripete i passi 3-5 un numero indefinito di volte_  
 **Post-Condizioni:** nessuna.  
 
- - - -   

####Caso d'uso UC2: effettua ordine. (da migliorare)
**Attore primario:** cliente (utente registrato).  
**Precondizioni:** il cliente è identificato e autenticato.  
**Scenario principale di successo:**  
**1.** Il cliente crea un ordine.  
**2.** Il cliente consulta il catalogo dei prodotti.  
**3.** Il cliente sceglie un prodotto e aggiunge codice e quantità del prodotto scelto all'ordine.  
**4.** Il sistema imposta il prezzo unitario del prodotto scelto al prezzo corrente di listino.  
**5.** Il sistema registra la riga ordine.  
**6.** Il cliente ripete i due passi precedenti finchè necessario.  
**7.** Il cliente "chiude" l'ordine.  
**8.** Il sistema registra l'ordine.  

- - - -

####Caso d'uso UC3: consulta i propri ordini. (da migliorare)
**Attore primario:** cliente.  
**Precondizioni:** il cliente è identificato e autenticato.  
**Scenario principale:**.
  **1.** Il cliente consulta l'elenco dei propri ordini.
  **2.** Il sistema mostra al cliente l'elenco dei suoi ordini.
  **3.** Il cliente chiede il dettaglio di un ordine.
  **4.** Il sistema mostra il dettaglio dell'ordine.
  **5.** Il cliente ripete i due passi precedenti finchè necessario.  
  
- - - - 

####Caso d'uso UC4: inserimento prodotti nel catalogo. (da migliorare)
**Attore primario:** amministrazione.  
**Precondizioni:** l'amministratore è identificato e autenticato.  
**Scenario principale:**  
**1.** L'amministratore inserisce un nuovo prodotto nel catalogo specificandone i dettagli.  
**2.** Il sistema registra il prodotto.  
**3.** I punti precedenti vengono ripetuti fino a che necessario.

- - - -

####Caso d'uso UC5: recupera indirizzo cliente. (da migliorare)
**Attore primario:** amministrazione.  
**Precondizioni:** l'amministratore è identificato e autenticato.  
**Scenario principale:**  
**1.** L'amministratore fornisce l'id di un ordine .  
**2.** Il sistema mostra all'amministratore i dati del cliente che ha effettuato l'ordine.

- - - - 

####Caso d'uso UC6: evasione ordine (da migliorare)
**Attore primario:** amministrazione.  
**Precondizioni:** l'amministratore è identificato e autenticato.  
**Scenario principale:**  
**1.** Il sistema presenta all'amministratore gli ordini chiusi, ma non evasi.  
**2.** L'amministratore sceglie un ordine.  
**3.** Il sistema evade l'ordine: aggiorna l'ordine inserendo la data di spedizione e aggiorna la quantità dei prodotti in magazzino (sottraendo la quantit� di prodotti usati per l'ordine).  
**Eccezioni:** alcuni prodotti potrebbero non essere presenti in magazzino nella quantità specificata dall'ordine.
           In questo caso l'ordine rimane in sospeso.
_ _ _ _ _

   
