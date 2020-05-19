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


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 6. Pojem relace, operace s relacemi, vlastnosti relací. Typy binárních relací. Relace ekvivalence a relace uspořádání.


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
