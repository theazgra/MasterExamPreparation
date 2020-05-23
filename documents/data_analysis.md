# Analýza a zpracování dat


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 1. Druhy dat, předzpracování dat, vlastnosti dat. Výběr atributů (zdůvodnění, princip, entriopie, Gini index, …)


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 2. Hledání častých vzorů v datech (základní principy, metody, varianty, implementace).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 3. Shlukovací metody (shlukování pomocí reprezentantů, hierarchické shlukování).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 4. Shlukování na základě hustoty, validace shluků), pokročilé metody shlukování (CLARANS, BIRCH, CURE).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 5. Rozhodovací stromy (princip, algoritmus, metriky pro vhodnou volbu hodnot dělících atributů, prořezávání).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 6. Pravděpodobnostní klasifikace (Bayesovský teorém, naivní Bayesovský teorém).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 7. Support Vector Machines (princip, algoritmus, kernel trick).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 8. Neuronové sítě (základní princip, metody učení, aktivační funkce).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 9. Vyhodnocení klasifikačních algoritmů (chybovost, přesnost, pokrytí, f-metrika)


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 10. Regrese (lineární a nelineární regrese, regresní stromy, metody vyhodnocení kvality modelu)Typy sítí. Graf a matice sousednosti jako reprezentace sítě.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 11. Datové struktury pro reprezentaci různých typů sítí, výhody a nevýhody (matice sousednosti, seznamy sousedů, stromy sousedů), složitost operací, hybridní reprezentace.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 12. Topologické vlastnosti sítí, charakteristické hodnoty a jejich distribuce (stupeň, délka cesty, průměr, shlukovací koeficient), typy centralit.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 13. Globální vlastnosti sítí (malý svět, bezškálovost, růst a preferenční připojování). Mocninný zákon a jeho interpretace v prostředí reálných sítí.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 14. Modely sítí a jejich vlastnosti (Erdös-Rényi, Watts-Strogatz, Barabási-Albert).


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 15. Komunity. Globální a lokální přístupy. Modularita.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 16. Jiné (pokročilé) modely sítí - multilayer sítě, modely orientované na komunitní strukturu, temporální sítě.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 17. Odolnost sítí, šíření jevů v sítích.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 18. Algoritmy pro pattern matching (Vyhledávání jednoho vzorku, více vzorků; Vyhledávání regulárních výrazů; Přibližné vyhledávání).
Algoritmy vyhledávání vzorku se liší podle toho zda nějak předzpracovávájí vzorek či text, podle počtu vyhledáváných vzorku nebo podle směru hledání (sousměrné, protisměrné).
Důvody proč vyhledávat vzorky v textu:

- Nalezení a zvýraznění slov
- Při tvorbě indexu - hledaní lemmat, částic, zájmen


### Algoritmy pro přesné vyhledávání vzorků
- Označení: Text $t$, Délka textu $m$, Vrozek $v$, Délka vzorku $n$
- Brute force - při neshodě na $i$-té pozici se posune vpravo o jednu pozici, znovu kontroluje vzorek od začátku
  - $O(mn)$, pro přirozený jazyk $O(m)$
- Knuth-Morris-Prattův algoritmus - sousměrné vyhledávání jednoho vzorku
  - Elimunuje porovnávání již jednou zkontrolované části textu
  - Vzorek je při neshodě posunut co nejméně tak, aby část, která zůstane pod již zkontrolovanou částí, s ní byla shodná
  - Před pozicí neshody zůstane vlastní prefix prohledané části vzorku, který musí být shodný s postfixem této části
  - Opravné pozice pro chyby na jednotlivých pozicích $j$ vzorku, jsou uloženy v pomocném poli $P$, které jy vytvořeno ze vzorku
    - Podle tohoto pole je vzorek posunut
  - Složitost předzpracování $O(n)$ a vyhledávání $O(m+n)$
- Boyer-Moorův Algoritmus - protisměrné vyhledávání vzorku s předzpracováním vzorku
  - Znaky vzorku se porovnávají zprava doleva
  - Hodnota dvojrozměrného pomocného pole je pro pozici ve vzorku a znak $x$ vzorku
    - Co nejmenší takový posun, aby se pod právě porovnávanou pozici v textu dostal odpovídající znak $x$ vzorku
    - Pokud se znak $x$, který způsobil kolizi již nevyskytuje ve zvývající levé části vzorku, vzorek se posune těsně za testovanou pozici
    - Pozici ve vzorku musíme znát, aby jsme vzorek neposunuli špatným směrem, tedy vlevo
  - Existuje druhá varianta využívající 2 pomocné pole
    - $P_1$ - pro každý znak $x$ abecedy $X$ obsahuje posun, pokud $x$ není ve vzorku je posun rovný délce slova
    - $P_2$ - obsahuje pro každou pozici $j$ ve vzorku délku nejmenšího možného posunu, která pod již úspěšně porovnanou příponu vzorku na pozicích $j+1$ až m zarovná shodný podřetězec vzorku.
  - Složitost $O(mn)$, pro velké abecedy a vzorky s malým počtem různých znaků $O(m/n)$
- Algoritmus Aho-Corrasickové (A-C) - rozšíření KMP pro sousměrné vyhledávání více vzorků současně
- Algoritmus Commentz-Walterové - kombinace B-M a A-C pro protisměrné vyhledávání více vzorků současně
- Hledání nekonečného počtu vzorků v textu - Regulární výrazy a jazyky
  - Regulární jazyk $R$, Atomické výrazy $\emptyset, \varepsilon, a \in X$
  - Operace nad Reg.Výr. zřetězení, sjednocení, mocnina, iterace, alespoň jeden výskyt - $UV, U+V, U^k, U^*, U^+$
  - Vzorky jsou vyhledávány pomocí DKA
  - Regulární výraz se dá převést na NKA, který se dá převést na DKA

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 19. Dokumentografické informační systémy (DIS) (modely DIS - booleovský, vektorový, rozšířený booleovský; lexikální analýza, stemming a lematizace, stop slova, konstrukce indexů, vyhodnocení dotazu, relevance, přesnost, úplnost, F-míra).
- Faktografický IS - Zpracování informací s definovanou vnitřní strukturou (nejčastěji v podobě tabulek)
- Dokumentografický IS (DIS) - Zpracování informací v podobě textu v přirozeném jazyce bez pevné vnitřní struktury
- Model práce s DIS: 
  1. Zadání dotazu
  2. Porovnání
  3. Získání seznamu odpovídajících dokumentů
  4. Ladění dotazu
  5. Vyžádání dokumentu
  6. Obdržení dokumentu
- Struktura DIS:
  - Systém zpřístupnění dokumentu - vrácí sekundární informace (autor, název, ...)
  - Systém dodání dokumentu - někdy není řešen pomocí SW (knihovny)

### Modely DIS
- Úrovně modelů:
  - Rozlišují přítomnost slov v dokumentech
  - Rozlišují frekvenci výskytu slov
  - Rozlišují pozici výskytu slov v dokumentech
- **Booleovský model** - Automatizace postupů používaných v knihovnictví
  - Databáze $D$ obsahuje $n$ dokumentů - $D = \{d_1,d_2,\ldots,d_n\}$
  - Dokumenty jsou popisovány pomocí $m$ termů, term je slovo nebo sousloví - $T = \{ t_1,t_2,\ldots,t_m\}$
  - Dokument je reprezentován množinou termů obsažených v dokumentu, popisující význam dokumentu - $d_i \subseteq T$
  - Indexace je přiřazení množiny termů ke každému dokumentu
  - Pro indexaci jsou vhodná slova, která nejsou příliš obecná a nejsou příliš specifická
  - Indexace podle způsobu vytváření:
    - Růční - nekonzistentní, více indexátorů
    - Automatická - konzistentní, ale bez porozumnění textu
  - Indexace podle volnosti výběru termů:
    - Řízená - Předem daná množina termů
    - Neřízená - Množina termů se mění s přibývajícími dokumentry
  - Tezaurus - Vnitřně strukturovaná množina termů, poměrně úplný slovník určitého jazyka
  - Stop-List - množina nevýznamných slov
  - Dotaz je vyjádřený logickým výrazem:
    - $t_a$ **AND** $t_b$ - oba termy jsou v dokumentu
    - $t_a$ **OR** $t_b$ - alespoň jeden term je v dokumentu
    - **NOT** $t_a$ - term není v dokumentu
    - Je možný využít hodnot atributů, **AND** (rok_vydání $\geq 2010$)
    - Zástupné znaky, podobně jako v regulárních výrazech: *, ?
  - Index je organizován v invertovaném seznamu, pro každý term existuje seznam dokumentů, ve kterém se daný term vyskytuje
  - Nevýhody:
    - Formulace dotazůje je spíše uměním než vědou.
    - Nemožnost ohodnotit relevanci vrácených dokumentů
    - Všechny termy v dorazu mají stejnou důležitost.
    - Nemožnost řídit velikost výstupu
- **Rozšířený booleovský model**
  - Oproti klasickému booleovský modelu dovolue využít vektorový index, vážené dotazy, uspořádat výstup dotazu
    - $t_a(w_a)$ **AND** $t_b(w_b)$
  - Fuzzy model
  - MMM model (Min Max Model)
  - Paice model - Započítání všech použitých termů, důležitost klesá geometrickou řadou
  - P-norm model - Podobnosti se odvozují od vzdálenosti dokumentu od nulového dokumentu (vektor nul) v případě disjunkce a od jedničkového dokumentu (vektor jedniček) v případě konjunkce
    - vzdálenost měřena $p$-normou, když $p \rightarrow \infty$ blíží se ke klasickému booleovskému modelu, $p = 1$ vektorový model, $p = 2$ lepší výsledky jak vektorový model
- **Vektorový model**
  - Databáze $D$ obsahuje $n$ dokumentů - $D = \{d_1,d_2,\ldots,d_n\}$
  - Dokumenty jsou popisovány pomocí $m$ termů, term je slovo nebo sousloví - $T = \{ t_1,t_2,\ldots,t_m\}$
  - Dokument je reprezentován vektorem vah termů - $\vec{d_i} = \langle w_{i,1}, w_{i,2},\ldots,w_{i,m} \rangle$
  - $w_{i,j} \in \langle 0;1 \rangle$ je míra důležitosti $j$-tého termu pro identifikaci $i$-tého dokumentu
  - Dotaz je vektor vah termů, udávající důležitost termů pro tazatele - $\vec{q} = \langle q_1,q_2,\ldots,q_m \rangle$
  - Index je tvořen maticí $n \times m$ vah, kde řádky reprezentují jednotlivé dokumenty a sloupce termy
  - Relevance dokumentu je počítána jako podobnost dvou vektorů $Sim(\vec{q}, \vec{d_i}) \in \mathcal{R}$
    - $Sim(\vec{q}, \vec{d_i}) = \sum_{j=1}^m q_j \cdot w_{i,j} = |\vec{q}| \cdot |\vec{d_i}| \cdot \cos(\alpha)$
  - Vhodné provádět normalizace vektorů, neboť výslednou podobnost ovlivňuje velikost dotazu i velikost vektorů jednotlivých dokumentů
  - Dokumenty vrácené na dotaz jsou seřazeny podle podobnost, takže můžeme omezit velikost výsledku či zvolit minimální požadovanou podobnost
  - Indexace je založena na počtu opakování slova v dokumentu
    - $TF_{i,j} = \frac{\textit{\#výskyt termu v dokumentu i}}{\textit{\#celkový výskyt termu}}$
  - Invertovaná frekvence termů - reprezentuje důležitost termu v rámci celé kolekce dokumentů
    - $ITF_{j} = -\log (\frac{\textit{\#dokumentů obsahující term j}}{\textit{\#všech dokumentů}})$
  - Dotazování:
    - výhoda shodné reprezentace dokumentu i dotazu
    - dá se dotazovat přímo vektorem, odkazem na zaindexovaný dokument, fragmentem textu (vypočteme pro něj vektor)
  - Zpětná vazba - Podpora konstrukce dotazu na základě odezvy uživatele na předchozí odpovědi
    - Můžeme doplnit termy indentifikující relevantní dokumenty
    - Eliminace nepodstatných termů

### Vyhodnocení dotazu
- Přímé porovnání je náročné na čas
- Pro vyhodnocení je nutné vytvořit model dokumentu
  - ztrátový proces založený na identifikaci důležitých slov v dokumentech
  - výsledkem jsou strukturována data vhodná pro porovnávání
- Samotný dotaz se upraví do odpovídající podoby a následně se porovnává s modelem dokumentu
- Porozumění textu - posloupnost slov v přirozeném jazyce
  - každé slovo má svůj význam
  - synonyma - slova se stejným významem
  - homonymie - víc významů pro jedno slovo
- Předzpracování textu - snaží se upravit text do podoby, více se hodící do modelu
  - Disambiguace - určení správného významu slova vě větě
    - Součástí lingvistické analýzy
    - Na základě gramatiky nebo kontextu
  - Lexikální analýzátor - rozdělí vstupní posloupnost znaků na lexémy, které jsou reprezentovány tokeny (symbolů), které jsou dále zpracovávány
    - Znaky jsou rozděleny na slova, identifikátory, klíčová slova, operátory
    - Upraví dotaz na logickou operaci vyhledání, zjistí se co jsou operátory AND, OR a jaké termy jsou v dotazu
  - Stematizace - nalezení kmene, kořene slova
    - Dovoluje vyhledávání slova bez ohledu na konkrétní tvar
    - Jsou odstraňovány morfologické koncovky a případně předpony
    - Stejná operace stematizace i lematizace musí být provedena jak nad textem tak i nad vzorkem
    - Algoritmus stematizace je závislý na jazyku. Základem metody v češtině je seznam možných koncovek a jejich odstraňování. 
  - Lemmatizace - převod slova do jeho základní podoby
    - Slovní druh, osoba, číslo, čas, vid, ...
    - Existují postupy jak získat základ slova
    - Fulltextové vyhledávání: např. pro zadanou frázi "sběrný dvůr" se vyhledají i dokumenty obsahující tato slova v jiných pádech a číslech (sběrné dvory, umístění sběrných dvorů)
  - Označování víceslovných spojení - kolokací
- Přesnost a úplnost - nejednoznačnost má za následek špatné vrácené výsledky DIS
  - *Nv* - počet vrácených dokumentů (DIS si myslí že jsou relevantní dotazu)
  - *Nvr* - počet vrácených relevantních dokumentů (tazatel si myslí, že jsou relevantní dotazu)
  - *Nr* - počet všech relevantních dokumentů (všechny relevantní dokumenty v DIS)
  - Relevance - dokument odpovídá zadanému dotazu, subjektvní míra
  - Přesnost - pravděpodobnost, že dokument zařazený v odpovědi je skutečně relevantní
    - $P = \frac{Nvr}{Nv}$
  - Úplnost (*Recall*) - pravděpodobnost, že skutečně relevantní dokument je zařezený v odpovědi
    - $R = \frac{Nvr}{Nr}$
  - F-míra - míra která zohledňuje jak přesnost tak i úplnost výsledku
    - $F_1 = 2 \frac{P \cdot R}{P + R}$, nejlepší hodnota je 1
    - $F_\beta = (1 + \beta^2) \frac{P \cdot R}{(\beta^2 \cdot P) + R}$, $\beta$ je jak moc důležitější je úplnost vůči přesnosti
  - Obě metriky jsou závislé na daném tazetely, co si myslí, že je relevantní jeho dotazu

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 20. Lineární algebra v DIS (metody redukce dimenze, rozklady matic, latentní sémantika, náhodná projekce).
### Latentní sémantika
- LSI (Latent Semantic Indexing) se snaží nalézt navzájem nezávislé koncepty - témata, přes které je možné indexovat dokumenty namísto závislých termů.
- Odvozuje tzv. latentně sémantické závislosti termů přímo z indexu vektorového modelu
- Nepoužívá Tezaurus
- SVD - Každá matice $A$ o rozměrech $m \times n$ hodnosti $r$ (např. $A = D^T$, řádky jsou termy), lze rozložit na součin $D^T = USV^T$
  - Hodnost matice je číslo, které představuje počet nezávislých řádků nebo sloupců matice. 
  - $U \in \mathcal{R}^{m \times r}$ - sloupcově ortonormální, báze v prostoru termů, levé singulární vektory $u_1,u_2,\ldots,u_r$
  - $S \in \mathcal{R}^{r \times r}$ - diagonálně regulární matice, singulární hodnoty, $\sigma_1 \geq \sigma_2 \geq \ldots \geq \sigma_r > 0$
  - $V \in \mathcal{R}^{n \times r}$ - řádkově ortonormální, báze v prostoru dokumentů, pravé singulární vektory $v_1,v_2,\ldots,v_r$
- LSI zohledňuje vzájemné závislosti termů pomocí SVD rozkladu matice indexu
  - Spolu se vyskytující (ekvivalentní) termy se promítají do společné dimenze
  - Dovoluje navíc další redukci aproximací matice
  - Další zmenšení prostoru pro uložení indexu
  - Dokumenty používající podobné termy mohou být velmi podobné, i když neobsahují žádné společné termy
- Reprezentuje dokumenty a dotazy v prostoru s dimenzí rovnou hodnosti původní indexační matice
- Dimenze odpovídají levým singulárním vektorům SVD rozkladu
- Je možné využít aproximaci matice indexu $D$, pomoci matice s určenou nižší hodností $k < r$
  - Matice se aproximuje součinem $U_kS_kV_k^T$
  - Spodní index k značí: prvních $k$ sloupců matice $U$, Levý horní roh matice $S$ velikost $k \times k$, Prvních $k$ sloupců matice $V$
- Využití v DIS, kde místo matice $D^T$ využijeme její SVD rozklad, aproximaci
  - Dotazy je také třeba převést do tohoto nového prostoru, třeba vynásobit maticí $U_kS_k^{-1}$
  - Statická metoda - rozklad je proveden nad konkrétní množinou dokumentů, další dokumenty je možno přidat, ale již neovlivní latentně sémantické vlastnosti termů

### Náhodná projekce
- Technika snížení dimenze bodů v Euklidovském prostoru
- Dobře zachovávají vzdálenost bodů
- Založena na Johnson–Lindenstrauss větě, říkající, že může být provedena projekce bodů v prostoru dosti vysoké dimenze, do nižší dimenze způsobem, který zachovává podobné vzdálenosti originálních bodů
- Originální data dimenze $d$, jsou převedena do menší dimenze $k < d$ pomocí náhodné $k \times d$ matice $R$, jejíž sloupce mají jednotkovou délku
- Originální matice $N$ $d$ dimenzionálních vektorů $X_{d \times N}$ je převedena do nižšího prostoru pomocí:
  - $X_{k \times N}^{RP} = R_{k \times d} X_{d \times N}$

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 21. Vyhledávání na webu (analýza hypertextových dokumentů, strukturální metody, PageRank a HITS, metavyhledávání a kooperativní vyhledávání).
Web lze chápat jako speciální případ DIS s neznámým počtem dokumentů. Povrchový web obsahuje veřejně dostupné dokumenty, kdežto skrytý web obsahuje dokumenty přístupné až po autorizaci.

- Redundance informace na webu je vysoká, kolem 30%
- Webové stránky se neustále mění, krátký "poločas rozpadu" - zastaralé informace v indexu
- Dá se vyhledávat dvěma způsoby:
  - Pomocí vyhledávačů - google.com
  - Listování v katalozích - ručně vytvářené seznamy
- Dotazování je zpravidla ve formě boolského vyhledávání. Využití logických operátorů, proximitní omezení
  - Rozhoduje umístění slov v dokumentu - nadpis je důležitější než paragrafy
  - Uvažují se odkazy mezi stránkami
- Web se dá představit jako orientovaný graf $(V,E)$
  - $V$ jsou jednotlivé stránky
  - $E$ je množina hran, kde $(p,q)\in E$ znamená, že stránka $p$ odkazuje na stránku $q$
  - Výstupní stupeň vrcholu $o(p)$ - počet odkazů na stránce
  - Vstupní stupeň vrcholu $i(p)$ - počt stránek odkazující na danou stránku
  - Hrany v rámci jedné domény jsou označovány jako *vlastní*, ostatní jsou *přechodové*
- Webové vyhledavače používají Crowlery (roboty), které pravidelně navštěvují weby (podle databáze URL adres) a stahují jejich obsah, který indexují
  - Roboti prohledávají odkazy do šířky, prioritnější jsou populárnější stránky s podobným tématem
- Indexační jednotka indexuje stažený obsah a přidává nově nalezené URL do databáze
  - Rozhoduje který obsah zaindexuje, snaží se vynechat duplicity
  - Výsledná data jsou uložena v případě rozšířeného boolského modelu do invertovaných seznamů, zpravidla včetně pozic slov na stránkách
  - Navíc jsou ukládána další specifická data, metadata, graf odkazů
- Zpracování dotazu:
  - S využitím indexu zjišťuje podobnost indexovaných dokumentů vůči dotazu
  - Pokud je dotaz formulován na základě podobnosti s neznámou stránku, může ji pomocí robota stáhnout
  - Dokumentům je přiřazeno skóre, podobnost s dotazem, popř. popularita stránky, personifikace výsledků pomocí sledování uživatele
- Popularita stránek se určuje z analýzy odkazů a podobnosti mezi zdrojovou a cílovou stránkou - PageRank, HITS
- Algoritmus PageRank
  - Předpokládá, že odkazem na cizí stránku je daná stránka autorem odkazu doporučována
  - Algoritmus lze snadno zmást generováním odkazů na propagovanou stránku
  - Ohodnocení $r(q)$ stránky $q$ záleží na ohodnocení stránek, které na ni odkazují
    - $r(q) = \sum_{(p,q) \in E} r(p) \cdot \frac{1}{o(p)}$
  - Výpočet PageRank probíhá iterativně, problém při cyklickém odkazování - akumulace ocenění bez přínosu pro další dokumenty
    - Řešením je Random Surfer Model - $r(q) = (1 - d) + d\cdot \sum_{(p,q) \in E} r(p) \cdot \frac{1}{o(p)}$
    - $d \in \langle 0;1 \rangle$ je tlumící faktor, obvykle $d=0,85$
    - Uživatel náhodně prochází webem, pravděpodobnost návštěvy je daná hodnotou PageRank s pravděpodobnosti $d$ klikne na některý odkaz, s pravděpodobnosti $(1-d)$ nepokračuje pomocí odkazu
  - Rozšíření:
    - Stránka má různou důležitost v závislosti na tématu, na které se tazatel ptá
    - Personalizovaný PageRank - Pro uživatele si pamatuje množinu preferovaných stránek, které jsou preferovány při náhodnem přechodu
- Algoritmus HITS - Hypertext Induced Topic Search
  - Ohodnocuje dokumenty, vrácené původním dotazem
  - Předpokládá, že na vstupu jsou dokumenty úzce svázané s dotazem (často navzájem provázány odkazy)
  - Rozlišují a ohodnocují se 2 typy stránek:
    - Autority - stránky s vysokým vstupním stupněm, odkazovány často ze stránek v odpovědi
    - Rozcestníky - stránky vysoký výstupním stupněm, odkazují se často na stránky v odpovědi
  - Postup:
    - Výběr množiny stránek pro vstup do HITS - dostatečně malá kolekce, pokud možno dokumenty relevantní k dotazu $q$, obsahující hodně autorit
    - Do této množiny jsou přidány všechny stránky na které je odkazováno z těchto stránek a některé stránky, které na původní odkazují
    - Další výpočet pracuje na tomto podgrafu, kde se odstraní vlastní hrany
    - Váha autority je vypočtena jako součet vah rozcestníků, které odkazují na danou autoritu
    - Váha rozcestníku je definována jako součet normalizovaných vah autorit na které rozcestník odkazuje
    - Algoritmus je řešen iterativně.


 
 
 

    Authority update: Update each node's authority score to be equal to the sum of the hub scores of each node that points to it. That is, a node is given a high authority score by being linked from pages that are recognized as Hubs for information.
    Hub update: Update each node's hub score to be equal to the sum of the authority scores of each node that it points to. That is, a node is given a high hub score by linking to nodes that are considered to be authorities on the subject.

The Hub score and Authority score for a node is calculated with the following algorithm:

    Start with each node having a hub score and authority score of 1.
    Run the authority update rule
    Run the hub update rule
    Normalize the values by dividing each Hub score by square root of the sum of the squares of all Hub scores, and dividing each Authority score by square root of the sum of the squares of all Authority scores.
    Repeat from the second step as necessary.



<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 22. Paralelní výpočty a platformy: Flynnova taxonomie, SIMD, MIMD, SPMD. Datový a task paralelismus. Procesy a vlákna.
- Multitasking v OS - Dovoluje vykonávání více než jednoho procesu (program + zdroje) najednou
  - Počet tasků může překročit požet fyzických jader / vláken na PC
- Paralelismus - souběh více jader/vláken najednou. (vlastnost systému)
- Concurrency - spolupráce dvou a více vláken, které mezi sebou komunikují. Nemusí běžět zároveň (např. multitasking)
- Proces - Běžící program spolu s hodnotami registru a proměnných v paměti
  - Programy jsou v procesním modelu organizovány do sekvenčních procesů
  - Procesy jsou nezávislé a izolovány pomocí OS
  - Procesy komunikují pomocí IPC *Inter-Process Communication*
  - Task-switching - když více procesů požaduje přístup ke skídeému zdroji, např. procesorový čas
  - Proces může být v několika stavech, viz Obrázek níže, vše řídí plánovač scheduler
- Datový paralelismus - SIMD, Jedna operace je prováděna na různých datech
- Task paralelismus - Mnoho operací je prováděno zároveň na (většinou) stejných datech.
  - Je využíváno několik jader nebo vláken procesoru.

![Stav procesu](../img/process_state.png "Stav procesu"){ width=60% }

- Vlákno - jednotka paralelního vykonávání v procesu
  - Mezivláknová komunikace je levnější jak IPC
  - Každé vlákno má svoje čítače, registry a stack
  - V rámci jednoho procesu vlákna sdílí paměťový a adresní prostor a zdroje (které jsou limitovány)

| Proces                                                    | Vlákno                                                            |
| :----------------                                         | :-----------------                                                |
| Náročné operace                                           | Nenáročná, jednodušší operace na řízení                           |
| Každý proces má svuj paměťový prostor                     | Vlákna sdílejí paměťový prostor procesu                           |
| IPC je pomalá, neboť procesy mají různé paměťové adresy   | Komunikace mezi vláky je rychlejší, neboť vlákna sdílejí paměť    |
| Přepínání mezi procesy je náročné                         | Přepínání mezi vlákny je jednodušší                               |
| Procesy nesdílejí paměť s jinými procesy                  | Vlákna sdílejí paměť s ostatními vlákny daného procesu            |

- IPC - komunikace mezi spolupracujicími procesy, která je pevně strukturována a nepoužívá přerušení
  - IPC musí řešit: předávání informací, závislosti a střety aktivit
    - dále synchronizaci, deadlock, zamykání
  - IPC je obvykle implementováno pomocí sdílené paměti a předávání zpráv
    - pipes, named pipes (stream zpráv), fronty zpráv, semafory, sdílená paměť a sockety

### Flynova taxonomie

![Flynova taxonomie](../img/flynn.png "Flynova taxonomie"){ width=60% }

- SISD - sériové, neparalelní počítač, Von-Neumannová architektura PC, deterministické vykonávání
  - Vylepšení pomocí:
    - zřetězení instukců v různých stavech vykonání instrukce (fetch, decode, execute, memory, write)
    - Vektorové operace nad vektorovými registry, instrukční sady SSE, SSE2, AVX, AVX-512
  - Superskalární architektura
  - *out-of-order* vykonávání - vykonávání více nezávislých instrukcí najednou
- MISD - každý výpočetní jednotka operuje nad stejnými daty ale s jinými instrukcemi
  - vzácná, né moc používaná architektura
  - jeden proud dat je posílán do více výpočetních jednotek
  - využití pro redundaci výsledků, bezpečnostní obvody (raketoplán), aplikace různých filtrů na data, brutefurce zlomení hesla
  - V součastnosti použití v systolickcýh polích - výpočetní sítě s distribuovanou pamětí a výpočetními jednotkami
    - FPGA, ASIC
- SIMD - Datový paralelismus, vektorové operace
  - všechny výpočetní jednotky vykonávají jednu instrukci, kterou mohou vykonávat na různých datech
  - dobré pro zpracování obrazu, maticové operace
  - je třeba synchronizačního kroku na konci
- MIMD - Moderní vícejádrové CPU, GPGPU (General Purpose Graphical Processing Unit), FP akcelerátory
- SPMD - Single Process Multiple Data
  - Několik samostatných výpočetních jednotek vykonává stejný program v různých bodech
  - Oproti SIMD nevyžaduje vektorové instrukce
  - Úkol je rozdělen a vykonáván ve více procesech najednou (stejné instrukce)
  - 


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 23. Systémy se sdílenou a distribuovanou pamětí: komunikace mezi procesy (souběh, uváznutí, vzájemné vyloučení). Komunikace pomocí zasílání zpráv. OpenMP, MPI.

### Systémy se sdílenou pamětí
- Výpočetní jednotky mají přístup k jedné globální paměti, kde jsou změny ihned viditelné
- CPU mohou operovat nezávislé ale nad sdílenou pamětí
- UMA systémy (Uniform Memory Access) - SMPs (Symmetric Multiprocessors)
  - Systémy s jedním typem procesoru, rovný přístup do paměti a stejné časy přístupu
  - Cache Coherent UMA (CC-UMA) - při změně v paměti jedním CPU, všechny ostatní CPU ví o této změně
    - Cache jsou aktualizovány konstantně
- NUMA (Non-uniform memory access) - CPU může přistupovat do paměti libovolného jiného CPU
  - časy přístupu se mohou lišit, a přístup do paměti jiného CPU je pomalejší
  - Znova existuje varianta Cache Coherent NUMA
- Výhody:
  - Jednodušší způsob programování - jednotný přístup do paměti
  - Sdílení dat mezi tásky je rychlé a uniformní, díky malé vzdálenosti procesorů
- Nevýhody:
  - Špatná škálovatelnost - více CPU znamená větší provoz mezi CPU a pamětí a větší nároky na Cache Coherent systém
  - Zodpovědnost programátora - programátor musí používat techniky synchronizace pro správnou práci s globální paměti

### Systémy s distribuovanou pamětí
- Používají komunikační síť pro meziprocesorový přístup k paměti
- Neexistuje globální paměťový prostor, CPU mají svoji vlastní lokální paměť a paměťový prostor není mapován na jiné CPU
- CPU pracují nezávisle a změny v paměti jednoho CPU nejsou inzerovány ostatním CPU
- IPC je explicitně řešeno programátorem, většinou pomocí zasílání zpráv
  - rychlost komunikace je nevýhodou
- Algoritmy na tyto systémy musí brát v potaz složitější komunikaci
- Výhody:
  - Lépe škálovatelné s více CPU
  - Rychlejší přístup CPU do lokální paměti (není overhead s cache coherence)
  - Levnější pořízení, možnost využít standardních CPU
- Nevýhody:
  - Programátor je zodpovědný za veškerou komunikaci
  - Složité mapování existujících datových struktur
  - Čas přístupu ke vzdálené paměti, neuniformní časy přístupu
- Hybridní systémy využívají jak sdílenou paměť mezi omezeným množstvím CPU a poté jsou propojeny distribuovanou pamětí s dalšími

### Problémy paralelních výpočtů
 - Deadlock (uváznutí) - procesy uváznou, jestliže všechny procesy čekají na určitou událost jiného čekajícího procesu
   - Process A čeká na exkluzivně držené prostředky procesem B, který zase čeká na prostředky procesu A
   - Situace kdy nastává deadlock: 
     - Vzájemné vyloučení
     - Držení prostředku a čekání na prostředky
     - Zacyklené čekání
   - Řešení uváznutí:
     - Ignorace problému
     - Detekce uváznutí a vyřešení
     - Opatrná alokace paměti
     - Prevence nějaké podmínky uváznutí
 - Souběh (Race condition) - chyba v systému nebo procesu, ve kterém jsou výsledky nepředvídatelné při nesprávném pořadí nebo načasování jeho jednotlivých operací
   - souběh je  způsoben chybným paralelním zpracováním sdílených dat
   - vzníká při neošetřeném přístupu více procesů/vláken ke sdílenému zdroji, paměti
 - Mutual Exclusion (MUTEX) - zámek, objekt, který zamězuje přístupu ke sdílenému zdroji více procesům najednou
   - Algoritmus používaný v programování jako synchronizační prostředek
   - Zabraňuje tomu, aby byly současně vykonávány dva (nebo více) kritické kódy nad stejným sdíleným prostředkem

### OpenMP
- soustava direktiv pro překladač programovacího jazyku, např. C++, která říká jak vykonat program paralelně.
- Standard pro systémy se sdílenou pamětí
- Hlavní vlákno (master) vytváří podle potřeby skupinu podvláken (slaves). 
  - Paralelizace programu se pak provádí postupně s ohledem na výkon aplikace, tj. sekvenční program je postupně (podle možností) paralelizován. 
- Možnost získat, zvolit počet CPU, nutno definovat privátní proměnné
- Příklady direktiv:
  - `#pragma omp parallel` - kód následujícího bloku je vykonáván ve více vláknech
  - `#pragma omp parallel for` - cykles je rozdělen mezi více vláken
  - `#pragma omp parallel for shared(sum, a) reduction(+: sum)` - paralelní redukce
  - `#pragma omp critical` - kritická sekce
  - 
- Výhody:
  - jednoduchý programovací model pomocí direktiv kompilátoru
  - jeden zdroj pro sériový i paralelní kód
  - portabilní a dobře podporovaný v rámci kompilátorů
- Nevýhody:
  - pouze v systémech se sdílenou pamětí
  - kompilátor musí podporovat OpenMP
  - vysoká pravděpodobnost závodění vláken

### MPI - Message Passing Interface
- Standard pro programování a návrh distribuovaných aplikací systému na systémech s distribuovanou pamětí pomocí zasílání zpráv
- rozhraní zprav je dáno, implementace závisí na distribuci
- MPI pracuje v komunikačním světě - kolekce procesů, které komunikují (koordinují) pomocí zpráv
  - komunikátor a skupiny určují hierarchii komunikujících procesů
  - *Rank* - Id procesu v rámci komunikátoru, určuje adresu při posílání, odesílání zpráv
  - *Size* - velikost komunikátoru, počet procesů v něm
  - Blokující operace - návrat až po po skončení, všechny zdroje opět k dispozici
  - Neblokující operace - možný návrat ještě před dokončením výpočtu
  - Synchronní komunikace - komunikace je ukončena až když příjemce dostane celou zprávu
  - Asynchronní komunikace - není synchronizována
- Příklady zpráv:
  - inicializace - `MPI_Init`, `MPI_Comm_rank`, `MPI_Comm_Size`
  - posílání zpráv - `MPI_Send`, `MPI_Receive`, `MPI_Sendrc` - blokující
- Zprávy jsou buď zasílány přímo na jediný Rank nebo pomocí broadcastu v rámci komunikátoru
- Datové struktury jsou posílány v datových typech podporovaných MPI, `MPI_INT`, `MPI_BYTE`
- Výhody:
  - MPI je podporováno na většine HPC systémů
  - využívá nativních HW optimalizací
  - obsahuje mnoho funkcí
- Nevýhody:
  - Deadlock
  - Nezaručené pořadí operací
  - Různé implementace ?

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 24. Paralelní redukce a paralelní scan: principy fungování ve vybrané technologii a příklady užití
### Redukce
- Jedna z nejvyužívanějších paralelních operací pro zpracování velkého počtu vstupních dat
  - na pořádí zpracování elementů nezáleží
  - rozdělení vstupních dat do menších bloků, které zpracovávají různé vlákna
  - Redukční stromy jsou využity k sesumírování výsledků bloků
- Redukce postupně kombinuje všechny elementy kolekce na jedno číslo. 
  - Kombinací může být: součet, násobek, max, min, uživatelsky definovaná operace, která je:
    - asociativní a kumutativní
    - má definován jednotkový (neutrální) prvek (0 pro sčítání, 1 pro násobení)
- Paralelní redukce pomocí redukčních stromů provede $N-1$ operací v $\log_2(N)$ krocích (iteracích)
- Postupně jsou vždy 2 elementy kolekce velikosti $n$ zkombinovány, toto se opakuje dokud nemáme jeden finální element
- Využívá se v mnoha algoritmech pro vypočítání chyby a vyhodnocení terminální podmínky v iteračních algoritmech
  - Genetické algoritmy, Buńkové algoritmy, Násobení matic, Zpracování obrazu
  - Hadoop MapReduce

![Paralelní redukce](../img/parallel_reduction.png "Paralelní redukce"){ width=60% }

- Volba délky sériového bloku zavisí na vlastnostech výpočetní jednoty, registry, velikost cache
- Po každé iteraci je polovina vláken již neaktivních
- Paralelni redukce je zabudována v OpenMP, MPI, a často se dělá v CUDE

### Paralelní sken
- Taky nazývaný jako *Prefix-Sum*
- Paralelní sken dostává na vstupu pole délky $N$ $[x_0,x_1,\ldots,x_N]$ a asociativní operátor $\oplus$. Výsledkem algoritmu je pole $[x_0,(x_0\oplus x_1),(x_0\oplus x_1 \oplus x_2),\ldots,(x_0 \oplus \ldots \oplus x_{N-1})]$ 
  - Příkladem asociativní operace může být například sčítání
- Inkluzivní sken, oproti exkluzivnímu, bere v potaz aktuální vstupní hodnotu spolu s výsledkem předchozí iterace
- Využití paralelního skenu:
  - RadixSort, QuickSort, Histogramy, Stromové operace, Lexikální analýza, Porovnávání řetězců
- Implementován v OpenMP, MPI, C++, Rust
- Sériové řešení se složitostí $O(N)$
```c
y[0] = x[0]
for (int i = 1; i < N; i++)
  y[i] = y[i-1] + x[i] 
```
- Každá iterace cyklu závisí na výsledku předchozí iterace

![Scan reduce](../img/parallel_scan_1.png "Scan reduce O(n log n)"){ width=60% }

- První paralelní přístup - založen na paralelní redukci, složitost $O(N \cdot log(N))$
  - Neefektivní přístup - každý strom redukce provede $O(N)$ operací
  1. Načteme pole do sdílené paměti
  2. Cyklus s $\log_2(N)$ iteracemi - počáteční `stride` = 1
     - V každé iterace jsou aktivní vlákna (indexy vláken) `stride` až $N-1$
     - Vlákno $i$ sečte element $i$ s elementem ($i$-`stride`)
     - Nutno zdvojnásobit velikost sdílené paměti
  3. Výsledek je ve sdílené paměti, ze které jej zkopírujem
  - Je třeba bariérové synchronizace mezi iteracemi, aby nedošlo k přepsání vstupu jiného vlákna
- Vylepšený paralelní přístup - založený na vyrovnaných stromech
  - strom slouží pouze pro představu toho, co dělají vlákna v každé iteraci
  - Průchod dolů od listů ke kořenu, vytvoří vnitřní uzly s částečnými součty. Kořen stromu obsahuje součet všech elementů - Redukční krok s $\log_2(N)$ iteracemi
  - Průchod nahoru od kořene, vytvoří *sken* z částečných součtů - Poredukční krok s $\log_2(N)-1$ kroky
  - Celková složitost $O(N)$

![Krok redukce](../img/parallel_scan_2_reduction_step.png "Krok redukce"){ width=60% }

![Post scan](../img/parallel_scan_2_postscan_step.png "Post scan"){ width=60% }

![Parallel Scan Result](../img/parallel_scan_2_result.png "Parallel Scan Result"){ width=60% }
