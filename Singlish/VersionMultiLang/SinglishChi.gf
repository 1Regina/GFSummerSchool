--# -path=../Version0

concrete SinglishChi of Singlish =
  SinglishGlobal with
    (Syntax=SyntaxChi),
    (Lexicon=LexiconChi),  -- The tiny RGL lexicon of 300 words
    (WordNet=WordNetChi) ;