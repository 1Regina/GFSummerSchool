1. Singlish/Version0/SinglishEngOrg.gf for the lin  `MakeQuestion actor action object  =   mkQS (pastTense)(anteriorAnt)(mkQCl (mkCl (mkNP actor) (action) (object)))` ;
2. It only works for   `mkS (pastTense)(anteriorAnt) (mkCl (mkNP actor) (action) (object))` ;
3. Singlish/Version_MultiLang has no errors but simply cant linearize properly
4. how to add oper for Singlish/VersionGlossary/SinglishS.gf & SinglishGloss.gf `addDP s dp = {s = s.s ++ dp.s } ;`
  ```
  Singlish> gr | l -treebank
  Category S is not in scope
  CallStack (from HasCallStack):
    error, called at src/compiler/GF/Command/Commands.hs:881:38 in gf-3.11.0-IwHVa7aaPTN3LHNrzNKRBw:GF.Command.Commands
  ```
5. Demo Version0
   1. `l EngQuestPhrase (MakeQuestion She Kena Fine)`
   2. `l SgpChat (VerbPhrase We Kena KC_spider) Liao`
   3. `l SgpQuest (MakeQuestion I Kena KC_spider) Anot`
   4. `l SgpExclaim (VerbPhrase ?1 Kena Sabo_king) Sia`
6. Demo glossary
   1. `l makeSChat (addDPSChat (addDPSChat KenaSaboC Liao) Lah)`
   2. `l makeSQuest (addDPSQuest KenaSaboQ Ah)`
   3. `l makeSExclaim (addDPSExclaimQuest KenaSaboQ Sia)`
   4. `l makeSExclaim (addDPSExclaimChat KenaSaboC Sia)`
7. Demo MultiLang
   1. `l EngSentPhrase (MakeSentence I Kena KC_spider)`
   2. `l SgpQuest (MakeQuestion YouPol Kena KC_spider) Anot` -- chinese limitation
   3. `l EngQuestPhrase (MakeQuestion She Kena KC_spider)`
   4. `l SgpExclaim (VerbPhrase ?1 Kena Sabo_king) Sia`

