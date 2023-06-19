# language: it
Funzionalità: Form inserimento pasto
Definizione del form contenente i campi di inserimento dati per un pasto.

  Contesto: 
    Dato il form di inserimento dati

  Scenario: Campi del form
    Allora il form di inserimento del pasto conterrà i seguenti campi
      | Name        | Mandatory | Type                                                                   |
      | date        | Sì        | Date                                                                   |
      | time        | Sì        | Time                                                                   |
      | mealKind    | Sì        | Enum con valori ammissibili "colazione", "pranzo", "spuntino" o "cena" |
      | foodList    | Sì        | string[]                                                               |
      | annotations | No        | string                                                                 |
      | save        | Sì        | Pulsante di salvataggio                                                |

  Scenario: Disattivazione pulsante save
    Dati i campi obbligatori mancanti
    Allora il pulsante save è disattivato

  Scenario: Tooltip contenente gli errori
    Dato il pulsante save è disattivato
    Quando mouse hover (o touch) sul pulsante save
    Allora viene mostrato tooltip contenente errori

  Scenario: Attivazione pulsante save
    Dati i campi obbligatori compilati
    Allora viene attivato il pulsante di save

  Scenario: Salvataggio dei dati