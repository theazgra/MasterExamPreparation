# Matematické základy informatiky


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 1. Konečné automaty, regulární výrazy, uzávěrové vlastnosti třídy regulárních jazyků.
- Abeceda je libovolná konečná neprázdná množina symbolů $\Sigma$ ($\Sigma^* všechny slova abecedy$).
- Slovo je libovolná konečná posloupnost znaků abecedy. 
- Jazyk je množina některých slov tvořených symboly z dané abecedy. 
- Jazyk $L$ je regulární právě tehdy, když existuje nějaký deterministický automat $A$, který jej přijímá. 
- Dále si vysvětlíme výrazy nad slovem $v$.
  - Prefix - $x$ je prefix pokud existuje slovo $y = xv$
  - Sufix - $x$ je sufix pokud existuje slovo $y = vx$
  - Podslovo - podslovem slova $v$, je slovo $x$, pokud existuje slovo $v = uxv$
  - Zřetězení slov - zřetězením slov $x$ a $y$ dostaneme $v = xy$
- Iterace jazyků
  - Iterace jazyka $L$ označíme jako $L^*$, je to jazyk, tvořený slovy vzniklými zřetězením libovolného počtu slov z jazyka $L$. 
  - Libovolný počet, tedy může být i nula, prázdné slovo $\varepsilon$.
- Zrcadlový obraz
    Slova $w$ je slovo $w^r$. AHOJ = JOHA, zrcadlový obraz jazyka $L$, $L^r$ má všechny slova zrcadlově.

### Deterministický konečný automat 
- Je definován jako pětice $(Q, \Sigma, \delta, q_0, F)$. 
- Jazyk rozpoznávaný (přijímaný) daným DKA A ($L(A)$) je množina všech slov přijímaných tímto automatem. 
- Pokud $L(A) = L$ je jazyk regulární, neboť jej přijímá DKA. 
- Dva automaty jsou ekvivalentní pokud přijímají stejný jazyk $A_1=A_2 \iff L(A_1)=L(A_2)$. 
- Dosažitelný stav automatu - pokud existuje nějaké slovo $w$ takové, že se automat jeho přečtením dostane ze vstupního stavu do daného stavu, v opačném případě je stav nedosažitelný.
- Vysvětlení pětice:
  - $Q$ - konečná neprázdná množina stavů
  - $\Sigma$ - abeceda
  - $\delta : Q \times \Sigma \rightarrow Q$ - přechodová funkce
  - $q_0$ - počáteční stav
  - $F: F \subset Q$ - je množina přijímacích stavů
- Pravidla pro jazyky:
  - Jestliže jsou jazyky $L_1$ a $L_2$ regulární, pak také $L_1 \cap L_2$ je regulární
  - Jestliže jsou jazyky $L_1$ a $L_2$ regulární, pak také $L_1 \cup L_2$ je regulární
  - Doplněk jazyka - Jestliže je jazyk $L_1$ regulární, pak také $L_1'$ je regulární. U Automatu prohodíme přijímací stavy.
  - Zřetězení jazyků - výstupní stav(y) automatu přijímacího jazyk $A_1$ se propojí se vstupním stavem automatu přijímacího jazyk $A_2$ $\varepsilon$-přechody.
  - Iterace jazyka - výstupní stav(y) automatu přijímacího jazyk se propojí s jeho vstupními stavy $\varepsilon$-přechody.
  - Regulární jazyky jsou uzavřené vůči operacím sjednocení, průnik, doplněk, zřetězení, iterace.
  - Jazyk je regulární právě tehdy, když je ho možné popsat regulárním výrazem.

### Nedeterministické konečné automaty
- Z jednoho stavu může vest libovolný (i nulový) počet přechodů se stejným symbolem, může obsahovat vice než jeden počáteční stav. 
- NKA přijímá dané slovo, pokud existuje alespoň jeden výpočet, který vede k přijetí slova. NKA jde převést na DKA.
- Definován jako pětice $(Q, \Sigma, \delta, I, F)$, kde:
  - $Q$ - konečná množina stavů
  - $\Sigma$ - konečná abeceda
  - $\delta : Q\times \Sigma \rightarrow Q$ - přechodová funkce
  - $I \subseteq Q$ - množina počátečních stavů
  - $F \subseteq Q$ - množina přijímacích stavů
- Obecný NKA obsahuje navíc $\varepsilon$ přechody. Přechod pomocí prázdného slova. 
- Definován jako stejná pětice, ale přechodová funkce má nyní tvar:
  - $\delta : Q\times \{ \Sigma \cup \{\varepsilon\} \} \rightarrow Q$. 
  - ZNKA je možné převést na DKA podobnou konstrukcí jako NKA, je ale třeba do množin stavů přidat i všechny stavy dosažitelné z přidaných stavů nějakou sekvencí $\varepsilon$-přechodů.
- Regulární výrazy popisující jazyky nad abecedou $\Sigma$. $(\emptyset, \varepsilon, a) \quad(a \in \Sigma)$ jsou regulární výrazy. Jestliže:
  - $\alpha$ a $\beta$ jsou regulární výrazy pak i $(\alpha + \beta)$, $(\alpha \cdot \beta)$, $(\alpha^*)$ jsou regulární výrazy.

### Uzavřenost třídy reg. jazyků
- Uzavřenost množiny nad operací znamená že výsledek operace s libovolnými prvky z množiny bude opět spadat do dané množiny.
- Regulární jazyky jsou uzavřené na operacích sjednocení, průnik, konkatenace a uzávěr
- Třída regulárních výrazů je uzavřena vůči zřetězení a iteraci. 
  - Automaty se dají ziterovat i zřetězit
- Třída regulárních výrazů je uzavřena vůči zrdcadlení.
  - Převrátíme DKA
<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 2. Bezkontextové gramatiky a jazyky. Zásobníkové automaty, jejich vztah k bezkontextovým gramatikám.
- Je způsob popisu jazyka či nástroj ke generování slov jazyka. 
- Formálně je bezkontextová gramatika definována jako čtveřice $G = (\Pi, \Sigma, S, P)$, kde:
  - $\Pi$ je konečná množina neterminálních symbolů (neterminálů)
  - $\Sigma$ je konečná množina terminálních symbolů (terminálů), přičemž $\Pi \cap \Sigma = \emptyset$
  - $S \in \Pi$ je počáteční neterminál
  - $P \subseteq \Pi \times (\Pi \cup \Sigma)^*$ je konečná množina přepisovacích pravidel
- Derivace - odvozování dalších řetězců z předchozích, užíváním přepisovacích pravidel na neterminály vyskytující se v předchozích řetězcích. 
  - Derivace délky $n$ - vytvoření $n$ přepisů.
- Větné formy - jsou všechny řetězce, které lze vytvořit z počátečního neterminálu $S$ aplikací přepisovacích pravidel na neterminály (dokud nejsou všechny znaky v řetězci terminály).
- Jazyk $L(G)$ generovaný gramatikou $G$ je množina všech slov v abecedě, která lze odvodit nějakou derivací z počátečního neterminálu $S$ pomocí přepisovacích pravidel z $P$. 
- Každé derivaci odpovídá derivační strom - vrcholy jsou ohodnoceny terminály a neterminály, kořen počátečním neterminálem a listy terminály nebo $\varepsilon$, ostatní vrcholy neterminály. 
- Pokud je některý vrchol ohodnocen neterminálem $A$, jeho potomci jsou ohodnoceni symboly pravé strany přepisovacího pravidla $A \rightarrow \alpha$. 
- Derivace nemusí být ani levá ani pravá. Jednomu derivačnímu stromu může odpovídat více různých derivací, ale právě jedna levá a pravá.
  - Levá derivace - derivace, kdy v každém kroku nahrazujeme nejlevější neterminál
  - Pravá derivace - derivace, kdy v každém kroku nahrazujeme nejpravější neterminál
- Gramatiky $G_1$ a $G_2$ jsou ekvivalentní, pokud generují tentýž jazyk $L(G_1) = L(G_2)$. 
  - Problém ekvivalence bezkontextových gramatik je algoritmicky nerozhodnutelný.
- Nejednoznačná gramatika - existuje slovo $w$, kterému přísluší dva různé derivační stromy (dvě různé levé nebo pravé derivace).
- Někdy se nejednoznačná gramatika dá nahradit jednoznačnou, která generuje tentýž jazyk. 
  - Pokud to nejde, je gramatika podstatně nejednoznačná.
- Bezkontextový jazyk - existuje bezkontextová gramatika, která tento jazyk generuje. 
  - Třída bezkontextových jazyků je uzavřená vůči zřetězení, sjednocení a iteraci, né vůči doplňku a průniku.

### Zásobníkové automaty
- Zásobníkový automat slouží k rozpoznání bezkontextových jazyků. 
- Jedná se o KA rozšířený o zásobník
- ZA na základě aktuálního znaku na vstupu, prvního (posledně zapsaného) znaku v zásobníku a aktuálního stavu, změní svůj stav a přepíše znak v zásobníku, a to podle daného pravidla $\delta$
- Zásobníkový automat M je definován jako šestice $M=(Q, \Sigma, \Gamma,  \delta, q_0, Z_0)$ kde
  - $Q$ - konečná neprázdná množina stavů
  - $\Sigma$ - konečná neprázdná množina vstupních symbolů (vstupní abeceda)
  - $\Gamma$ - konečná neprázdná množina zásobníkových symbolů (zásobníková abeceda)
  - $\delta$ - je přechodová funkce, zobrazení množiny $Q\times (\Sigma\cup\{\varepsilon\})\times\Gamma \rightarrow Q\times\Gamma$
  - $q_0 \in Q$ - je počáteční stav
  - $Z_0 \in \Gamma$ - je počáteční zásobníkový symbol
- Možné přechody
  - Stejný stav, přídáme A do zásobníku - $\delta(S,a,Z) = \{(S,AZ)\}$
  - Stejný stav, přepsání prvního prvku v zásobníku - $\delta(S,a,Z) = \{(S,A)\}$
  - Smazání prvku ze zásobníku - $\delta(S,a,Z) = \{(S,\varepsilon)\}$
  - Změna stavu - $\delta(S,a,Z) = \{(T,Z)\}$
  - Ukončení výpočtu - $\delta(S,a,Z) = \emptyset$

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 3. Matematické modely algoritmů - Turingovy stroje a stroje RAM. Složitost algoritmu, asymptotické odhady. Algoritmicky nerozhodnutelné problémy.
- Algoritmus je přesný návod či postup, kterým lze vyřešit daný typ úlohy, konkrétní posloupnost instrukcí.
- Algoritmy slouží k řešení problémů. 
- Problém - specifikace toho, co má algoritmus dělat obsahuje:
  - popis vstupu, 
  - popis výstupu, 
  - vztah mezi vstupy a výstupy.
- Matematici pro definici algoritmu vymysleli 2 modely, Turinguv stroj a RAM stroj.
  - těmito strojy lze definovát a provést libovolný algoritmus
  - Turing pracuje s celou abecedou zatímco RAM (podobně jako počítač) s čísly.

### Turingův stroj
- Turingův stroj je DKA rozšířený o pohyb čtecí hlavy oběma směry, možnost zápisu na vstupní pásku a nekonečně dlouhou pásku, která reprezentuje paměť. 
- Turingův stroj je definován 6-ti elementy.
  - Neprázdná konečná množina stavů
  - Množina páskových symbolů (pásková abeceda)
  - Množina vstupních symbolů
  - Přechodová funkce
  - Počáteční stav
  - Koncový stav
Konfigurace je dána:
  - Stavem řídící jednotky
  - Obsahem pásky
  - Pozicí hlavy
- Turingův stroj nemusí dávat jen odpověď ano nebo ne, ale může realizovat i nějakou funkci, která každému slovu z abecedy přiřadí nějaké jiné slovo.
- Definujeme jej seznamem přechodových funkcí $\delta$, které tvoří instrukce algoritmu. Přechodová funkce má tvar:
  - $\delta(stav, znak) = (novy_stav, novy_znak, posun)$

### RAM stroj
- Je idealizovaná model počítače s neomezenou pamětí, kde ani velikost jedné paměťové buňky není omezena
- Paměťové buňky jsou adresobány přirozenými čísly
  - Buňka 0 - pracovní registr (akumulátor) - registr, který je jedním z operandů většiny instrukci a do kterého se ukládá výsledek většiny operaci.
  - Buňka 1 - indexový registr - je použit při nepřímém adresovaní.
- Čte data sekvenčně ze vstupu, který je tvořen sekvenci celých čísel. Ze vstupu lze pouze číst. 
- Na výstup zapisuje sekvenčně data, opět celá čísla.
- Operandy *op* v jednom ze tří tvarů:
  - =6 - hodnota 6
  - 6 - hodnota v registru 6
  - *6 - hodnota v indexovém registru
- Instrukce RAM stroje
  - READ - načtení ze vstupu do prac. reg.
  - WRITE - zápis prac. reg. na výstup
  - LOAD *op* - načtení *op* do prac. reg.
  - STORE *op* - uložení hodnoty v prac. reg. do *op*
  - ADD *op* - sčítání *op* k prac. reg.
  - SUB *op* - podobně jak ADD ale odečítání
  - MUL *op* - podobně jak ADD ale násobení
  - DIV *op* - podobně jak ADD ale celočíselné dělení
  - JUMP *r* - skok na řádek *r*
  - JZERO *r* - skok pokud prac. reg. = 0 na řádek *r*
  - JGTZ *r* - skok pokud prac. reg. > 0 na řádek *r*
  - HALT *r* - ukončení programu
- Skládá se z:
  - Programové jednotky - obsahuje program stroje RAM a ukazatel na pravě prováděnou instrukci. 
  - Pracovní paměť - tvořena buňkami očíslovanými 0, 1, 2, atd. ; obsah buněk je možno čist i do nich zapisovat 
  - Vstupní paska - je z ni možné pouze čist. 
  - Výstupní paska - je na ni možno pouze zapisovat.

### Složitost algoritmů
- Odhady složitosti funkcí se vyjadřují pomocí tzv. asymptotické notace - např. se řekne, že časová složitost algoritmu MergeSort je $O(n \log n)$,
 zatímco časová složitost algoritmu BubbleSort je $O(n^2)$.
- $O(f)$ - množina všech funkcí, které rostou nejvýše tak rychle jako $f$
- $\Omega(f)$ - množina všech funkcí, které rostou alespoň tak rychle jako $f$
- $\Theta(f)$ - množina všech funkcí, které rostou stejně rychle jako $f$
- Přesnou složitost algoritmu bývá problém vyjádřit. Ve většině případů nemusíme znát přesný počet provedených instrukcí a spokojíme se pouze s odhadem toho, jak rychle tento počet narůstá se zvětšováním vstupu. 
- Asymptotická notace nám umožní zanedbat méně důležité detaily a odhadnout přibližně, jak rychle daná funkce roste.  
- Časová složitost algoritmu - jak závisí doba výpočtu na množství vstupních dat. 
- Paměťová (resp. prostorová) složitost algoritmu - jak závisí množství použité paměti na množství vstupních dat. Typy složitosti:
- Asymptotické odhady se týkají pouze toho, jak roste čas s rostoucí velikostí vstupu. Neříkají nic o konkrétní době výpočtu. 
- V asymptotické notaci mohou být skryty velké konstanty. 
- Algoritmus, který má lepší asymptotickou časovou složitost než nějaký jiný algoritmus, může být ve skutečnosti rychlejší až pro nějaké hodně velké vstupy. 
- Většinou analyzujeme složitost v nejhorším případě. Pro některé algoritmy může být doba výpočtu v nejhorším případě mnohem větší než doba výpočtu na typických instancích. 
  - logaritmická - $f(n) \in \Theta(\log n)$
  - lineární - $f(n) \in \Theta(n)$
  - kvadratická - $f(n) \in \Theta(n^2)$
  - kubická - $f(n) \in \Theta(n^3)$
  - polynomiální - $f(n) \in O(n^k)$ pro nějaké $k > 0$
  - exponenciální - $f(n) \in O(c^{n^k})$ pro nějaké $c > 1$ a $k > 0$

### Algoritmická rozhodnutelnost (řešitelnost) problému
- Problém je rozhodnutelný (řešitelný) pokud pro libovolný vstup z množiny vsupů, skončí algoritmus svůj výpočet a vydá správný výstup.
- Důkaz neřešitelnosti lze provést skrze jiné - už dokázané - problémy. 
- Speciální případ jsou doplňkové problémy, které vracejí přesně opačné výsledky než původní problém.
- Rozhodovací problémy jsou problémy, na které je odpověď buď ANO nebo NE
- Nerozhodnutelné problémy, neexistuje algoritmus, který je řeší:
  - Eq-CFG (Ekvivalence bezkontextových gramatik)
    - Vstup: Dvě bezkontextové gramatiky G1,G2.
    - Otázka: Platí L(G1) = L(G2)? Generují obě gramatiky stejný jazyk?
  - Halting Problem - Zastaví se M na w (tzn. je výpočet stroje M pro vstupní slovo w konečný)?
    - Vstup: Turingův stroj M a jeho vstup w.
    - Otázka: Zastaví se M na w?
- Optimalizační problémy hledají nejlepší řešení
  - v množině možných řešení hledají to nejlepší
  - např. nejkratší cesta v grafu

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 4. Třídy složitosti problémů. Třída PTIME a NPTIME, NP-úplné problémy.
- Máme problém $P$. Jestliže existuje algoritmus, který ho řeší pak říkáme že problém $P$ je algoritmicky řešitelný. 
  - Jestliže $P$ je rozhodovací problém a existuje algoritmus, který jej řeší tak je problém $P$ rozhodnutelný. 
- Složitost algoritmu je funkce, která vyjadřuje, kolik kroků maximálně udělá daný algoritmus pro vstup velikosti $n$.
- Složitost problému je časová složitost 'nejoptimálnějšího' algoritmu, který řeší daný problem.
- Místo pojmu složitost problému se zavádí třídy složitosti
- Dana konkretní třída složitosti je vždy charakterizovaná nějakou vlastnosti, kterou mají všechny problémy do ní patřící. 
- Typickým příkladem takové vlastnosti je vlastnost, že pro daný problem existuje nějaký algoritmus s určitým omezením (např. časové nebo prostorové složitosti):
  - Do dané třídy pak patři všechny problémy, pro které takovýto algoritmus existuje.
  - Naopak do ni nepatři problémy, pro které žádný takový algoritmus neexistuje.
- Třídou časové složitosti pro funkci $f : N \rightarrow N$ rozumíme  $T(f)$, též značenou $T(f(n))$, množinu těch problémů, které jsou řešeny RAM strojy s časovou složitostí v $O(f)$.
- Třídou prostorové složitosti $S(f)$, též $S(f(n))$, rozumíme třídu těch problémů, které jsou řešeny RAM strojy s prostorovou složitostí v $O(f)$.

### PTIME
- Do této třídy složitosti spadají všechny problémy řešené s polynomiálními algoritmy. PTIME $= \bigcup_{k=0}^{\infty}T(n^k)$
- V praxi se ukázalo, že pokud je pro nějaký problém nalezen polynomiální algoritmus, tak se obvykle podaří najít i algoritmus s nízkým stupněm polynomu
např. $<6$. 
- PTIME je robustní, všechny rozumné navržené modely počítače jsou polynomiálně ekvivalentní. 
- Polynomiální převod (jinak také redukce) problému $P_1$ na $P_2$ je převod R počítaný algoritmem s polynomiální časovou složitostí. 
- Definice polynomiálního převodu nám tedy říká, že pokud umíme efektivně řešit problém $P_2$, pak problém $P_1$ také můžeme efektivně vyřešit tím, že jej (rychle) převedeme na známý problém $P_2$. 
- Příklady problémů - třídění, vyhledávání, aritmetické operace, nejkratší cesta v grafu


### NPTIME
- zahrnuje všechny rozhodovací (ano/ne) problémy, které jsou rozhodovány nedeterministickými polynomiálními algoritmy - tedy nedeterministickými algoritmy s polynomiální časovou složitosti O(nc).
- Nedeterministický algoritmus rozhoduje ano/ne problémy, ale ne vždy správně.
  - Při odpovědi 'ano' je výsledek vždy správný (našel se alespoň jeden výpočet pro který je odpověď ano)
  - zatímco odpověď 'ne' nemusí být vždy pravdivá a to z důvodu, že by na výstupu muselo být vždy ne (algoritmus by musel otestovat všechny možnosti)
  - Pointou nedeterministických algoritmů je to že náhodně nastřelují nějaké řešení a ověřují jejich správnost.
- Příklady problémů
  - IS problém nezávislé množiny
    - Vstup: Neorientovaný graf G (o n vrcholech); číslo k (k leq n).
    - Otázka: Existuje v G nezávislá množina velikosti k (tj. množina k vrcholů, z nichž žádné dva nejsou spojeny hranou)?
  - SAT (problém splnitelnosti booleovských formulí)
    - Vstup: Booleovská formule v konjunktivní normální formě.
    - Otázka: Je daná formule splnitelná (tj. existuje pravdivostní ohodnocení proměnných, při kterém je formule pravdivá)?
  - CG (Barvení grafu)
    - Vstup: Neorientovaný graf G a číslo k.
    - Otázka: Je možné graf G obarvit k barvami (tj. existuje přiřazení barev vrcholům tak, aby žádné dva sousední vrcholy nebyly obarveny stejnou barvou)?

### NP-úplné problémy
- Skupina nejtěžších NPTIME problémů. Problém je NP-úplný, když je NP-těžky a náleží do třídy NP. 
  - Problém Q nazveme NP-těžkým, pokud každý problém ve třídě NP lze na problém Q polynomiálně převést, tedy pokud platí ∀P ∈ NPTIME : P ⊳ Q.
- Problém Q nazveme NP-úplným, pokud je NP-těžký a náleží do třídy NP
- Pokud by byl nalezen polynomiální deterministický algoritmus pro nějakou NP-úplnou úlohu, znamenalo by to, že všechny nedeterministicky polynomiální problémy jsou řešitelné v polynomiálním čase (tedy že NP = P). 
- Příklady problémů
  - SAT - problém splnitelnosti booleovských formulí
  - 3-SAT (problém SAT s omezením na 3 literály) - je splnitelná boolovská formule v konjuktivní normální formě, kde každá klauzule obsahuje právě tři literály?
  - ILP (problém celočíselného lineárního programování)
  - CG - barvení grafu k barvami
  - 
<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 5. Jazyk predikátové logiky prvního řádu. Práce s kvantifikátory a ekvivalentní transformace formulí.
- Výroková logika analyzuje způsoby skládání jednoduchých výroků do výroků složených pomocí logických spojek (konjunkce, disjunkce, implikace, ekvivalence). 
- Výrok je tvrzení, o kterém lze rozhodnout, zda je pravdivé, či nikoliv.
- Úsudek - na základě pravdivosti předpokladů $P_1, P_2, \ldots, P_n$ je možno soudit, že je pravdivý i \textbf{závěr} Z.
- Atomický výrok - nedá se rozložit na žádné menší výroky. 
- Složený výrok je složen z atomických výroků. 
- Výroky jsou definovány pomocí formulí. 
- Formule je posloupnost symbolů určité abecedy. Logické spojky s:
  - arita 1: negace; 
  - arita 2: konjunkce, disjunkce, implikace, ekvivalence.
- Tautologie -  Vždy pravdivé tvrzení.
- Kontradikce -  Vždy nepravdivé tvrzení.
- Splnitelná formule - Alespoň jedno ohodnocení kdy je formule pravdivá.
- Abstraktní syntaktický strom - orientovaný acyklický graf.
- Sémantický spor - případ, kdy zjistíme, že při ohodnocení s požadovanou vlastností, které hledáme by musela být daná formule současně pravdivá i nepravdivá
- Logicky ekvivalentní formule - Obě formule mají pro všechny ohodnocení stejnou pravdivostní hodnotu
- Literál - atomický výrok nebo jeho negace.

Důležité ekvivalence:
|  |  |  |
| :-----: | :-----: | :-----: |
| $\neg\neg p \iff p$ | $(p \wedge q) \wedge r \iff p \wedge (q \wedge r)$ | $p \wedge q \iff q \wedge p$ |
| $p \wedge p \iff p$ | $(p \vee q) \vee r \iff p \vee (q \vee r)$  | $p \vee q \iff q \vee p$ |
| $p \vee p \iff p$ | | |
| Distributivní zákony | $p \wedge (q \vee r) \iff (p \wedge q) \vee (p \wedge r)$ | $p \vee (q \wedge r) \iff (p \vee q) \wedge (p \vee r)$ |
| De-Morganovy zákony| $\neg(p \wedge q) \iff \neg p \vee \neg q$ | $\neg(p \vee q) \iff \neg p \wedge \neg q$ |
| Implikace | $p \implies q \iff \neg p \vee q$ | $\neg(p \implies q) \iff p \wedge \neg q$ |

Další ekvivalence

|  |
|:---: |
| $((p \iff q) \iff r) \iff (p \iff (q \iff r))$ |
| $(p \iff q) \iff (q \iff p)$ |
| $(p \iff q) \iff( (p \implies q) \wedge (q \implies p))$ |
| $(p \iff q) \iff ((p \vee \neg q) \wedge (q \vee \neg p))$ |



DNF - Disjunktivní normální forma je ekvivalentní s danou formulí a mající tvar disjunkce elementárních konjunkcí 
- $DNF(p \iff p)\iff (p \wedge p) \vee (\neg p \wedge \neg p) \iff p \vee \neg p$

KNF - Konjunktivní normální forma je ekvivalentní s danou formulí a mající tvar konjunkce elementárních disjunkcí.
- $KNF(p \iff p)\iff (\neg \vee p) \wedge (\neg p \vee p)$

UNDF - Úplná disjunktivní normální forma je ekvivalentní s danou formulí a mající tvar disjunkce úplných elementárních konjunkcí.
- $UDNF(p \iff q)\iff (p \wedge q) \vee (\neg p \wedge \neg q)$

### Predikátová logika
- Predikátová logika označuje formální odvozovací systém používaný k popisu matematických teorií a vět.
- Predikátová logika je rozšířením výrokové logiky. Navíc umožňuje analyzovat strukturu elementárních výroků, a to až do úrovně vlastností a vztahů mezi individui
- Individuum je prvek z nějaké množiny (univerza) a predikát je relace na této množině.
- Univerzální kvantifikátor ($\forall$) - Do běžného jazyka lze jeho význam přeložit jako "pro každé"
- Existenční kvantifikátor ($\exists$) - Do běžného jazyka lze jeho význam přeložit jako existuje
- Formule predikátové logiky vyjadřují tvrzení o objektech, které mají nějaké vlastnosti a které jsou v určitých vzájemných vztazích.
- Interpretace či interpretační struktura je konkrétní soubor těchto objektů, jejich vlastností a vztahů. 
- Universum je soubor všech objektů v dané interpretaci. 
  - Universem může být libovolná neprázdná množina. 
  - Objektům z tohoto universa se říká prvky universa.
- Valuace je přiřazení prvků universa proměnným.
- Pravdivost formulí závisí na dané interpretaci a valuaci. Ty interpretace, ve kterých daná formule platí, se označují jako její modely.
- V interpretacích se funkčním symbolům přiřazují pouze totální funkce, tj. funkce, jejichž hodnota je definovaná pro všechny možné hodnoty argumentů.
- Formule v predikátové logice se skládá z: logických spojek, kvantifikátorů, pomocných symbolů (',','(',')'), proměnných a predikátových symbolů.
- Rezoluční metoda
  - Rezoluční metoda je jedním z algoritmů pro zjištění toho, zda daný závěr vyplývá z daných předpokladů. 
  - Dá se použít také pro zjištění, zda je daná formule tautologie, kontradikce nebo splnitelná. 
  - Pracuje s formulemi v KNF. Vytváří důkaz toho, že daný závěr plyne z předpokladů.  
  - Jedná se o důkaz sporem - postupně generuje formule, které vyplývají z předpokladů. 
  - Výpočet může skončit dvěma různými způsoby: Podaří se najít spor, tj. podaří se odvodit formuli $\bot$ - pak platí, že závěr $\psi$ logicky vyplývá z předpokladů $\psi_1,\psi_2,\ldots ,\psi_n$ a nebo se nepodaří se odvodit $\bot$ a žádné další nové formule se nedají přidat - pak závěr $\psi$ z daných předpokladů nevyplývá.
  - Pravidla:
    - Pořadí literálů v klauzulích není podstatné.
    - Vícenásobné výskyty stejných literálů v téže klauzuli je možno odstranit.
    - Pokud je nově vygenerovaná klauzule stejná, jako nějaká dříve přidaná klauzule (a liší se nanejvýš pořadím literálů), nemá smysl ji přidávat.
    - Klauzule, které obsahují zároveň literály $p$ a $\neg p$ jsou ekvivalentní $\top$ a je možné je odstranit.
    - Klauzule je možno používat pro aplikaci rezolučního pravidla opakovaně (s jinými klauzulemi).

Příklad:
1. $\neg j \vee p$ -- předpoklad 1
2. $\neg j \vee d \vee r$ -- předpoklad 2
3. $\neg d \vee \neg p$ -- předpoklad 3
4. $j$ -- 1. klauzule z negovaného závěru
5. $\neg r$ -- 2. klauzule z negovaného závěru
6. $p$ -- rezoluce 1,4
7. $d \vee r$ -- rezoluce 2,4
8. $\neg d$ -- rezoluce 3,6
9. $r$ -- rezoluce 7,8
10. $\bot$ -- rezoluce 5,9, **SPOR**


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 6. Pojem relace, operace s relacemi, vlastnosti relací. Typy binárních relací. Relace ekvivalence a relace uspořádání.
- Relace na množinách $A_1, A_2 \ldots A_n$ je libovolná podmnožina kartézského součinu $A_1 \times A_2 \times \ldots \times A_n$
- Kartézský součin množin A a B, $A \times B$ je množina všech uspořádaných dvojic, kde první prvek je z A a druhý je z B
  - může být i prázdná množina
- možné zápisy:
  - $(a,b,c) \in R_3$
  - $R_3(a, b, c)$
  - $aRb$ - jen pro binární relace
- Relační systém je dvojice $(\{ A_i | i \in I \}, \{R_j | j \in J\})$
  - $A_i$ je množina nosiču, $R_j$ je množina relací
- Operace s relacemi - sjednocení, průnik, doplněk, inverze a skládání
- Inverzní relace - pořadí n-tic je přehozeno
  - $R_2 = R_1^{-1}(\forall a \in A, \forall b \in B  [(a,b)\in R_1 \rightarrow (b,a)\in R_2])$
- Skládání relací je složení binárních relací
  - $(\forall x \in X)(\forall z \in Z)[(x,z) \in R_3 \iff (\exist y \in Y)((x,y) \in R_1 \wedge (y,z \in R_2))]$
- Vlastnosti binární relace $R \subseteq A \times A$:
  - Reflexivní - $(\forall x \in A)(xRx)$
  - Ireflexivní - $(\forall x \in A)\neg(xRx)$
  - Symetrická - $(\forall x,y \in A)(xRy \rightarrow yRx)$
  - Asymetrická - $(\forall x,y \in A)(xRy \rightarrow \neg yRx)$
  - Antisymetrická - $(\forall x,y \in A)(xRy \wedge yRx \rightarrow x = y)$
  - Tranzitivní - $(\forall x,y,z \in A)(xRy \wedge yRz \rightarrow xRz)$
  - Úplná - $(\forall x,y \in A)(xRy \vee yRx)$
  - Souvislá - $(\forall x,y \in A)(xRy \vee yRx \vee x = y)$
- Reflexivní uzávěr, Tranzitivní uzávěr
- Relace ekvivalence
  - Relace je reflexivní, symetrická a tranzitivní
  - Třída ekvivalence prvku a - je množina všech prvků ekvivalentních s daným prvkem a.
  - Tolarance je relace, která je reflexivní a symetrická
- Relace uspořádání
  - neostré uspořádání $\leq$ je reflexivní, antisymetrická a tranzitivní
  - ostré uspořádání $<$ je ireflexivní, asymetrické (antisymetrické) a tranzitivní
  - obě uspořádání jsou částečné, pokud je relace souvislá tak se jedná o úplné uspořádání 
  - Uspořádání je úplné (lineární) pokud neexistují neporovnatelné prvky.
  - Hasseúv diagram je grafická reprezentace uspořádáné množiny
  - Nechť $\leq$ je uspořádání na množině $A$ a nechť $M\subseteq A$ pak prvek $a$:
    - je minimum $M$ - $(a \in M)\wedge \neg(\exist x \in M [x < a])$
    - je maximum $M$ - $(a \in M)\wedge \neg(\exist x \in M [x > a])$
    - je nejmenší prvek $M$ - $(a \in M)\wedge (\forall x \in M [x \geq a])$ - může být jen jeden
    - je největší prvek $M$ - $(a \in M)\wedge \neg(\forall x \in M [x \leq a])$ - může být jen jeden
    - Infimum množiny M (inf M) - je největší prvek $LB(M)$, největší prvek, který je však pořád menší než prvky množíny M
    - Suprebum množiny M (sup M) - je nejmenší prvek $UB(M)$, nejmenší prvek větší než prvky množiny M.
    - $LB(M)$ - množina dolních závor $M$ - $x \in LB(M) \iff (\forall y \in M [x \leq y])$
    - $UB(M)$ - množina horních závor $M$ - $x \in UB(M) \iff (\forall y \in M [x \geq y])$
  - Svaz je relační struktura, kde pro libovolné dva prvky platí
    - $(\forall x,y \in X)(\exist inf \{x,y\} \wedge \exist sup \{x,y\})$
  - Úplný svaz je relační struktura, kde pro libovolné dvě množiny platí
    - $(\forall M \subseteq X)(\exist inf M \wedge \exist sup M)$

### Zobrazení (funkce)
- Binární relace $f \subseteq X\times Y (f:X \rightarrow Y)$ je zobrazení množiny X do množiny Y, platí-li:
  - $(\forall x \in X)(\forall y_1, y_2 \in Y)[(x,y_1)\in f \wedge (x, y_2) \in f \rightarrow y_1 = y_2]$
- Definiční obor - $D(f) = \{ x \in X | \exist y \in Y [ (x,y) \in f ] \}$
- Obor hodnot - $H(f) = \{ y \in Y | \exist x \in X [ (x,y) \in f ] \}$
- Parciální zobrazení - $D(f) \subset X$
- Totální zobrazení - $D(f) = X$
- Zobrazení z X do Y - $H(f) \subset Y$
- Zobrazení z X na Y - $H(f) = Y$
- Injekce - $(\forall x_1, x_2 \in X)[x_1 \neq x_2 \rightarrow f(x_1) \neq f(x_2)]$
- Surjekce - $(\forall y \in Y)(\exist x \in X)[f(x) = y]$
- Bijekce - Injekce i Surjekce zároveň

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 7. Pojem operace a obecný pojem algebra. Algebry s jednou a dvěma binárními operacemi.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 8. FCA - formální kontext, formální koncept, konceptuální svazy. Asociační pravidla, hledání často se opakujících množin položek.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 9. Metrické a topologické prostory - metriky a podobnosti.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 10. Shlukování.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 11. Náhodná veličina. Základní typy náhodných veličin. Funkce určující rozdělení náhodných veličin.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 12. Vybraná rozdělení diskrétní a spojité náhodné veličiny - binomické, hypergeometrické, negativně binomické, Poissonovo, exponenciální, Weibullovo, normální rozdělení.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 13. Popisná statistika. Číselné charakteristiky a vizualizace kategoriálních a kvantitativních proměnných.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 14. Metody statistické indukce. Intervalové odhady. Princip testování hypotéz.


\newpage
