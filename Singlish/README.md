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