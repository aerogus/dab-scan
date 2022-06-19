# Scanner DAB+

Simple scanner de la bande de radio DAB+ avec une clé RTL-SDR.

On se base sur l'outil `dab-scanner-rtlsdr` qui exporte les résultats de son scan. On parse ce json pour en faire un tableau.

## Installation

```
git clone https://github.com/JvanKatwijk/dab-cmdline
sudo apt-get update
sudo apt-get install git cmake build-essential g++ pkg-config libsndfile1-dev libfftw3-dev portaudio19-dev libfaad-dev zlib1g-dev libusb-1.0-0-dev mesa-common-dev libgl1-mesa-dev libsamplerate0-dev
cd dab-cmdline/dab-scanner
mkdir build && cd build
cmake ..
make
sudo make install
```

le binaire du scanner est dans `/usr/local/bin/dab-scanner-rtlsdr`

## Lancement du scan

```
./scan.sh
```

## Conversion json vers tableau

Dépendance composer : https://getcomposer.org

```
composer install
```

## Visualisation des résultats

```
$ ./json2table.php
+-------+-------+------------------+-----------+--------------+------------------+---------+-------+----------+-----------------+----------+
| canal | muxId | muxName          | serviceId | subchannelId | serviceName      | bitRate | audio | language | protectionLevel | codeRate |
+-------+-------+------------------+-----------+--------------+------------------+---------+-------+----------+-----------------+----------+
| 5A    | FFFE  | EXPE TDF TFL 5A  | F00D      | 0            | TEST DAB+ TFL    | 128     | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 5A    | FFFE  | EXPE TDF TFL 5A  | F00E      | 1            | TEST2 DAB+ TFL   | 128     | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | F21B      | 0            | SWIGG            | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | F229      | 2            | Beur FM          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | FED6      | 4            | FG CHIC          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | F21C      | 5            | LATINA           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | F22B      | 8            | Radio Orient     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | FEA3      | 9            | Vivre FM         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | FEF2      | 10           | MAXXIMUM         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | FEF3      | 11           | HELLO PARIS      | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6A    | F00E  | PARIS 6A         | F22D      | 12           | FRANCE MAGHREB 2 | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F211      | 1            | RTL              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F215      | 2            | RTL2             | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F217      | 3            | FUN RADIO        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F225      | 13           | M RADIO          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F2FE      | 10           | AirZen Radio     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F221      | 11           | RADIO CLASSIQUE  | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F21C      | 12           | LATINA           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F214      | 8            | SKYROCK          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F2FC      | 9            | SKYROCK KLASSIKS | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F2F8      | 4            | NRJ              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F2F9      | 5            | CHERIE FM        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F226      | 6            | RIRE ET CHANSONS | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6C    | F043  | Métropolitain 1  | F2FA      | 7            | NOSTALGIE        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FE93      | 0            | AFRICA RADIO     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FED0      | 1            | Antinea Radio    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FEE3      | 2            | Phare FM         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | F228      | 3            | Radio Courtoisie | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FE53      | 4            | MBS              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | F9F4      | 5            | RADIO MARIAFR    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FE82      | 6            | LOVELY           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FA84      | 7            | RADIO BONHEUR    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FEEC      | 8            | MyZen Radio      | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FAB6      | 9            | EURADIO+         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FE89      | 10           | URBAN HIT        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | F835      | 11           |  VIRAGE RADIO    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 6D    | F00F  | PARIS 6D         | FEFC      | 12           | MCD              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F206      | 7            | FRANCE INFO      | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F201      | 8            | FRANCE INTER     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F204      | 9            | FIP              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F202      | 10           | FRANCE CULTURE   | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F203      | 11           | FRANCE MUSIQUE   | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F208      | 12           | MOUV'            | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F216      | 1            | RMC              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F227      | 2            | BFM BUSINESS     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F2FD      | 3            | BFM RADIO        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F213      | 4            | EUROPE 1         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F212      | 5            | RFM              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 8C    | F044  | Métropolitain 2  | F219      | 6            | VIRGIN RADIO     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FEFE      | 1            | WRP              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | F21A      | 2            | NEO              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FEE7      | 3            | CAMPUS           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FE46      | 4            | ALIGRE           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FEEF      | 5            | MANDARIN         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FED1      | 6            | AYP              | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FEDB      | 7            | ICI & MAINTENANT | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FEFF      | 8            | FreqProtestante  | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | F9F1      | 9            | CAPSAO           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | F68C      | 10           | Radio TER        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FED7      | 11           | Frequence India  | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9A    | F010  | RNT Associative  | FEF8      | 12           | CAUSE COMMUNE    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEE6      | 3            | Radio ALFA       | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEDF      | 5            | MEDI 1           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | F8FE      | 7            | RADIO PITCHOUN   | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEF5      | 8            | AMI La Radio     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | F7FA      | 9            | TT NODE PARIS    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEDC      | 10           | HopeRadio        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEE0      | 11           | AASMAN RADIO     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FE86      | 12           | SENSATIONS+      | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEE4      | 0            | PI-MG            | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 9B    | F011  | PARIS 9B         | FEE5      | 1            | CINEMUSIC Radio  | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FECF      | 12           | Inrocks Radio    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | F439      | 1            | EMOTION          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FE34      | 2            | TROPIQUES FM     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEED      | 3            | Radio LiFE       | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FE41      | 4            | ESPACE FM        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEFA      | 5            | TRACE FM PARIS   | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEE2      | 6            | PANAME           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEE1      | 7            | Collector        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEF0      | 9            | Radio Monaco     | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEF7      | 10           | SEQUENCE FM      | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11A   | F012  | PARIS 11A        | FEEE      | 11           | Sanef 107.7 IDF  | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | FE43      | 1            | CHANTE FRANCE    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F9F5      | 2            | Melody           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | FE50      | 3            | GENERATIONS      | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F650      | 4            | SUD RADIO        | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F20A      | 5            | BLEU PARIS       | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | FEFB      | 6            | Radio Notre Dame | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | FE35      | 7            | EVASION          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F21D      | 8            | OUI FM           | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | FE45      | 9            | VOLTAGE          | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F223      | 10           | TSF JAZZ         | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F22C      | 11           | FG               | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F22A      | 12           | NOVA             | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
| 11B   | F038  | Paris-Etendu     | F22F      | 13           | J A Z Z Radio    | 88      | DAB+  | unknown  | EEP 3-A         | 1/2      |
+-------+-------+------------------+-----------+--------------+------------------+---------+-------+----------+-----------------+----------+
Total: 95 stations
```

Scan du 19/06/2022 en région parisienne
