# Orbis Banks

## Resources

- https://play.google.com/store/apps/details?id=com.bittiq.cashws
- https://onebankapi.nl/
- https://www.consumentenbond.nl/budgetteren/digitale-huishoudboekjes
- https://www.bankingtools.nl/
- https://www.banktrans.nl/
- https://huishoudboekje.mijngeldzaken.nl/
- https://github.com/dmborovoy/BankTrans
- https://github.com/OpenBankProject
- https://github.com/OpenBankProject/OBP-API/blob/d517291c205b08481370471dcf6cfdea4b1ac54a/obp-api/src/main/scala/code/model/dataAccess/OBPTransaction.scala
- https://gathering.tweakers.net/forum/list_messages/1090664/11
- https://github.com/firefly-iii
- https://firefly-iii.org/
- https://app.financier.io/
- http://members.quicknet.nl/marcel.jansen3/
- https://www.moneydashboard.com/
- https://www.kasboek.nl/
- https://nl.wikipedia.org/wiki/Valutering
- https://en.wikipedia.org/wiki/Value_date

## Properties

| Property             | Example                       | Source                    | 
| -------------------- | ----------------------------- | ------------------------- |
| `TransactionDate`    | `2018-12-28T00:00:00.000`     | Knab transaction JSON     |
| `ValutaDatum`        | `2018-12-27T00:00:00.000`     | Knab transaction JSON     |
| `OperationDate`      |                               | Knab transaction JSON     |
| `Transactiedatum`    | `01-08-2019`                  | Knab CSV                  |
| `Valutadatum`        | `01-08-2019`                  | Knab CSV                  |
| `timestamp`          | `2019-08-03T11:27:05.692496`  | Rabobank transaction JSON |
| `valueDate`          | `2019-08-03`                  | Rabobank transaction JSON |
| `processingDate`     | `2019-08-03`                  | Rabobank transaction JSON |
| `bookingDateTimeGMT` | `20190803092705692496`        | Rabobank transaction JSON |
| `Datum`              | `2011-08-14`                  | Rabobank CSV              |
| `Rentedatum`         | `2011-08-14`                  | Rabobank CSV              |
| `Boekdatum`          | `06-03-2017`                  | Moneyou CSV               |
| `Valutadatum`        | `06-03-2017`                  | Moneyou CSV               |

### Explanation Knab

> Transactiedatum - Op dit moment heeft de transactie plaatsgevonden. 
> Valutadatum - De datum waarop een overgeboekt bedrag rentedragend of juist niet meer rentedragend wordt. 
> Boekingsdatum - Op de boekingsdatum boeken mijn collega's het bedrag over naar derden.

*Source:* https://open.knab.nl/ideeenbus-39/transactiedatum-valutadatum-en-boekingsdatum-is-een-datumsoort-teveel-734

### Explanation ABN AMRO Bank

> *Wat is de boekdatum?*
> De boekdatum is de datum waarop het bedrag op uw rekening staat, of van uw rekening afgaat. 

*Source:* https://www.abnamro.nl/nl/prive/betalen/bij-en-afschrijvingen/verschil-rente-boekdatum.html

### Explanation Rabobank

> *Rentedatum van betalingen bepalen (valutering)*
> De dag en het tijdstip waarop je een betaling overmaakt, bepaalt vanaf welke datum je rente betaalt. En de dag waarop je een betaling ontvangt, bepaalt vanaf welke datum je rente ontvangt. Dit noemen we de rentedatum. Het bepalen van die rentedatum noemen we valutering.
> 
> De rentedatum is niet altijd de dag waarop je geld overmaakt. Dat heeft met de verwerkingstijd van de betaling te maken.

*Source:* https://www.rabobank.nl/particulieren/betalen/service/betalen-en-opnemen/rentedatum-en-valutering/

### Explanation SNS 

> Op de boekdatum boeken we een bedrag bij of af. Op de valutadatum tellen we het bedrag mee bij het berekenen van de rente over je saldo. Soms verschillen die twee.

*Source:* https://www.snsbank.nl/particulier/betalen/service/boekdatum-en-valutadatum.html

### Valutering

> Valutering wordt door o.a. banken gebruikt om een rentedatum aan een transactie toe te kennen, waarbij de rentedatum verschilt van de boekingsdatum. Valutering speelt een rol bij de afrekening van beleggingstransacties, bij boekingen van hypotheken en andere leningen en bij buitenlandbetalingen, met name die van en naar verre buitenlanden.

*Source:* https://nl.wikipedia.org/wiki/Valutering

## Table

- transaction_date DATETIME(6) NOT NULL
- booking_date DATE NOT NULL
- value_date DATE NOT NULL
- processing_date DATE DEFAULT NULL
- operation_date DATE DEFAULT NULL
