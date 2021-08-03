--# -path=../Version0

concrete SinglishEng of Singlish =
  -- SinglishGlobal with
  --   (Syntax=SyntaxEng),
  --   (Lexicon=LexiconEng),  -- The tiny RGL lexicon of 300 words
  --   (WordNet=WordNetEng) ;

   SinglishGlobal                  -- The inherited part
   with (Syntax=SyntaxEng) **      -- instanciated with SyntaxEng
   open SyntaxEng, LexiconEng, ParadigmsEng, WordNetEng in { -- Open modules for defining things outside the inherited part
   }