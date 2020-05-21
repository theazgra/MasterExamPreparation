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
    - $(\forall x,y \in X)(\exist \inf \{x,y\} \wedge \exist \sup \{x,y\})$
  - Úplný svaz je relační struktura, kde pro libovolné dvě množiny platí
    - $(\forall M \subseteq X)(\exist \inf M \wedge \exist \sup M)$

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
- Algebra je dvojice množiny nosiču a mnižiny operací
  - $(\{ A_i | i \in I \}, \{ w_j | j \in J \} )$
  - příklady: $(N,+), (2^M, \{ \cup, \cap \})$
- Operace je zobrazení kartézského součinu jedních množin do kartézského součinu jiných množin.
  - operace je $n$-ární, zobrazení z kartézského součinu $n$ množin
  - jako funkce, viz předchozí kapitola
- Nechť $*$ je binární operace na množině $A$, vlastnosti alg. struktur:
  - UZ Uzavřenost - $(\forall x, y \in A)(\exist z \in A)(x*y = z)$
  - AS Asociativita - $(\forall x, y, z \in A)[ (x*y)*z = x*(y*z) ]$
  - EN Existence nulového prvku - $(\exist n \in A)(\forall x \in A)(n * x = x * n = n)$
  - EJ Existence jednotkového prvku - $(\exist e \in A)(\forall x \in A)(e * x = x * e = x)$
  - IN Existence inverzního prvku - $(\forall x \in A)(\exist x^{-1} \in A)( x * x^{-1} = x^{-1} * x = e )$
  - KOM Komutativita - $(\forall x,y \in A)(x * y = y * x)$
  - Idenpotentnost - $(\forall x \in A)(x * x = x)$, např. $0 \wedge 0 = 0$, $1 \wedge 1 = 1$
- Vzhledem k jedné binární operaci na množině A, existuje nejvýše jeden nulový a jednotkový prvek
  - Jestliže je operace asociativní a existuje jednotkový prvek, pak pro každý prvek A existuje nejvýše jeden inverzní prvek
-  Nechť $*,\circ$ jsou dvě binární operace na množině A. Říkáme, že operace * je distributivní vzhledem k operaci $\circ$, jestliže platí:
   - $(\forall a,b,c \in A)[ (a \circ b) * c = (a*c) \circ (b*c) ]$ - pravý distributivní zákon - DIp
   - $(\forall a,b,c \in A)[ a * ( b\circ c) = (a*b) \circ (a*c) ]$ - levý distributivní zákon - DIl
 - Algebra $(A', \{\omega,\ldots \})$ je podalgebrou algebry $(A, \{\omega,\ldots \})$, jestliže:
   - $\emptyset \neq A' \subseteq A$
   - $A'$ je uzavřená vzhledem ke všem operacím algebry
 - Homomorfismus - zobrazení, které převádí jednu algebraickou strukturu na jinou stejného typu
   - obraz výsledku operace se rovná výsledku operace provedené s obrazy argumentů
   - Pokud existuje zobrazení které je dokáže převést i zpátky, pak se jedná o izomorfismus

### Algebra s jednou binární operací - Grupoid
- Grupoid je algebraická struktura s jednou operací a množina A je vůči této operaci uzavřena
  - Konečný grupoid, je grupoid na konečné množině A a dá se vyjádřit pomocí Cayleyovy tabulky
  - řádky i sloupce jsou prvky množiny, v tabulce je výsledek operace
  - Řád prvku $a$ grupy $G$ je nejmenší přirozené číslo takové, že platí $a^n = e$
    - pokud neexistuje konečné n, pak je prvek a nekonečného řádu
  - Řád grupy je počet prvků grupy
- Algebraické struktury - nižší dědí z vyšší
- Grupoid - UZ
- Pologrupa - UZ,ASOC
- Monoid - UZ,ASOC,EJ
- Grupa - UZ,ASOC,EJ,IN
- Abelova grupa - UZ,ASOC,EJ,IN,KOM


### Algebry s dvěma binárními operacemi
- Svaz je algebra $(L, \cup, \cap)$ s dvěma operacemi, spojení a průsek a platí:
  - Univerzalita a jednoznačnost
    - $(\forall x,y \in L)(\exist! z \in L)(x \cup y = z)$
    - $(\forall x,y \in L)(\exist! z \in L)(x \cap y = z)$
  - Asociativita
    - $(\forall x,y,z \in L)[(x \cup y) \cup z = x \cup ( y \cup z)]$
    - $(\forall x,y,z \in L)[(x \cap y) \cap z = x \cap ( y \cap z)]$
  - Komutativita
    - $(\forall x,y \in L)[(x \cup y) = ( y \cup x)]$
    - $(\forall x,y \in L)[(x \cap y) = ( y \cap x)]$
  - Absorbce
    - $(\forall x,y \in L)[x \cup (x \cap y) = x]$
    - $(\forall x,y \in L)[x \cap (x \cup y) = x]$
- Operace spojední a průsek jsou vzhledem k uspořádání $\leq$ suprémem a infímem
  - $x \cap y = inf\{ x,y \}$
  - $x \cup y = sup\{ x,y \}$
- Okruh $(A,+,\cdot)$ je algebra s dvěmi operacemi pro které musí platit:
  - $(A,+)$ - je Abelova grupa
  - $(A,\cdot)$ - je pologrupa
  - obě operace splňují distributivní zákony
  - pokud je $(A,\cdot)$ monoid, pak je okruh unitární
  - asociativní okruh, komutatnivní okruh, okruh s jednotkovým prvkem
    - vždy přidaná daná vlastnost 
  - Nulový okruh $(0,+,\cdot)$ obsahuje pouze nulu
  - Dělitelé nuly jsou takové nenulové prvky orkuhu jejíchž součin je 0
  - Obor je okruh, kde neexistují dělitelé nuly
  - Obor integrity je komutativní obor
  - Okruh je oborem integrity když v něm lze krátit nulou
  - Těleso je asociativní okruh, jehož nenulové prvky tvoří grupu vzhledem k násobení.
    - tj. $(A \setminus \{0\} ,\cdot)$ - je grupa
    - neobsahuje dělitelé nuly
  - Pole je komutativní těleso

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 8. FCA - formální kontext, formální koncept, konceptuální svazy. Asociační pravidla, hledání často se opakujících množin položek.

### Formální kontext 
- je uspořádaná trojice $(X,Y,I)$
  - $X$ je množina objektů
  - $Y$ je množina atributů
  - $I \subset X \times Y$ binární relace mezi X a Y
  - $(x,y) \in I$ znamená, že objekt $x$ má atribut $y$
- objekty jsou řádky tabulky a atributy jejich sloupce

|     | y1  | y2  | y3  | y4  |
| :-: | :-: | :-: | :-: | :-: |
|  x1 | 1   | 0   | 1   | 1   |
|  x2 | 1   | 0   | 0   | 1   |
|  x3 | 0   | 1   | 0   | 1   |
|  x4 | 0   | 0   | 1   | 1   |
|  x5 | 0   | 1   | 1   | 0   |
- každy kontext indukuje zobrazení $\uparrow\ : 2^X \rightarrow 2^Y$
  - $A\subseteq X | A^\uparrow = \{ y\in Y | \forall x \in A; (x,y) \in I \}$
- každy kontext indukuje zobrazení $\downarrow\ : 2^Y \rightarrow 2^X$
  - $B\subseteq Y | B^\downarrow = \{ x\in X | \forall y \in B; (x,y) \in I \}$

### Formální koncept

- Formální koncept v kontextu $(X,Y,I)$ je taková dvojice $(A,B)$, kde $A \subseteq X$, $B \subseteq Y$ a pro které platí:
  - $A^\uparrow = B$
  - $B^\downarrow = A$
- Množina objektů A se nazývá *extent* (rozsah)
- Množina atributů B se nazývá *intent* (obsah)
- Množina všech formálních konceptů v $(X,Y,I)$ se značí jako $\mathscr{L}(X,Y,I)$
- Zobrazení $f:2^X \rightarrow 2^Y$ a $g:2^Y \rightarrow 2^X$ tvoří Galaisovu konexi mezi X a Y, pokud pro $A,A_1,A_2 \subseteq X$ a $B,B_1,B_2 \subseteq Y$  platí:
  - $A_1 \subseteq A_2 \rightarrow A_2^\uparrow \subseteq A_1^\uparrow$
  - $B_1 \subseteq B_2 \rightarrow B_2^\downarrow \subseteq B_1^\downarrow$
  - $A \subseteq g(f(A))$
  - $B \subseteq f(g(A))$

### Konceptuální svaz
- je množina $\mathscr{L}(X,Y,I)$ spolu s relaci uspořádání $\leq$ definovanou na $\mathscr{L}(X,Y,I)$ takto:
  - $(A_1,B_1)\leq (A_2,B_2) \iff A_1 \subseteq A_2 (\iff B_1 \subseteq B_2)$
- V úplném konceptuálním svazu $(\mathscr{L}(X,Y,I),\leq)$ je infimum a suprémem definováno jako:
  - $inf(A_j,B_j) = \bigwedge\limits_{j \in J}(A_j,B_j) = ( \bigcap\limits_{j \in J}A_j; ( \bigcup\limits_{j\in J} B_j )^{\downarrow\uparrow}  )$
  - $sup(A_j,B_j) = \bigvee\limits_{j \in J}(A_j,B_j) = (( \bigcup\limits_{j\in J} A_j )^{\downarrow\uparrow};\bigcap\limits_{j \in J}B_j  )$
- Algoritmus jedinečných průniků
  - Vstup: Formální kontext: $(X,Y,I)$
  - Výstup: Množina konceptů
  1. Ke všem atributům vytvoř extent ($e_1=a_1^\downarrow,e_2=a_2^\downarrow,\ldots$)
  2. Rozšiř o všechny jedinečné průniky extentů
  3. Přidej původní množiny objektů X
  4. Vypočti intenty k extentům

### Asociační pravidla
- $I$ jsou položky transakcí neboli items (atributy)
- $A,B\subseteq I \wedge A,B \neq \emptyset$ pak je asociační pravidlo $A \rightarrow B$, kde A je antecedent a B je sukcedent
- Množina transakčních dat na konečné množině položek $I$ je funkce $T : \{1,\ldots,n\} \rightarrow 2^I$
- Množina $T(k)$ je k-tá transakce obsahující podmnožinu z množiny položek
  - $T(k) = x_k^\uparrow$
- Nechť $T : \{1,\ldots,n\} \rightarrow 2^I$ je množina transakčních dat na konečné množině položek $I$ a $K\subseteq I$. Pak podpora (*support*) množiny $K$ je daná jako relativní četnost výskytu transakcí obsahující položky z $K$
  - $supp(K) = \frac{|K^\downarrow|}{|X|}$, $K \subseteq Y$ ve formálním kontextu $(X,Y,I)$
- Množina položek $K \subseteq I$ je $\mu$-množina často se vyskytujících položek ($\mu$-*Frequent Item Set*) pokud je $supp(K) \geq \mu$
- Asociační pravidlo na konečné množině položek $I$ je dvojice neprázdných disjunktních množin A,B
- Spolehlivost pravidla $A\rightarrow B$ je číslo:
  - $conf(A\rightarrow B) = \frac{supp(A \cup B)}{supp(A)}$
- **Apriori algoritmus** - Hledání množiny častých položek $\mu$-FIS
  - Každá podmnožina množiny častých položek je takémnožinou častých položek!
  - Postup zdola nahoru: vyhledáme nejdřív všechny jednoprvkové množiny častých položek
    - spočítáme frekvence jednotlivých položek
  - z jednoprvkových množin vytvoříme kandidáty na dvouprvkové množiny, spočítáme jejich frekvenci, necháme jen ty, které splňují minimální frekvenci
  - tak pokračujeme nahoru ve stromu
<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 9. Metrické a topologické prostory - metriky a podobnosti.
### Metrický prostor
- dvojice $(\mathcal{M},d)$ kde $\mathcal{M}$ je libovolná neprázdná množina a $d$ je zobrazení $d:\mathcal{M}\times\mathcal{M} \rightarrow R$, reprezentující metriku, splňující pro $\forall x,y,z \in \mathcal{M}$:
  - a) totožnost - $d(x,y) = 0 \iff x = y$
  - b) symetrie - $d(x,y) = d(y,x)$
  - c) nerovnost - $d(x,y) + d(y,z) \geq d(x,z)$
  - d) nezápornost - $d(x,y) \geq 0$
- Hodnota $d(x,y)$ je vzdálenost mezi x a y
- Pseudometrika - splňuje body b,c,d, ale nesplňuje totožnost, můžou existovat různé prvky s nulovou vzdáleností
  - $d(x,y) = |x^2 - y^2|$
- Ultrametrika - splňuje body a,b,c ale navíc platí:
  - $d(x,z) \leq max\{ d(x,y), d(y,z) \}$
  - ultrametrický prostor
- Nepodobnost - splňuje a,b zobrazení od podobnosti
- **Diskrétní prostor** $(X,\rho)$, má pouze určitý počet vzdáleností, např. 0 a 1
  - pokud je $X\neq\emptyset$
  - a $\rho$ = 0 pro x=y, jinak 1
- Příklady metrid pro $(R^n,d)$
  - $d_p(x,y) = \sqrt[p]{\sum_{i=1}^n(x_i - y_i)^2}$ - Minkovského metrika pro $p \geq 1$
  - $p = 1$ Mannhatenovská metrika
  - $p = 2$ Euklidovská metrika
- Čebyševovská metrika
  - $d_č(x,y) = \max\limits_{\forall i}\{ | x_i - y_i | \}$
- Jaccardova vzdálenost
  - $d_J(x,y) = \frac{ \sum_{i=1}^n \max(x_i,y_i) - \sum_{i=1}^n \min(x_i,y_i) }{ \sum_{i=1}^n \max(x_i,y_i) }$
- Metriky nad abecedou
  - Levensteinova editační vzdálenost - minimální počet operací vkládání, mazání a přepisu
  - LCS *Longest Common Sequence* - minimální počet operací vkládání, mazání
  - Hammingova vzdálenost - pokud jsou oba texty stejně dlouhé, počet odlišných pozic
- Pro každé dvě množiny $A,B \subseteq (\mathcal{M},d)$ definujeme jejich vzdálenost jako:
  - $dist(A,B) = \inf\{ d(x,y); x \in A \wedge y \in B \}$
  - Je-li $\mathcal{M}$ konečné pak $dist(A,B) = \min\{ d(x,y); x \in A \wedge y \in B \}$
- Průměr množiny $A \subseteq (\mathcal{M},d)$ je $diam(A)$:
  - $A = \emptyset \iff diam(A) = 0$
  - $A \neq \emptyset\iff diam(A) = \sup\{ d(x,y); x,y \in A \}$
- Je-li $A \subseteq (\mathcal{M},d)$ a poloměr $0 \leq r \leq \infty$:
  - $B(x,r) = \{ y \in \mathcal{M}; d(x,y) < r \}$  otevřená koule
  - $K(x,r) = \{ y \in \mathcal{M}; d(x,y) \leq r \}$  uzavřená koule
  - $S(x,r) = \{ y \in \mathcal{M}; d(x,y) = r \}$  sféra
- V metrickém prostoru $(\mathcal{M},d)$ posloupnost $\{x_n\}$ konverguje k bodu $x \in (\mathcal{M},d)$ (má za limitu bod x), jestliže $d(x_n,x) \rightarrow 0$ [$\lim\limits_{n\rightarrow\infty}d(x_n,x) = 0$]
- Okolí bodu $x \in (\mathcal{M},d)$ je každá množina obsahující otevřenou kouli $B_r(x) = \{ y \in \mathcal{M}; d(x,y) < r \}$ pro jakékoliv $r > 0$
- Podmnožina $A$ metrického prostoru $(\mathcal{M},d)$ se nazývá otevřená, jestliže každý bod z $A$ má celé okolí ležící v $A$
  - tj. žádná posloupnost z $\mathcal{M}\setminus A$ nekonverguje k bodu z $A$
- Podmnožina $A$ metrického prostoru $(\mathcal{M},d)$ se nazývá uzavřená, jestliže její doplněk $\mathcal{M}\setminus A$ je otevřený
- Pravidla pro bod $x$ a množinu $A$:
  - Vnitřní bod množiny - $\exist r > 0; B(x,r) \subset A \quad( A\cap B(x,r) = B(x,r) )$
  - Vnitřek množiny $A$ je množina všech vnitřních bodů $A$
  - Vnější bod množiny - $\exist r > 0; B(x,r) \subset \mathcal{M}\setminus A \quad( A\cap B(x,r) = \emptyset )$
  - Uzávěr množiny $A$ je množina všech bodů z $\mathcal{M}$, které mají neprázdný průnik v okolí libovolného bodu z $A$
  - Hraniční bod množiny - $\forall r > 0; A \cap B(x,r) \neq \emptyset \wedge (\mathcal{M}\setminus A)\cap B(x,r) \neq \emptyset$
  - Hranice množiny $A$ je množina všech hraničních bodů z množiny $A$
    - Uzávěr bez vnitřku
  - Hramadný bod množiny - konečné množiny jej nemají
    - $\forall r > 0; A \cap (B(x,r)\setminus\{x\})=\emptyset$
  - Izolovaný bod množiny - každý bod konečné množiny je izolovaným bodem
    - $\exist r > 0; A \cap B(x,r) = \{x\}$

### Podobnost
- ve vektorovém prostoru $V$ nad tělesem $R$ je zobrazení:
  - $s:V\times V\rightarrow R$ splňující pro $\forall x,y \in V$ body:
    - nezápornost - $s(x,y) \geq 0$
    - totožnost - $s(x,y) \leq s(x,x)$ a $s(x,y) = s(y,x) \iff x=y$
    - symetrii - $s(x,y) = s(y,x)$
  - kosínova podobnost $s_c(x,y) = \frac{x \cdot y}{||x||_2 \cdot ||y||_2}$
    - $||x||_2 = \sqrt{x_1^2 + x_2^2+\ldots + x_n^2}$
  - Jaccardova podobnost množin
    - $X,Y\subseteq P(A), s_J(X,Y) = \frac{|X\cap Y|}{|X\cup Y|}$
  - Diceova podobnost
    - - $X,Y\subseteq P(A), s_J(X,Y) = \frac{2|X\cap Y|}{|X| + |Y|}$
- **Nepodobnost** je obrácená podobnost
  - $d_s(x,y) = 1 - s(x,y)$

### Topologický prostor
- Na množině $X$ je daná topologie $\mathcal{T}$ pomocí otevřených množin, je-li dán systém $\mathcal{T} \subseteq 2^X$, splňující:
  - a) $\emptyset, X \in \mathcal{T}$
  - b) $\forall A,B \in \mathcal{T}; A \cap B \in \mathcal{T}$
  - c) $\forall A,B \in \mathcal{T}; A \cup B \in \mathcal{T}$
    - $X$ je uzavřeno na sjednocení i průnik
- Dvojice $(X, \mathcal{T})$ tvoří topologický prostor
- Každý metrický prostor je i topologický prostor, né naopak
- Uzávěr množiny $A \subseteq X$ z topologického prostoru $(X, \mathcal{T})$ je definován pomocí uzávěrových množin:
  - $cl(A) = \bigcap\{ U \in \mathcal{T}; A \subseteq U \}$
- Vnitřek množiny $A \subseteq X$ z topologického prostoru $(X, \mathcal{T})$ je definován pomocí uzávěrových množin:
  - $int(A) = \bigcup\{ U \subseteq \mathcal{T}; U \subseteq A \}$
- Hranice $A \subseteq X$ v topologickém prostoru $(X, \mathcal{T})$ je:
  - $bd(A) = cl(A) \setminus int(A)$
- Pokud topologický prostor nelze rozdělit na dvě disjunktní neprádzné podmnožiny množiny $X$ tak se jedná o **souvislý topologický prostor**
  - jediné obojetné podmnožiny T.P. jsou $\emptyset$ a $X$
- Komponenta neprázdného T.P. je maximální souvislá podmnožina z $X$


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 10. Shlukování
- Shluková analýza je vícerozmerná statistická metoda, která se používá ke klasifikaci objektu. 
- Slouží k trídení jednotek do skupin (shluku) tak, aby si jednotky náležící do stejné skupiny byly podobnejší než objekty z ostatních skupin.
- Shlukování – proces seskupování dat do skupin na základe podobnosti.
- Shluk – množina maximálne si podobných v rámci shluku a maximálne odlišných mezi shluky.
- Podobnost mezi objekty se stanoví na základe vzdálenosti (nekteré z metrik zmínených výše – Manhattan, Euklidovská, Minkowského, Cevyševova (Maximova)).
- Metody shlukování mužeme klasifikovat do dvou základních kategorií hierarchické a nehierarchické metody.
- Shlukování se dá dělit také podle toho jaké shluky vytváří
  - Ostré shluky - objekt patří právě do jednoho shluku
  - Soft, Překrývající se shluky - objekt může patřit do více shluků 

###  Hierarchické shlukování
- Divizivní přístup - vycházíme z jednoho shluku, který postupně dělíme
- Aglomerativní přístup - vycházíme z jednotlivých objektů, které postupně spojujeme
- Toto shlukování je dobře interpretovatelné a není třeba znát počet shluků dopředu
- nevýhodou je, že v každém kroku řeší pouze lokálně nejlepší řešení
- Nevýhodou techto metod je, že mohou vzniknout nejednoznacnosti už na zacátku shlukování, které se projeví až pozdeji ve velkých shlucích. Predchozí kroky není možné zmenit.
- Metody Aglomerativní: 
  - Single linkage (nearest neighbor)
    - Vzdálenost shluku je určena vzdáleností dvou nejbližších prvku z ruzných shluků. 
    - Použití této metody vede k tomu, že jsou objekty taženy k sobe, výsledkem jsou dlouhé řetězy menších shluku.
  - Complete linkage (furthest neighbor)
    - Vzdálenost shluku je určena naopak vzdáleností dvou nejvzdálenejších prvku z ruzných shluku. 
    - FUnguje dobře, obvykle tvoří poměrné kompaktní shluky
  - Average linkage (prumerná vazba)
    - Vzdálenost shluku je určena jako průměr vzdáleností všech páru objektu z ruzných shluku. 
    - Muže být ve vážené i nevážené podobě. Nejčastěji používaná míra pro vzdálenost.
  - Centroidní metoda
    - používá se euklidovská vzdálenost centroidu, neboli těžišť shluků
    - Dochází ke sloučení shluků s nejmenší vzdálenosti mezi těžišťi
    - Může být taky pomocí mediánůW
  - Wardova metoda 
    - metoda založena na ztrátě informací, která vzniká pri shlukování.
    - Kritériem pro shlukování je celkový součet druhých mocnin odchylek každého objektu od težište shluku, do kterého náleží. 
    - Hodí pro práci s objekty, které mají stejný rozměr promenných.
- Metody Divizivní
  - Jsou náročné a moc se nevyužívají

###  Nehierarchické shlukování
- Uživatel předem stanovuje finální počet shluků
- K-Means
  - minimalizuje průměrnou vzdálenost mezi prvky téhož shluku
  - Postup:
    1. Urči $k$
    2. Náhodně vyber $k$ jader
    3. Přiřaď všechny objekty k nejbližšímu jádru
    4. V rámci shluku přepočítej jádro jako průměr všech objektů
    5. Opakuj kroky 3. a 4. dokud se shluky mění
 - jednoduchý intuitivní algoritmus
 - nevýhodou je náhodná inicializace, nevhodné pro zašuměná data a kategorická data
- K-Medoidů
  - funguje jako K-means ale volí realné objekty jako jádra
  - používá Mannhatenovskou vzdálenost

### Kvalita shlukování
- Vnitřní míra kvality - např. SSE od těžiště (centroidu)
- Vnější míra kvality - srovnává dosažený výsledek se správným rozdělením objektů
- Dále se dá hodnotit např. pomocí Silhoutte indexu, který měří podobnost objektu ke svému shluku, nebo Dunn indexu


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 11. Náhodná veličina. Základní typy náhodných veličin. Funkce určující rozdělení náhodných veličin.
Teorie pravděpodobnosti je matematická disciplína popisující zákonitosti týkající se náhodných jevů, tj. jevů, které se mohou ale nemusí stát. Hledá pravděpodobnost určitých výsledků (náhodných jevů), známe-li základní soubor (populaci)
- Náhodný pokus - každý děj, jehož výsledek není předem jednoznačně určen podmínkami, za kterých probíhá
  - náhodný pokus je teoreticky neomezeně krát opakovatelný
  - *hod kostkou, zjíštění životnosti žárovky*
- Elementární jev $\omega$ - jeden výsledek náhodného pokusu
- Základní prostor $\Omega$ - množina všech elementárních jevů
- Náhodný jev - tvrzení o výsledku náhodného pokusu, podmnožina $\Omega$
  - o pravdivosti tvrzení lze rozhodnout až po ukončení pokusu
  - *padne šestka, žárovka vydrží 5 let*
- Náhodná veličina - číselné vyjádření výsledku náhodného pokusu

### Pravděpodobnost
- Pravděpodobnost je číselné vyjádření toho, že při náhodném pokusu daný jev nastane
- klasická definice pravděpodobnosti je založena na $n$ různých ale rovnocených výsledcích náhodného pokusu
  - $P(A) = \frac{m}{n}$, $m$ je počet výsledků přiznivých jevu $A$
- Geometrická pravděpodobnost - zobecnění pro případ, kdy počet všech možných výsledků náhodného pokusu je nespočetný
  - Například pro plochu
  - $P(A) = \frac{|A|}{|\Omega|}$
- Kolmogorův axiomatický systém - definuje pojem pravděpodobnost a její vlastnosti, ale neříká jak jí určit
  1. Každému jevu $A$ je přiřazena nezáporná pravděpodobnost $P(A)$
  2. Pravděpodobnost jistého jevu je rovna 1
  3. Pravděpodobnost, že nastane některý z navzájem vylučujících se jevů, je rovna součtu jejich pravděpodobností
- Podmíněná pravděpodobnost - pravděpodobnost jevu, za předpokladu, že nastal jiný určitý jev
  - $P(A|B) = \frac{P(A \cap B)}{P(B)}$, $P(B) \neq 0$, pravd. jevu $A$ jestliže nastane jev $B$
  - Pokud platí $P(A \cap B) = P(A) \cdot \P(B)$ tak jsou jevy $A$ a $B$ nezávislé
- Další vlastnosti pravděpodobnosti:
  1. $0 \leq P(A) \leq 1$
  2. $P(\emptyset) = 0$
  3. $P(A') = 1 - P(A)$
  4. $A \subset B \rightarrow P(A) \leq P(B)$
  5. $P(B-A) = P(B) - P(A \cap B)$
     - $A \subset B \rightarrow P(B - A) = P(B) - P(A)$
  6. $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
     - $A \cap B = \emptyset \rightarrow P(A \cup B) = P(A) + P(B)$

### Náhodná veličina (NV)
- výsledek náhodného pokusu vyjádřený realným číslem je hodnota NV
- příklady NV: doba do poruchy žárovky, počet vadných výrobků mezi tisíci, roční spotřeba energie české domácnosti
- Náhodná veličina $X$ je reálná funkce $X : \Omega \rightarrow \mathcal{R}$, taková, že pro každé reálné $x$ je množina $\{ \omega \in \Omega | X(\omega) < x \}$ náhodným jevem
- Dískrétní NV DNV - může nabývát spočetně mnoha hodnot
- Spojitá NV SNV - nespočetně hodnot, hodnoty v intervalu
- Rozdělení pravděpodobnosti NV - předpis, který jednoznačně určuje všechny pravděpodobnosti typu $P(X\in M)$, kde $M \subset \mathcal{R}$
  - Distribuční funkce - DNV i SNV
  - Pravděpodobnostní funkce - DNV
  - Hustota pravděpodobnosti - SNV
- Rozdělení NV - předpis, který umožňuje určit pravděpodobnost, že NV $X$ nabývá hodnoty z libovolné podmnožiny $\mathcal{R}$
- **Distribuční funkce** - Funkce $F(x)$ je pravděpodobnost, že NV $X$ bude menší než dané realné číslo $x$
  - $F(x) = P(X < x)$
  - Fce, která každému realnámu číslu přiřazuje pravděpodobnost, že NV bude menší než toto reálné číslo
  - Jednoznačně určuje rozdělení NV
  - Vlastnosti $F(x)$:
    - Nabývá hodnot z intervalu $\langle0;1\rangle$
    - neklesající
    - zleva spojitá (pravý bod vždy patří do intervalu)
    - má nejvýše spočetně mnoho bodu nespojitosti
    - začíná v 0 a končí v 1, definováno pomocí limitů

### Dískrétní náhodná veličina DNV
- nabývá pouze hodnot z nejaké konečné či spočetné množiny
- **Pravděpodobnostní funkce** je funkce $P(X = x_i) = P(x_i)$ náhodné veličiny $X$
  - může být zadána předpisem, tabulkou nebo grafem
- Distribuční funkce DNV lze vyjádřit pomocí pravděpodobnostní fce jako
  - $F(x) = \sum\limits_{x_i < x}P(x_i)$
  - tj. jako součet pravdepodobností tech $x_i$, která jsou menší než $x$
  - je to schodovitá funkce, která je nespojitá v bodech, v nichž je pravděpodobností funkce nenulová

### Spojitá náhodná veličina SNV
- muže nabýt všech hodnot z určitého intervalu
- většinou cokoliv s časem
- Pravděpodobnostní funkce ve všech bodech SNV je **nulová**
- SNV je charakterizovaná hustotou pravděpodobnosti
- **Hustota pravděpodobnosti** $f(x)$ SNV je reálná nezáporná funkce taková, že:
  - $F(x) = \int\limits_{-\infty}^x f(t) \ dt$, pro $-\infty < x < \infty$
  - platí: $f(x) = \frac{dF(x)}{dx}$
  - Vlastnosti:
    1. Nezáporná funkce
    2. Plocha pod křivkou hustoty pravděpodobnosti je rovna 1
    3. Začíná v 0 a končí v 1

### Číselné charakteristiky NV
- popisují určité aspekty NV, které se dají popsat jedním číslem
- Obecný moment $r$-tého řádů ($\mu_r nebo E(X^r)$ pro $r = 1,2,\ldots$)
  - DNV - $\mu_r = \sum\limits_i x_i^r \cdot P(x_i)$
  - SNV - $\mu_r = \int\limits_{-\infty}^\infty x^r \cdot f(x) dx$
  - pokud $r = 1$ pak se jedná o střední hodnotu, neboli populační průměr
    - je to průměrná očekávaná hodnota NV $X$, hodnoty NV $X$ kolem ní kolísají
    - platí: $E(aX+b) = aE(X) + b$
    - Střední hodnota součtu náhodných veličin je rovna součtu jednotlivých středních hodnot.
- Centrální moment $r$-tého řádu ($\mu_r' = E[X - E(X)]^r$ pro $r = 1,2,\ldots$)
  - DNV - $\mu_r' = \sum\limits_i [x_i - E(X)]^r \cdot P(x_i)$
  - SNV - $\mu_r' = \int\limits_{-\infty}^\infty [x - E(X)]^r \cdot f(x) dx$
  - pokud $r = 2$ pak se jedná o rozptyl
    - Často se počítá jako: $D(X) = E(X^2) - [E(X)]^2$
    - Míra variability dat kolem střední hodnoty
    - Jednotka rozptylu je kvadrát jednotky NV!
    - platí: $D(aX + b) = a^2\cdot D(X)$
    - pro nezávislé NV je rozptyl součinu roven součinu jednotlivých rozptylů
    - Směrodatná odchylka je odmocnina rozptylu: $\sigma = \sqrt{D(X)}$
  - Šikmost je mírou symetrie daného rozdělení pravděpodobnosti
    - $\alpha_3 = \frac{\mu_3}{\sigma^3}$
  - Špičatost je mírou koncentrace hodnot NV kolem střední hodnoty
    - $\alpha_4 = \frac{\mu_4}{\sigma^4}$
  - Kvantily se určují pro SNV jako:
    - $\forall p \in \langle 0;1 \rangle : F(x_p) = p$
    - Kvantilová funkce je inverzní funkci distribuční
    - $p$-kvantil ($100_p\% kvantil$) je číslo pro které platí: $P(X < x_p) = p$
    - je-li $X$ NV polisující platy v ČR a $x_{0,3} = 12000$ pak víme, že 30% lidí v ČR ma plat menší jak 12 000Kč.
      - Kvartily - dolní kvartil $x_{0,25}$, medián $x_{0,5}$, horní kvartil $x_{0,75}$
      - Decily - $x_{0,1}$, $x_{0,2}$
      - Percentily - $x_{0,01}$, $x_{0,02}$
  - Modus $x^\wedge$ - typická hodnota NV
    - DNV - hodnota, která nabývá NV s největší pravděpodobností
    - SNV - hodnota v niž hustota pravděpodobnosti nabývá svého maximu
  - Variační koeficient $\gamma$
    - $\gamma = \frac{\sigma}{|\mu|}$
    - je to směrodatná odchylka v procentech střední hodnoty
    - hodnota větší jak 50% značí silně rozptýlený soubor

### Čebyševova nerovnost
$\forall k > 0: P(\mu - k\sigma < x < \mu + k\sigma) > 1 - \frac{1}{k^2}$
| k   | Pravděpodobnost |
| --: | --------------: |
| 1   | > 0.0           |
| 2   | > 0.75          |
| 3   | > 0.89          |

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 12. Vybraná rozdělení diskrétní a spojité náhodné veličiny - binomické, hypergeometrické, negativně binomické, Poissonovo, exponenciální, Weibullovo, normální rozdělení.
### Rozdělení DNV
- Bernoulliho pokusy - Posloupnost nezávislých pokusů mající pouze dva možný výsledky, úspěch či neúspěch
  - Pravděpodobnost úspěchu $\pi$, neúspěchu $1 - \pi$
- Alternativní rozdělení - $X$ je počet výskytů daného jevu (úspěchu) v jednom pokusu
  - $X \thicksim A(p)$, $p$ je pravděpodobnost daného jevu
  - $P(X = 1) = p$
  - $P(X = 0) = 1 - p$
- Binomické rozdělení - $X$ je počet úspěchů v $n$ Bernoulliho pokusech
  - $X \thicksim Bi(n, p)$
  - $P(X = k) = \binom{n}{k} p^k (1 - p)^{n-k}$
  - $E(X) = n\cdot p$
  - $D(X) = n \cdot p (1 - p)$
- Hypergeometrické rozdělení - $X$ je počet prvků se sledovanou vlastností ve výběru $n$ prvků
  - $X \thicksim H(N,M,n)$
  - $N$ rozsah základního souboru, $M$ počet prvků s požadovanou vlastností, $n$ rozsah výběru
  - Hypergeometrické rozdělení je základním pravděpodobnostním rozdělením při výběru bez vracení.
  - Pro závislé pokusy
  - $P(X = k) = \frac{\binom{M}{k} \binom{N-M}{n-k} }{\binom{N}{n}}$
  - $E(X) = n\cdot \frac{M}{N}$
  - je-li $\frac{n}{N} < 0,05$ lze hypergeometrické rozdělení aproximovat binomickým $Bi(n,\frac{M}{N})$
- Geometrické rozdělení - $X$ je počet Bernoulliho pokusů do prvního výskytu úspěchu, včetně něj
  - $X \thicksim G(p)$
  - $P(X = n) = p\cdot(1 - p)^{n-1}$
  - $E(X) = \frac{1}{p}$
  - $D(X) = \frac{1-p}{p^2}$
  - Speciální případ Pascalova rozdělení
  - **POZOR**: Někde definováno jako: počet neúspěchů před prvním úspěchem
- Negativně binomické (Pascalovo) rozdělení - $X$ je počet Bernoulliho pokusů do $k$-tého výskytu úspěchu, včetně $k$-tého výskytu
  - $X \thicksim NB(k, p)$
  - $P(X = n) = \binom{n-1}{k-1}p^k(1-p)^{n-k}$
  - $E(X) = \frac{k}{p}$
  - $D(X) = \frac{k(1-p)}{p^2}$
- Poissonův proces - počet náhodných událostí v nějakém pevném časovém intervalu. Poissonův proces je speciálním případem bodového procesu
  - Registrujeme počet událostí $N(s,t)$ v časovém intervalu $\langle s;s+t \rangle$
  - Rychlost výskytu událostí $\lambda$ je parametrem Poissonova procesu
    - hustota výskytu události na ploše, resp. v objemu
  - Lze definovat v libovolné prostorové oblasti, čase, prostoru (plocha, objem)
  - Vlastnosti procesu:
    - Ordinální - pravděpodobnost výskytu více než jedné události v limitně krátkém časovém intervalu $(t \rightarrow 0)$ je nulová. Řídké jevy.
    - Stacionární - rychlost výskytu událostí je konstantní v průběhu celého intervalu
    - Beznásledný - pravděpodobnost výskytu události není závislá na čase, který uplynul od minulé události
  - $X$ je počet výskytů událostí v časovém intervalu délky $t$
    - *$X$ je počet výskytů událostí na ploše $t$ (v objemu $t$)*
  - $X \thicksim Po(\lambda t)$
  - $P(X = k) = \frac{(\lambda t)^k e^{-\lambda t}}{k!}$
  - $E(X) = D(X) = \lambda t$

### Rozdělení SNV
- Rovnoměrné rozdělení - $X$ NV s rovnoměrným rozdělením na intervalu $(a;b)$
  - $X \thicksim R(a;b)$
  - hustota pravděpodobnosti je konstantní na daném intervalu $(a;b)$
  - $f(x) = \frac{1}{b-a} \iff x \in (a;b)$
    - jinak 0
  - $E(X) = \frac{a+b}{2}$
  - $D(X) = \frac{(a-b)^2}{12}$
  - *Doba čekání na tramvaj, která jezdí pravidelně*
- Intenzita poruch - Riziková funkce
  - Modelujeme-li dobu do výskytu události (životnost, dobu do poruchy, dobu do relapsu (návratu onemocnení),apod.)
  - $\lambda t = \frac{f(t)}{1 - F(t)}$
  - Dělí se do tří oblastí, tvar vany
    - Období časných poruch - intentiza poruch postupně klesá
    - Období stabilního života - intentiza poruch je stabilní
    - Období stárnutí - intentiza poruch postupně roste
- Exponenciální rozdělení - $X$ je délka časových intervalů mezi událostmi v Poissonovém procesu
  - Umí modelovat pouze dobu do poruchy v období stabilního života
  - $X \thicksim Exp(\lambda)$
  - $f(t) = \lambda e^{-\lambda t} \iff t > 0$
  - $f(t) = 0 \iff t \leq 0$
  - $E(X) = \frac{1}{\lambda}$
  - $D(X) = \frac{1}{\lambda^2}$
  - *Délka do poruchy zařízení, doba od jedné dopravní nehody k druhé*
- Weibullovo rozdělení - $X$ je délka časových intervalů mezi událostmi v Poissonové procesu
  - $X \thicksim W(\Theta,\beta)$
  - $\Theta > 0$ - parametr měřítka, $\Theta = \frac{1}{\lambda}$
  - $\beta > 0$ - parametr tvaru, ovlivňuje tvar intenzity poruch
    - Období časných poruch - $\beta < 1$
    - Období stabilního života - $\beta = 1$
    - Období stárnutí - $\beta > 1$
  - zobecnění exponenciálního rozdělení, umí modelovat dobu do poruchy ve všech třech intervalech Rizikové funkce
- Normální rozdělení
  - vhodné k popisu NV, kterou lze interpretovat jako aditivní výsledek mnoha nepatrných a vzájemně nezávislých faktorů
  - popisuje NV, jejichž hustoty se symetricky shlukují kolem střední hodnoty a vytváří tak charakteristický tvar hustoty pravděpodobnosti, Gaussovu křivku
  - Normální rozdělení je řízeno střední hodnotou $\mu$ a rozptylem $\sigma^2$
    - $X \thicksim N(\mu, \sigma^2)$
    - $f(x) = \frac{1}{\sigma\sqrt{2p}}\cdot e^{\frac{x-\sigma}{\sqrt{2}\sigma}}$, pro $-\infty < x < \infty$
    - $E(X) = \mu$
    - $D(X) = \sigma^2$
- Normované (standardizované) normální rozdělení
  - Speciální typ normálního rozdělení kde $\mu = 0$ a $\sigma^2 = 1$
  - $Z \thicksim N(0,1)$
  - Význam normovaného normálního rozdělení spočívá zejména v tom, že jeho distribuční funkce je tabelována
  - Hustota pravděpodobnosti $\varphi$ je sudá funkce
    - $\varphi(z) = \varphi(-z)$
    - $\varphi(z) = 1 - \varphi(-z)$

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 13. Popisná statistika. Číselné charakteristiky a vizualizace kategoriálních a kvantitativních proměnných.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 14. Metody statistické indukce. Intervalové odhady. Princip testování hypotéz.


\newpage
