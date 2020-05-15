# Softwarové inženýrství


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 1. Softwarový proces. Jeho definice, modely a úrovně vyspělosti.
Softwarové inženýrství je inženýrská disciplína zabývající se praktickými problémy vývoje rozsáhlých softwarových systémů.
Softwarový proces je po částech uspořádaná množina kroků směřujících k vytvoření nebo úpravě softwarového díla.

- Krokem může být aktivita nebo opět podproces (hierarchická dekompozice procesu). 
- Aktivity a podprocesy mohou probíhat v čase souběžně, tudíž je vyžadována jejich koordinace. 
- Je nutné zajistit opakovatelnost použití procesu ve vztahu k jednotlivým softwarovým projektům, tedy zajistit jeho znovupoužitelnost.  Cílem je dosáhnout stabilních výsledků vysoké úrovně kvality

### Vyspělostní úrovně:
Úroveň definice a využití softwarového procesu je hodnocena dle stupnice SEI (Software Engineering Institute) 1 - 5 vyjadřující vyspělost firmy či organizace z daného hlediska. Tento model hodnocení vyspělosti a schopností dodavatele softwarového produktu se nazývá CMM (Capability Maturity Model) a jeho jednotlivé úrovně lze stručně charakterizovat asi takto:
 - Počáteční (Initial) - firma nemá definován softwarový proces a každý projekt je řešen případ od případu (ad hoc).
 - Opakovatelná (Repeatable) - firma identifikovala v jednotlivých projektech opakovatelné postupy a tyto je schopna reprodukovat v každém novém projektu.
 - Definovaná (Defined) - softwarový proces je definován (a dokumentován) na základě integrace dříve identifikovaných opakovatelných kroků.
 - Řízená (Managed) - na základě definovaného softwarového procesu je firma schopna jeho řízení a monitorování.
 - Optimalizovaná (Optimized) - zpětnovazební informace získaná dlouhodobým procesem monitorování softwarového procesu je využita ve prospěch jeho optimalizace.

### Vodopádový model
Základem téměř všech modelů softwarového procesu se stal vodopádový model. Tento vodopádový model vychází z rozdělení životního cyklu softwarového díla na čtyři základní fáze: analýza požadavků a jejich specifikace, návrh softwarového systému, implementace (kódování) a na konec testování a udržování vytvořeného produktu.  Princip vodopádu spočívá v tom, že následující množina činností spjatá s danou fází nemůže započít dříve než skončí předchozí.  Jinými slovy řečeno, výsledky předchozí fáze 'vtékají' jako vstupy do fáze následující.

Model je možno v různých modifikacích a rozšířeních nalézt ve většině současných přístupů. Tyto modifikace vznikly především kvůli odstranění některých jeho nedostatků, mezi které patří:
- Prodleva mezi zadáním projektu a vytvořením spustitelného systému je příliš dlouhá.
- Výsledek závisí na úplném a korektním zadaní požadavků kladených na výsledný produkt.
- Nelze odhalit výslednou kvalitu produktu danou splněním všech požadavků, dokud není výsledný softwarový systém hotov.

Pokud mluvíme o modifikacích vodopádového modelu, pak se jedná především o modely:
**Inkrementální**: postupné vytváření verzí softwaru zahrnujících postupně širší spektrum funkcí definovaných postupně v průběhu jeho vytváření. V podstatě sejedná o více menších vodopádů provedených za sebou tak, aby každý z nich odpovídal nové sadě doplněných požadavků.

### RUP
Proces RUP definuje disciplinovaný přístup k přiřazování úkolů a zodpovědností v rámci vývojové organizace.  Oproti vodopádovému modelu se liší v těchto základních principech:
 - softwarový produkt je vyvíjen iteračním způsobem 
 - jsou spravovány požadavky na něj kladené 
 - využívá se již existujících softwarových komponent 
 - model softwarového systému je vizualizován (UML)
 - průběžně je ověřována kvalita produktu 
 - změny systému jsou řízeny (každá změna je přijatelná a změny jsou sledovatelné)

V současném období, kdy se předmětem vývoje staly softwarové systémy vysoké úrovně sofistikace, je nemožné nejprve specifikovat celé zadání, následně navrhnout jeho řešení, vytvořit softwarový produkt implementující toto zadání, vše otestovat a předat zadavateli k užívání.  Jediné možné řešení takovému problému je přístup postavený na iteracích, umožňující postupně upřesňovat cílový produkt cestou jeho inkrementálního rozšiřovaní z původní hrubé formy do výsledné podoby.  Softwarový systém je tak vyvíjen ve verzích, které lze průběžně ověřovat se zadavatelem a případně jej pozměnit pro následující iteraci.

### Cykly, fáze, iterace
Každý cyklus vede k vytvoření takové verze systému, kterou lze předat uživatelům a  implementuje jimi specifikované požadavky.
Každý vývojový cyklus lze rozdělit do čtyř po sobě jdoucích fází, kde každá fáze může být dále rozložena do několika iterací. 
 - Zahájení, kde je původní myšlenka rozpracována do vize koncového produktu a je definován rámec toho, jak celý systém bude vyvíjen a implementován. 
 - Rozpracování je fáze věnovaná podrobné specifikaci požadavků a rozpracování architektury výsledného produktu. 
 - Tvorba je zaměřena na kompletní vyhotovení požadovaného díla.  Výsledné  programové vybavení je vytvořeno kolem navržené kostry (architektury) softwarového systému. 
 - Předání je závěrečnou fází, kdy vytvořený produkt je předán do užívání.  Tato fáze zahrnuje i další aktivity jako je beta testování, zaškolení apod. 

**Iterace** je úplná vývojová smyčka vedoucí k vytvoření spustitelné verze systému reprezentující podmnožinu vyvíjeného cílového produktu, a která je postupně rozšiřována každou iterací až do výsledné podoby.

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 2. Vymezení fáze „sběr a analýza požadavků“. Diagramy UML využité v dané fázi.
Kvalita výsledného produktu je dána mírou uspokojení požadavků zadavatele. Právě otázka korektní specifikace všech požadavků bývá problémem všech softwarových systémů. Velmi často výsledek i mnohaletého úsilí týmu softwarových inženýrů propadne díky nedostatečné specifikaci zadání.

### Jazyk UML
Slouží k vytváření modelů vznikajících v průběhu realizace požadovaného produktu.V průběhu let se UML stal standardizovaným jazykem určeným pro vytvoření výkresové dokumentace (softwarového) systému.  UML je jazyk umožňující specifikaci, vizualizaci, konstrukci a dokumentaci artefaktů 
softwarového systému. K vytváření jednotlivých modelů systému jazyk UML poskytuje celou řadu diagramů  umožňujících postihnout různé aspekty systému.  Jedná se celkem o čtyři základní náhledy a k nim přiřazené diagramy.

### Specifikace požadavků
Cílem specifikace požadavků je popsat co má softwarový systém dělat prostřednictvím specifikace jeho funkcionality.  Modely specifikace požadavků slouží k odsouhlasení zadání mezi vývojovým týmem a zadavatelem.

Modely, které jsou v rámci specifikace činností vytvářeny vychází z tak zvaných případů užití (Use Cases). Ty jsou tvořeny: **Aktéry** definující uživatele či jiné systémy, kteří budou vstupovat do interakce s vyvíjeným softwarovým systémem. **Případy užití** specifikující vzory chování realizovaných softwarovým systémem. Každý případ užití lze chápat jako posloupnost vzájemně navazujících transakcí vykonaných v dialogu mezi aktérem a vlastním softwarovým systémem. Každý případ užití muže mít alternativy, prerekvizity, možnosti jeho vykonávání, implicitně nebo explicitně inkludovat jiný případ užití.

Jazyk UML pro potřeby sestavení modelů specifikace požadavků využívá dvou typů diagramů:
**Diagram případů užití** popisující vztahy mezi aktéry a jednotlivými případy použití.
**Sekvenční diagram** zobrazující vzájemnou interakci participujících objektů organizovanou podle časového hlediska

### Use case diagram
Účelem diagramu případů užití je definovat co existuje vně vyvíjeného systému (aktéři) a co má být systémem prováděno (případy užití). 
Vstupem pro sestavení diagramu případů užití je byznys model, konkrétně modely podnikových procesů.  Výsledkem analýzy těchto procesů je seznam požadovaných funkcí softwarového systému, které podpoří nebo dokonce nahradí některé z uvedených aktivity cestou jejich softwarové implementace.

Pro složitější a obsáhlejší diagramy případy užití se zavadí tři typy relací mezi jednotlivými případy užití: 
-  Relace používá označovaná klíčovým slovem `<<uses>>` vyjadřuje situaci, kde určitý scénář popsaný jedním případem užití je využíván i jinými případy užití.
- Relace rozšiřuje označovaná klíčovým slovem `<<extends>>` vyjadřuje  situaci, kde určitý případ užití rozšiřuje jiný či představuje variantní průchody jím popsaným scénářem. 
- Relace zobecnění/specializace vyjadřuje vztah mezi obecnějším případem užití a jeho speciálním případem.



### Sekvenční diagram
Tento diagram postihuje jaké zprávy (požadavky) jsou mezi objekty zasílány z pohledu času. Diagram je tvořen objekty uspořádanými do sloupců a šipky mezi nimi odpovídají vzájemně si zasílaným zprávám. Zprávy mohou být synchronní nebo asynchronní. 
V případě synchronních zpráv odesílatel čeká na odpověď (odezvu) adresáta, v případě asynchronní zprávy odesílatel nečeká na odpověď a pokračuje ve vykonávání své činnosti. Souvislé provádění nějaké činnosti se v sekvenčním diagram vyjadřuje svisle orientovaným obdélníkem. Odezvu adresáta lze opět modelovat, v tomto případě tzv.návratovou zprávou (přerušovaná čára). Tok času probíhá ve směru od shora dolů.

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 3. Vymezení fáze „Návrh“. Diagramy UML využité v dané fázi. Návrhové vzory – členění, popis a příklady.
Diagramy UML využité v dané fázi. Návrhové vzory – členění, popis a příklady}
Cílem etapy návrhu v rámci toku činností zabývajícího se analýzou a návrhem je vytvoření modelu návrhu.

Model návrhu dále upřesňuje model analýzy ve světle skutečného implementačního prostředí. Pojem implementační prostředí v podstatě vyjadřuje možnost namapovat navržené softwarové komponenty obsažené v modelu analýzy na architekturu systému určeného k provozu vyvíjené aplikace s maximálním možným využitím služeb již existujících softwarových komponent. Postup včlenění implementačního prostředí do vyvíjené aplikace je dán následující posloupností činností:
 - definice systémové architektury,
 - identifikace návrhových vzorů a možnosti znovupoužití tzv. rámcových řešení,
 - definice softwarových komponent a jejich znovupoužití.

Návrhové vzory můžeme chápat jako abstrakci imitování užitečných části jiných softwarových produktů.

Volně interpretováno, pokud zjistíme že používáme k řešení určitého problému úspěšné řešení, které se opakuje v různých produktech z různých doménových oblastí, pak zobecnění tohoto řešení se stává návrhovým vzorem. Každý takový návrhový vzor je popsán množinou komunikujících objektů a jejich tříd, které jsou přizpůsobeny řešení obecného problému návrhu v daném konkrétním kontextu, tedy již existujícímu okolí. Návrhové vzory můžeme klasifikovat podle způsobu jejich použití do těchto základních tří skupin:
 - Návrhové vzory \textbf{tvořící} určené k řešení problému vytváření instancí tříd cestou delegace této funkce na speciálně k tomuto účelu navržené třídy. (Továrna, Singleton, ObjectPool)
 - Návrhové vzory \textbf{strukturální} řešící problémy způsobu strukturování objektů a jejich tříd. (Kompozit, Adapter, Proxy, Bridge, Facade)
 - Návrhové vzory \textbf{chování} popisující algoritmy a spolupráci objektů. (Pozorovatel, Visitor)

**Diagram tříd** specifikující množinu tříd, rozhraní a jejich vzájemné vztahy. Tyto diagramy slouží k vyjádření statického pohledu na systém.

**Diagram spolupráce** je obdobně jako předchozí sekvenční diagram zaměřen na interakce, ale z pohledu strukturální organizace objektů. Jinými slovy není primárním aspektem časová posloupnost posílaných zpráv, ale topologie rozmístění objektů.

**Diagram nasazení** popisující konfiguraci (topologii) technických prostředků umožňujících běh vlastního softwarového systému.

**Stavový diagram** dokumentující životní cyklus objektu dané třídy z hlediska jeho stavů, přechodů mezi těmito stavy a událostmi, které tyto přechody uskutečňují.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 4. Objektově orientované paradigma. Pojmy třída, objekt, rozhraní. Základní vlastnosti objektu a vztah ke třídě. Základní vztahy mezi třídami a rozhraními. Třídní vs. instanční vlastnosti.
### Třída
Třída je popis množiny objektů mající společnou strukturu, chování, vztahy a sémantiku.  Třídy nalezneme v sekvenčním diagramu zkoumáním interakcí mezi objekty vystupujícími v sekvenčních diagram. Objekt může být instancí právě jedné třídy.

Popis chování objektů vytvářených podle daných tříd spočívá v definování jejich operací. Tyto operace, stejně jako třídy samotné, hledáme v sekvenčních diagramech.  Zpráva zaslaná z jednoho objektu (instance třídy) na druhý znamená, že třídy tohoto druhého objektu musí definovat jak bude tento objekt reagovat na přijetí této zprávy.

Struktura třídy je reprezentována svými atributy.  Vyhledání atributů vychází ze zkoumání doménové oblasti a z její znalosti.  Každý objekt, který je pak podle dané třídy vytvořen, tyto atributy naplňuje pro něj jedinečnými hodnotami. Hodnoty atributů jsou vlastní vždy dané instanci, třída pouze definuje  pojmenování těchto atributů a jejich typ.  Třída také definuje operace, které jsou společné všem jejím objektům a tudíž se v notaci objektů již explicitně neuvádí.

**Třídní proměnná** je společná pro všechny objekty.

**Vztahy (relace)** mezi třídami specifikují cestu, jak mohou objekty mezi sebou komunikovat.

Relace složení částí do jednoho celku, má v podstatě dvě možné podoby.  Jedná se o tzv. \textbf{agregaci}, pro kterou platí, že části mohou být obsaženy i v jiných celcích, jinými slovy řečeno, jsou sdíleny.  Nebo se jedná o výhradní vlastnictví částí celkem, pak hovoříme o složení typu \textbf{kompozice}. Druhá z uvedených typu složení má jednu důležitou vlastnost z hlediska životního cyklu celku a jeho částí.  Existence obou je totiž totožná.  Zánik celku (kompozitu) vede i k zániku jeho částí na rozdíl od agregace, kde části mohou přežívat dále jako součástí jiných celků.

- **Role** definuje specifické chování objektu v daném kontextu jeho použití. 
- **Typ objektu** specifikuje skupinu operací, které mohou být objektem prováděny.
- **Rozhraní** je pojmenování skupiny externě viditelných operací


### Objekt
Objekt je identifikovatelná samostatná entita daná svou: *identitou* - jedinečností umožňující ji odlišit od ostatních a *chováním* - službami poskytovanými v interakci s ostatními objekty.  

Kromě těchto primárních vlastností vyjádřených v definici má objekt také sekundární vlastnosti, kterými jsou: 
 - atributy -- (v čase se měnící) datové hodnoty popisující objekt, 
 - doba existence -- časový interval daný okamžikem vzniku a zániku objektu, 
 - stavy odrážející různé fáze doby existence objektu.

Ve vztahu k definovaným případům užití je nutné  definovat takové interakce mezi objekty, které povedou ke splnění jejich funkcionality, účelu ke kterému byly navrženy. Jazyk UML poskytuje pro účely zaznamenání těchto vzájemných interakcí tzv. sekvenční, někdy také nazývaný interakční, diagram.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 5. Mapování UML diagramů na zdrojový kód.
Důsledná a přesná specifikace objektů a jejich tříd v etapě návrhu umožňuje automatické generování zdrojových kódů dle následující tabulky. Tabulka má dva sloupce, první z nich odpovídá elementům jazyka UML, zatímco druhá z nich popisuje jejich zobrazení v programovacím jazyce, v našem případě se jedná o jazyk C\#, Java.
| Návrh (UML)            | Zdrojový Kód                                             |
| :------                | :------------------------------------------------------- |
| Třída                  |  Struktura typu class                                    |
| Role, Typ a Rozhraní   | Struktura typu interface                                 |
| Operace                | Metoda                                                   |
| Atribut třídy          | Statická proměnná označená static                        |
| Atribut                | Instanční proměnná                                       |
| Asociace               | Instanční proměnná                                       |
| Závislost              | Lokální proměnná, argument nebo návratová hodnota zprávy |
| Interakce mezi objekty | Volání metod                                             |
| Případ užití           | Sekvence volání metod                                    |
| Balíček, Subsystém     | Knihovny                                                 |


Z uvedené tabulky vyplývá, že jediné co nelze přímo odvodit z diagramů UML jsou těla metod, kód, který je proveden v odezvě na přijatou zprávu a také jaká je fyzická struktura vytvářených souborů reprezentujících softwarové komponenty. Vše ostatní lze automaticky vygenerovat doslova bez účasti týmu programátorů.

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 6. Správa paměti (v jazycích C/C++, JAVA, C#, Python), virtuální stroj, podpora paralelního zpracování a vlákna.
Většina moderních jazyků používá zejména automatické správy paměti: C\#, Haskell, Java, JavaScript, Perl, PHP, Prolog, Python, Ruby.

Výhody automatické správy paměti jsou následující:
 - Programátor se může věnovat řešení skutečného problému;
 - Rozhraní modulů jsou přehlednější -- není třeba řešit problém zodpovědnosti za uvolnění paměti pro objekty vytvořené různými moduly;
 - Nastává menší množství chyb spojených s přístupem do paměti;
 - Správa paměti je často mnohem efektivnější.

Tento přístup má však i své nevýhody. Paměť může být zachována jen proto, že je dostupná, i když není dále využita. Automatická správa paměti není k dispozici ve starších, ale často používaných jazycích.

Pro zjištění toho, které úseky paměti se již nepoužívají, je k dispozici mnoho algoritmů. Většinou spoléhá automatická regenerace paměti na informace o tom, na které bloky paměti neukazuje žádná programová proměnná. V zásadě existují dvě skupiny metod - metody založené na sledování odkazů a metody založené na čítačích odkazů.

Správa paměti je v jazyce C\# plně automatizovaná, paměťový prostor se přiděluje operátorem new, jeho uvolnění zajistí systém řízení běhu programu. V jazyce Java je správa paměti rovněž plně automatizovaná, o uvolňování paměti se stará separátní vlákno, které běží s nízkou prioritou a zajišťuje kontinuální sledování nepoužitých bloků paměti. Přidělování paměti se provádí operátorem new

### Garbage Collector
Základní princip garbage collecting:
 - Vyhledají se v programu takové datové objekty, které nebudou v budoucnu použity.
 - Vrácení zdrojů, kde se vyskytovaly nalezené objekty.

Uvolňování paměti garbage collecting osvobozuje programátora od uvolňování objektů, které již dále nejsou zapotřebí, což ho většinou stojí značné úsilí. Je to vlastně pomůcka pro stabilnější program, protože zabraňuje některým třídám provozních chyb. Například zabraňuje chybám ukazatelů, které ukazují na již nepoužívaný objekt, nebo který je již zrušen a tato paměť se dále k ničemu nevyužívá.

**Mark & Sweep** (jeho varianta použitá v GC .NET.)
Algoritmus nejdříve nastaví všem objektům, které jsou v paměti, speciální příznak navštíven na hodnotu ne. Poté projde všechny objekty, ke kterým se lze dostat. Těm, které takto navštívil, nastaví příznak na hodnotu ano. V okamžiku, kdy se už nemůže dostat k žádnému dalšímu objektu, znamená to, že všechny objekty s příznakem navštíven majícím hodnotu ne jsou odpad - a mohou být tedy uvolněny z paměti. Tato metoda má několik nevýhod. Největší je, že při garbage collectionu je přerušen běh programu. To znamená,že se programy pravidelně zmrznou, takže je nemožné pracovat s aplikacemi používající reálný čas. (Toto není případ .NETu)

Java GC používá 4 algoritmy, kromě M&S i 

- **Reference counting** - objekt vytvořen - counter =1, uložení reference na objekt c+1, změna hodnoty objektu, konec funkce, která s ním pracovala c-1, if c==0 - GC smaže
- **Generační algoritmus** - buď se mnoho objektů se stane odpadem krátce po svém vzniku  nebo jen malé procento referencí ve 'starších' objektech ukazuje na objekty mladší. Rozdělení paměti do generací.
- **Copying collector** - Tento algoritmus nejprve rozdělí prostor na haldě na dvě části, kdy jedna je aktivní a s druhou se nepracuje. Vždy můžeme alokovat objekty v celkové velikosti, která je poloviční velikost haldy. Pokud se při alokaci nevejdeme do místa na části haldy, je potřeba provést úklid. Ten spočívá v prohození aktivní a neaktivní části. Do nově aktivní části se překopírují živé objekty ze staré, již neaktivní, části. Mrtvé objekty nekopírujeme, ale při dalším prohození aktivní a neaktivní části je jednoduše přepíšeme.

Nevýhoda GC - Garbage collector potřebuje ke své práci procesorový čas, aby mohl rozhodovat o tom, jestli je objekt v paměti mrtvý, nebo živý. O stavu objektů musí mít collector uloženou nějakou informaci. Tyto informace jsou další data, která ale nejsou nezbytná pro běh programu.

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 7. Zpracování chyb v moderních programovacích jazycích, princip datových proudů – pro vstup a výstup. Rozdíl mezi znakově a bytově orientovanými datovými proudy.
Pokud v průběhu programu dojde k výjimečné situaci, pro kterou v daném kontextu nemáme dostatek informací, abychom ji mohli hned na místě vyřešit a pokračovat v právě prováděném bloku programu, vyhodíme výjimku. Vyhození výjimky znamená ukončení prováděného bloku programu a možnost výjimku ve volajícím bloku, kde již mohou být informace v dostačujícím množství pro napravení chyby, ošetřit.
Všechny výjimky v prostředí .NET frameworku mají společného předka, který je představován třídou System.Exception. Každá odvozená třída představuje konkrétnější výjimečný stav. Například třída DivideByZeroException představuje výjimku dělení nulou. Pro vyhozeni výjimky slouží klíčové slovo \textit{throw}, kterému je předána instance výjimky. Pro zachycení výjimky použijeme \textit{catch} a následně můžeme provést vlastní implementaci opravy.

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 8. Jazyk UML – typy diagramů a jejich využití v rámci vývoje.
- Funkční náhled - Diagram případu užití
- Logický náhled
  - Diagram tříd
  - Objektový diagram
- Dynamický náhled popisující chování
  - Stavový diagram
  - Diagram aktivit
  - Interakční diagramy
    - Sekvenční diagram
	- Diagram spolupráce
- Implementační náhled
  - Diagram komponent - Zobrazuje komponenty, z kterých se skládá systém. Dále zobrazuje, které komponenty jsou propojeny (komunikují spolu).
  - Diagram nasazení - Zobrazuje fyzické rozložení systému, fyzická zařízení využitá.

\newpage
