# Examples

## Example 1

**Pregunta: Vull saber la freqüència de tuits amb la paraula «Inquisició» o «Inquisition» o «Inquisición» o «Inquisizione» o «Inquisiçao» des del 2006 fins a l'actualitat.**

```
python3 foreign/twint/Twint.py -s "'inquisició' OR 'inquisition' OR 'inquisición' OR 'inquisizione' OR 'inquisiçao'" --since 2017-01-01 --until 2017-01-03 -o data/inquisition --csv
```

The above should generate a .csv file in `data/inquisition` named `tweets.csv`

## Don't go below this point. Try the above and then write to Joe to confirm that you got it working.


**Pregunta: Vull saber la freqüència de tuits per dia que han utilitzat la paraula «Spanish Inquisition» o «Inquisición española» o  «Inquisició espanyola» o «Inquisizione spagnola» o  «Inquisiçao espanhola» des del 2006 fins a l'actualitat.**

**Pregunta: Vull saber la freqüència de tuits per dia que han utilitzat la paraula «Torquemada» des del 2006 fins a l'actualitat.**

Centrant en el procés, cal afinar molt la cerca, certament, ja que la casuística és enorme. El judici oral (Marchena, tribunal suprem) va començar el 12 de febrer de 2019,  però com que la fase instructora (Llarena) va començar l'octubre de 2017 i va acabar el juliol de 2018, em sembla essencial rebuscar les dades des d'octubre de 2017. A més, seria interessant -desconec si es pot fer- distingir els comptes de Twitter segons les dades de l'usuari, com ara si diuen que són de Catalunya, si piulen en català, si tenen determinades icones (llaç groc, bandera independentista, bandera d'Espanya...) o frases (CDR, soccdr, Puigdemont,freejunqueras, freetothom) al nom o biografia, etcètera. Emplaço algunes possibles preguntes:

**Vull saber la freqüència de tuits per dia amb la  paraula « Spanish Inquisition» però sense les paraules «Metal», «Monty», «Python», «Dragon age», «Warhammer», des d'octubre de 2017 fins a l'actualitat.**



**Vull saber la freqüència de tuits per dia amb la paraula «Inquisició» o «Inquisition» o «Inquisición» o «Inquisizione» o «Inquisiçao» on hi aparegui també la paraula «Llarena» des d'octubre de 2017.**



**Vull saber la freqüència de tuits per dia amb amb la paraula «Inquisició» o «Inquisition» o «Inquisición» o «Inquisizione» o «Inquisiçao» on hi aparegui també la paraula «Marchena» des d'octubre de 2017.**



**Vull saber la freqüència de tuits per dia amb amb la paraula «Inquisició» o «Inquisition» o «Inquisición» o «Inquisizione» o «Inquisiçao» on hi aparegui també la paraula «Tribunal Suprem(o)» o  «Tribunal» o «justícia espanyola» o «justicia española», des d'octubre de 2017.**



**Vull saber la freqüència de tuits per dia amb la paraula «Torquemada» o «inquisidor» on hi aparegui també la paraula «Llarena» des d'octubre de 2017.**



**Vull saber la freqüència de tuits per dia amb la paraula «Torquemada» o «inquisidor» on hi aparegui també la paraula «Marchena» des d'octubre de 2017.**
