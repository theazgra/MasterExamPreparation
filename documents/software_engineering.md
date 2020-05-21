# Softwarové inženýrství

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 1. Softwarový proces. Jeho definice, modely a úrovně vyspělosti.
- **Softwarový proces** je po částech uspořádaná množina kroků směřujících k vytvoření nebo úpravě softwarového díla.
- **Softwarové inženýrství** je inženýrská disciplína zabývající se praktickými problémy vývoje rozsáhlých softwarových systémů.
- Model je zjednodušená realita pro snadnější pochopení
- Vysvětlení pojmů v definici
  - Krokem může být aktivita nebo opět podproces (hierarchická dekompozice procesu). 
  - Aktivity a podprocesy mohou probíhat v čase souběžně, tudíž je vyžadována jejich koordinace. 
  - Je nutné zajistit opakovatelnost použití procesu ve vztahu k jednotlivým softwarovým projektům, tedy zajistit jeho znovupoužitelnost.  Cílem je dosáhnout stabilních výsledků vysoké úrovně kvality.
  - Softwarový produkt je realizován v rámci organizace s danými ekonomickými možnostmi

### Vyspělostní úrovně:
Úroveň definice a využití softwarového procesu je hodnocena dle stupnice SEI (Software Engineering Institute) 1 - 5 vyjadřující vyspělost firmy či organizace z daného hlediska. Tento model hodnocení vyspělosti a schopností dodavatele softwarového produktu se nazývá CMM (Capability Maturity Model) a jeho jednotlivé úrovně lze stručně charakterizovat asi takto:

 - Počáteční (Initial) - firma nemá definován softwarový proces a každý projekt je řešen případ od případu (ad hoc).
 - Opakovatelná (Repeatable) - firma identifikovala v jednotlivých projektech opakovatelné postupy a tyto je schopna reprodukovat v každém novém projektu.
 - Definovaná (Defined) - softwarový proces je definován (a dokumentován) na základě integrace dříve identifikovaných opakovatelných kroků.
 - Řízená (Managed) - na základě definovaného softwarového procesu je firma schopna jeho řízení a monitorování.
 - Optimalizovaná (Optimized) - zpětnovazební informace získaná dlouhodobým procesem monitorování softwarového procesu je využita ve prospěch jeho optimalizace.

### Vodopádový model
Základem téměř všech modelů softwarového procesu se stal vodopádový model. Tento vodopádový model vychází z rozdělení životního cyklu softwarového díla na čtyři základní fáze: analýza požadavků a jejich specifikace, návrh softwarového systému, implementace a na konec testování a udržování vytvořeného produktu.  Princip vodopádu spočívá v tom, že následující množina činností spjatá s danou fází nemůže započít dříve, než skončí předchozí.  Jinými slovy řečeno, výsledky předchozí fáze 'vtékají' jako vstupy do fáze následující. Model je možno v různých modifikacích a rozšířeních nalézt ve většině současných přístupů.

**Nedostatky vodopádového modelu**

- Prodleva mezi zadáním projektu a vytvořením spustitelného systému je příliš dlouhá.
- Výsledek závisí na úplném a korektním zadaní požadavků kladených na výsledný produkt.
- Nelze odhalit výslednou kvalitu produktu danou splněním všech požadavků, dokud není výsledný softwarový systém hotov.

**Inkrementální vodopádový model** 

- Modifikace vodopádového modelu, snažící se odstranit jeho nevýhody. Finální projekt je rozdělen na dílčí verte. Do novějších verzí je postupně přidávána další funkčnost systému a až poslední verze obsahuje plnohodnotný systém. Jednotlivé verze, se vyvíjejí vodopádovým modelem, ale čas na jejich realizaci je menší a můžeme sledovat vývoj systému.

**Spirálový model**

- Jako inkrementální, s tím, že mezi jednotlivé verze byly vloženy další procesy, jako  např. zhodnocení verze z pohledu finálního systému, či přidávní nových požadavků zákazníka.

### RUP
Proces RUP definuje disciplinovaný přístup k přiřazování úkolů a zodpovědností v rámci vývojové organizace. Cílem je zajistit vytvoření produktu vysoké kvality požadované zákazníkem v rámci predikovatelného rozpočtu a časového rozvrhu.

 Oproti vodopádovému modelu se liší v těchto základních principech:


 - softwarový produkt je vyvíjen iteračním způsobem v cyklech
   - na konci každé iterace je spustitelný kód
 - Systém je postupně vyvíjen ve verzích, které lze průběžně ověřovat se zadavatelem
   - případně je upravit pro další iteraci 
 - využívá se již existujících softwarových komponent 
   - skládání produktu z prefabrikovaných komponent
 - model softwarového systému je vizualizován pomocí UML
 - jsou spravovány požadavky kladené na systém
   - postupy jak získat ze zadavatele požadavky na systém
 - průběžně je ověřována kvalita produktu 
 - změny systému jsou řízeny (každá změna je přijatelná a změny jsou sledovatelné)

V současném období, kdy se předmětem vývoje staly softwarové systémy vysoké úrovně sofistikace, je nemožné nejprve specifikovat celé zadání, následně navrhnout jeho řešení, vytvořit softwarový produkt implementující toto zadání, vše otestovat a předat zadavateli k užívání.  Jediné možné řešení takovému problému je přístup postavený na iteracích, umožňující postupně upřesňovat cílový produkt cestou jeho inkrementálního rozšiřovaní z původní hrubé formy do výsledné podoby. Softwarový systém je tak vyvíjen ve verzích, které lze průběžně ověřovat se zadavatelem a případně jej pozměnit pro následující iteraci.

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 2. Vymezení fáze „sběr a analýza požadavků“. Diagramy UML využité v dané fázi.
Specifikace a analýza požadavků je první fáze vývoje softwaru. Cílem je definovat požadavky na software a popsat jeho funkčnost. Výsledkem jsou dokumenty, které se stanou součástí smlouvy mezi zadavatelem a vývojovým týmem. 

V rámci specifikace požadavků je třeba analyzovat procesy u zadavatele, které bude software řešit nebo s nimi nějak souvisí. K dobrému popisu těchto procesů slouží Use-Case diagram, sekvenční diagram nebo diagram aktivit.

Jazyk UML *Unified Modeling Language* je v softwarovém inženýrství grafický jazyk pro vizualizaci, specifikaci, navrhování a dokumentaci programových systémů. UML nabízí standardní způsob zápisu jak návrhů systému včetně konceptuálních prvků jako jsou business procesy a systémové funkce, tak konkrétních prvků jako jsou příkazy programovacího jazyka, databázová schémata a znovupoužitelné programové komponenty.

### Use-Case diagram
Zabýva se aktéry, vztahy mezi nimi a přístupy aktérů k systému


- Aktér - Entita využívající systém. Přistupuje k případům užití. *Panáček*
- Případ užití - Znázorňuje funkci systému. *Ovál*
- Relace -  Vazby a vztahy mezi aktéry a případy užití
  - Relace přístupu k systému - mezi aktérem a případem užití. Plná čára nebo šipka
  - Relace `<<include>>` (zahrnuje) - uvnitř systému, kdy jeden proces využívá i v rámci jiného procesu. Čárkovaná čára
  - Relace `<<extend>>` (rozšiřuje) - uvnitř systému, jeden proces může být rozšířen o jiný proces.
  - Relace dědičnosti, zobecnění, specializace mezi aktéry
    - zobecnění aktéra
    - specializace případu užití
- Scénář - unikátní sekvence akcí skrz případ užití

### Sekvenční diagram
- Popisuje funkce systému z pohledu objektů a jejich iterací
- Komunikace mezi objekty je znázorněna v čase, pomocí zpráv, můžeme vyčíst životní cyklus objektu
- Diagram je tvořen objekty uspořádanými do sloupců a šipky mezi nimi odpovídají vzájemně si zasílaným zprávám
- Zprávy mohou být synchronní nebo asynchronní
  - u synchronních zpráv odesílatel čeká na odpověď (odezvu) adresáta
  - v případě asynchronní zprávy odesílatel nečeká na odpověď a pokračuje ve vykonávání své činnosti
- Souvislé provádění nějaké činnosti se v sekvenčním diagram vyjadřuje svisle orientovaným obdélníkem
- Odezvu adresáta lze opět modelovat, v tomto případě tzv. návratovou zprávou (přerušovaná čára)


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 3. Vymezení fáze „Návrh“. Diagramy UML využité v dané fázi. Návrhové vzory – členění, popis a příklady.

Návrh implementace je druhá fáze vývoje SW. Jde o abstrakci zdrojového kódu, která bude sloužit jako hlavní dokument programátorům v další, implementační fázi. Tento model dále upřesňuje model analýzy ve světle skutečného implementačního prostředí. Pojem implementační prostředí v podstatě vyjadřuje možnost namapovat navržené softwarové komponenty obsažené v modelu analýzy na architekturu systému určeného k provozu vyvíjené aplikace s maximálním možným využitím služeb již existujících softwarových komponent. 
 
 Postup včlenění implementačního prostředí do vyvíjené aplikace je dán následující posloupností činností:

 - definice systémové architektury,
 - identifikace návrhových vzorů a možnosti znovupoužití tzv. rámcových řešení,
 - definice softwarových komponent a jejich znovupoužití.

### UML diagramy
- Diagram tříd - specifikuje množinu tříd, rozhraní a jejich vzájemné vztahy. Statický pohled na systém.
- Diagram spolupráce - je podobně jako sekvenční diagram zaměřen na interakce, ale spíše z pohledu strukturální organizace objektů. Primárním aspektem je topologie objektů a né časová posloupnost.
- Diagram nasazení - popisující konfiguraci (topologii) technických prostředků umožňujících běh vlastního softwarového systému.
- Stavový diagram - popisuje životní cyklus objektů a stavy ve kterých se mohou nacházet. Dále popisuje přechody mezi stavy a události, které vyvolali tyto přechody.

### Návrhové vzory
- Šablony, metodiky pro řešení různých typických problému, se kterými se vývojář setkává
- Návrhový vzor je popsán množinou komunikujících objektů a jejich tříd, které jsou přizpůsobeny řešení obecného problému návrhu v daném konkrétním kontextu
- 3 hlavní skupiny návrhových vzorů
  1. Tvořící vzory - určené k řešení problému vytváření objektů. Často cestou delegace této funkce na speciálně k tomuto účelu navržené třídy.
     - Abstract factory - definuje rozhraní pro vytváření rodin objektů, které jsou na sobě závislé nebo nějak souvisí, bez určení konkrétní třídy. Klient je odstíněn od vytváření konkrétních instancí.
     - Factory - definuje rozhraní pro vytváření objektů. Potomek rozhoduje o tom, jaký objekt bude vytvořen
     - Singleton - třída mající pouze jedinou instanci
     - Prototype - specifikuje druh objektů, které se mají vytvořit použitím prototypového objektu. Nové objekty se vytváří kopírováním prototypového objektu.
  2. Strukturální vzory - řešící problémy způsobu uspořádání objektů a jejich tříd.
     - Adapter - Když je nutnost komunikovat mezi dvěmi třídami, které nemají kompatibilní rozhraní. Převádí rozhraní jedné třídy na rozhraní druhé třídy.
     - Facade - Jednotné rozhraní k sadě rozhraní v podsystému. Definuje rozhraní vyšší úrovně, které zjednodušuje komunikaci s podsystémem.
     - Composit - Skládá objekty do stromové struktury. Umožňuje klientovi pracovat s jednotlivými i složenými objekty stejným způsobem.
     - Proxy - náhrada nebo zástupný objekt za nějaký jiný. Např. při testování.
  3. Vzory chování - popisující algoritmy a spolupráci objektů. Zajímají se o chování objektů.
     - Observer - v případě, že na jednom objektu závisí více objektů. Dá vědět, když dojde ke změně
     - Command - zapouzdřuje požadavek na objekt a tím umožňuje parametrizovat klienty s různými požadavky
     - Interpreter - vytváří jazyk, gramatická pravidla a určení způsobu jak vzniklý jazyk interpretovat
     - Strategy - zapouzdřuje druh algoritmu nebo objektu, které se mají měnit, tak aby byly pro klienta zaměnitelné
     - Iterator - způsob přístupu k elementům skupinového objektu, bez vystavení vnitřní implementace objektu
     - Visitor - reprezentuje operaci, která by měla být provedena na elementech objektové struktury. Umožní definovat operace, beze změny tříd elementů na kterých pracuje.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 4. Objektově orientované paradigma. Pojmy třída, objekt, rozhraní. Základní vlastnosti objektu a vztah ke třídě. Základní vztahy mezi třídami a rozhraními. Třídní vs. instanční vlastnosti.
- OOP je metodika vývoje softwaru. Paradigma OOP popisuje způsob vývoje a zápisu programu a způsob uvažování o problému.
- Při řešení úlohy vytváříme model popisované reality – entity a interakce mezi nimi
- Abstrakce od nepotřebných detailů
- Postup řešení je v řadě případů efektivnější než při procedurálním přístupu, kde se úlohy řeší jako posloupnost příkazů
- Model OPP definuje program jako soubor spolupracujících komponent s přesně stanoveným chováním a stavem.
- Cíle OOP:
  - Znuvupoužitelnost komponent
  - Rozklad složité úlohy na dílčí součásti
  - Přiblížení softwarové struktury reálnému světu
  - Skrytí detailu implementace před uživatelem
- Definice:
  - Třída - šablona pro vytváření instancí. Seskupuje objekty stejného typu a podychuje jejich podstatu na obecné úrovni. Definuje data (stav) a metody (chování) objektů.
    - Třídní proměnné, statické - společné pro všechny objekty třídy
    - Instanční proměnné - udávají vlastnost, stav objektu. Vlastní každému objektu zvlášť
  - Objekt - Instance jedné třídy. Mající stav, identitu a určité chování, obě definováno třídou.
    - doba existence - časový interval daný okamžikem vzniku a zániku objektu
  - Rozhraní - předepisuje třídám, které jej budou implementovat, sadu metod, popř. vlastností, které musí mít.
  - Abstraktní třída - podobně jako rozhraní může předepisovat sadu metod a vlastností. Ale zároveň může obsahovat implementace metod. Nelze vytvořit její instance. 
    - Třída může většinou dědit pouze z jedné třídy.
    - Třída může implementovat libovolný počet rozhraní.
  - Abstrakce - abstrakce od detailů, ty jsou skryty v rámci implementace
  - Zapouzdření - privátní proměnné, přístupné pouze samotné třída, zabraňuje možné nekonzistenci. Tyto proměnné mohou být upravovány pomocí metod.
  - Skládání - objekt může obsahovat další objekty. Podle životnosti objektů
    - Agregace - části mohou být obsaženy i v jiných celcích
    - Kompozice - výhradní vlastnictví
  - Dědičnost - třída může dědit z jiné třídy
  - Delegování - objekt využívá metody jiné třídy, pomocí volání metod
  - Polymorfismus - objekt se chová podle toho, jaké třídy je instancí. Funguje pro metody rozhraní nebo metody definované v předkovi.
  - Generičnost - Generika v C#, templaty v C++

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 5. Mapování UML diagramů na zdrojový kód.
K mapování UML diagramu na kód dochází v první části implementační fáze vývoje. Jde o generování zdrojových kódů z UML diagramu, dle následující tabulky. Toto se dá vygenerovat dle diagramu tříd.

Z uvedené tabulky vyplývá, že jediné, co nelze přímo odvodit z diagramů UML jsou těla metod, kód, který je proveden v odezvě na přijatou zprávu a také jaká je fyzická struktura vytvářených souborů reprezentujících softwarové komponenty. 


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


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 6. Správa paměti (v jazycích C/C++, JAVA, C#, Python), virtuální stroj, podpora paralelního zpracování a vlákna.
Správa paměti je soubor metod, které OS nebo runtime daného programovacího jazyku využívá pro přidělování a uvolňování paměti. Většina moderních jazyků používá zejména automatické správy paměti: C\#, Haskell, Java, JavaScript.

Výhody automatické správy paměti jsou následující:

- Programátor se může věnovat řešení skutečného problému
- Rozhraní modulů jsou přehlednější - není třeba řešit problém zodpovědnosti za uvolnění paměti pro objekty vytvořené různými moduly
- Nastává menší množství chyb spojených s přístupem do paměti
- Správa paměti je často mnohem efektivnější - i dont think so!

Nevýhody: 

- Paměť může být zachována jen proto, že je dostupná, i když není dále využita.
- Automatická správa paměti není k dispozici ve starších, ale často používaných jazycích.
- Nároky na výkon
- Zaseknutí programu při uklídu nepouživané paměti.

Pro zjištění toho, které úseky paměti se již nepoužívají, je k dispozici mnoho algoritmů. Většinou spoléhá automatická regenerace paměti na informace o tom, na které bloky paměti neukazuje žádná programová proměnná. V zásadě existují dvě skupiny metod - metody založené na sledování odkazů a metody založené na čítačích odkazů.

Správa paměti je v jazyce C\# plně automatizovaná, paměťový prostor se přiděluje operátorem `new`, jeho uvolnění zajistí systém řízení běhu programu. V jazyce Java je správa paměti rovněž plně automatizovaná, o uvolňování paměti se stará separátní vlákno, které běží s nízkou prioritou a zajišťuje kontinuální sledování nepoužitých bloků paměti. Přidělování paměti se provádí operátorem `new`. V moderním C++ se využívá `std::unique_ptr` a `std::shared_ptr`, které využívají čitače referencí na objekt.

### Garbage Collector
GC je obvykle součástí běhového prostředí daného jazyka. Má za úkol automaticky určit a detekovat jež nepoužívanou paměť, která může být uvolněna a znovupoužita. Programátor se nemusí starat o uvolnění paměti. 



**Mark & Sweep** (jeho varianta použitá v GC .NET.)

- Algoritmus nastaví všem objektům v paměti speciální příznak `navštíven` na hodnotu `ne`. 
- Poté projde všechny objekty, ke kterým se lze dostat a nastaví jim hodnotur příznaku `navštíven` na `ano`.
- všechny objekty s příznakem `navštíven` majícím hodnotu `ne` jsou odpad - a mohou být uvolněny z paměti. 
- Tato metoda má několik nevýhod, při garbage collectionu je přerušen běh programu. To znamená,že se programy pravidelně zmrznou, takže je nemožné pracovat s aplikacemi používající reálný čas.

**Java GC** používá 4 algoritmy, kromě M&S i 

- **Reference counting** - objekt vytvořen - counter =1, uložení reference na objekt c+1, změna hodnoty objektu, konec funkce, která s ním pracovala c-1, if c==0 - GC smaže
- **Generační algoritmus** - buď se mnoho objektů se stane odpadem krátce po svém vzniku  nebo jen malé procento referencí ve 'starších' objektech ukazuje na objekty mladší. Rozdělení paměti do generací.
- **Copying collector** - Tento algoritmus nejprve rozdělí prostor na haldě na dvě části, kdy jedna je aktivní a s druhou se nepracuje. Vždy můžeme alokovat objekty v celkové velikosti, která je poloviční velikost haldy. Pokud se při alokaci nevejdeme do místa na části haldy, je potřeba provést úklid. Ten spočívá v prohození aktivní a neaktivní části. Do nově aktivní části se překopírují živé objekty ze staré, již neaktivní, části. Mrtvé objekty nekopírujeme, ale při dalším prohození aktivní a neaktivní části je jednoduše přepíšeme.

Nevýhoda GC - Garbage collector potřebuje ke své práci procesorový čas, aby mohl rozhodovat o tom, zda je objekt v paměti aktivní. O stavu objektů musí mít collector uloženou nějakou informaci. Tyto informace jsou další data, která ale nejsou nezbytná pro samotný běh programu.

### Virtuální stroj
Je software, vytvářející virtualizované prostředí mezi platformou počítače a OS, ve kterém koncový uživatel může provozovar software na abstraktním stroji
- Plnohodnotná VM - Můžeme virtualizovat jiný OS na originálním OS, často s HW akcelerací. Sandbox.
- VM běhového prostředí, např. C# runtime, JVM, - tyto VM tvoří mezivrstvu mezi programem a samotným OS. Program v těchto jazycích není kompilován přímo na strojový kód procesoru, ale na mezijazyk, IL, který je iterpretován VM na strojový kód. Je používáno JIT (Just In Time) kompilace. Toto dovoluje například spuštět Javu na jakémkoliv OS, neboť pro každé takovéto OS existuje vlastní VM.

### Paralelní zpracování
- Standardní struktura softwaru je založena na sekvenčním výpočtu, což je nedostačující pro náročné výpočty, nebo procesory mající mnoho výpočetních jader. Proto se využívá několik metod paralelizace.
  - Multitasking – vlastnost OS rychle přepínat mezi několika procesy, díky čemuž se nám zdá, že běží zároveň
  - Kritická sekce – řetězec na sobě závislých výpočtů
- OS používají pro oddělení běžících aplikací Procesy. Proces má svůj vlastní paměťový prostor a jedno nebo více vláken. Vlákno je samostatně prováděný výpočetní tok instrukcí, které běží v rámci procesu.
- Paralelismus se dá rozdělit na
  - Datový paralelismus, který je jednoduší. Rozdělí práci s daty na více vláken. Každé vlákno vykována stejnou operace ale s jinými daty. Na konci nutná synchronizace.
  - Task paralelismus, každé vlákno vykonává různou operaci.
- Paralelní operace je nutno řídit, spouštět, čekat na ukončení. Je nutné řidit komunikaci mezi vlákny a řídit přistup ke sdílené paměti, např. pouze jedno vlákno může zapisovat do sdílení paměti v jeden časový okamžik.
- Použití více vláken nemusí znamenat N násobné zrychlení, a to kvůli režii spojené s vytvářením a řízení vláken.
- Vlákno se obvykle nachází v jednom z těchto 4 stavů:
  - Nově vytvořené a ještě nespuštěné
  - Spuštěné vlákno, které zrovna vykonává výpočet
  - Vlákno, které je pozastaveno, nebo čeká na jiné vlákno
  - Vlákno, které dokončilo svůj výpočet nebo bylo zastaveno
- Při paralelizaci často dochází k těmto problémům:
  - Uváznutí – dvě vlákna čekající, kde jedno vlákno čeká na ukončení druhého vlákna a naopak
  - Souběh – problém přístupu do sdílené paměti, je třeba synchronizovat pomocí zámků nebo semaforů. Můžeme zapsat nebo přečíst neplatná data
  - Vyhladovění – Vlákno se nikdy nedostane k prostředkům, které potřebuje pro svůj běh.
- Další možnosti paralelizace jsou na grafických kartách pomocí technologie CUDA, OpenCL či na speciálních akcelerátorech jako je Intel Xeon PHI, OpenMP
- Mechanismy synchronizace
  - Mutexy - exkluzivní přístup do kritické sekce
  - Semafor - omezuje počet vláken, které dostanou přístup do kritické sekce
  - Monitor
    - While a lock is held, the thread that holds the lock can again acquire and release the lock
    - Any other thread is blocked from acquiring the lock and the Monitor.Enter method waits until the lock is released.


<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 7. Zpracování chyb v moderních programovacích jazycích, princip datových proudů – pro vstup a výstup. Rozdíl mezi znakově a bytově orientovanými datovými proudy.
- Výjimky představují určité situace, ve kterých musí být přerušen výpočet a řízení předáno na místo, kde bude provedeno ošetření výjimky a rozhodnutí o dalším pokračování výpočtu.
- Starší programovací jazyky neměli podporu pro zpracování chyb a často se museli kontrolovat speciální příznaky, které říkali, zda došlo k chybě.
- Nové programovací jazyky řeší výjimky pomocí `try` `catch` bloků. V `try` bloku je kód, který může vyhodit výjimku a v catch bloku je poté mechanismus pracování této chyby. Vyhozená výjimka je zachycena v prvním nadřazeném `catch` bloku.
- Existuje taky `finally` blok
- Další jazyky, jako například GO, se rozhodli řešit vzniklé chyby pomocí návratové hodnoty. Funkce vrací Tuple, dvou hodnot, kde jedna z nich je chyba. Jestli chyba není nastavena, tak k ní nedošlo.
  - `val, err := myFunction( args... );`

### Datové proudy
Proudy jsou sekvence dat, například na disku. Proudy mohou být vstupní, tzn. čteme z proudu, nebo výstupní, do proudu je zapisováno. Existuje lokální proudy z disku nebo internetové proudy.
- Vstupně-Výstupní zařízení (I/O)
  - znakové: vstupní (klávesnice), výstupní (monitor, tiskárna)
  - blokové: pevný disk, flash disk, SD karta
- Znakově orientované proudy
  - Jedním prvkem v proudu je jeden znak textu. Text mlže být uchováván ve více než jednom bytu, např. UTF-8, či UNICODE
  - Docházi ke konverzi do kódování daného proudu
- Bytově orientované proudy
  - čtení i zápis probíhá po bytech
  - možnost přenést jakékoliv data, po převedení do binární podoby
  - často jsou Bufferovány, neboť zápis po jednotlivých bytech by byl pomalý
    - využití vyrovnávací paměti

<!-- ----------------------------------------------------------------------------------------------------------------- -->
## 8. Jazyk UML – typy diagramů a jejich využití v rámci vývoje.
- Funkční náhled
  - Diagram případu užití
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
