--# -path=../Version0

concrete SinglishEng of Singlish =
  SinglishGlobal with
    (Syntax=SyntaxEng),
    (Lexicon=LexiconEng),  -- The tiny RGL lexicon of 300 words
    (WordNet=WordNetEng),
    (Extend =ExtendEng) **      -- instanciated with SyntaxEng
   open (P=ParadigmsEng) in { -- Open modules for defining things outside the inherited part
lin
    -- for Question ends
    Ah      = P.mkVoc "ah" ;
    Anot    = P.mkVoc "anot" ;
    Hor     = P.mkVoc "hor"  ;
    Meh     = P.mkVoc "meh"  ;

    -- for Chat ends
    Lah    = P.mkVoc "lah"   ;
    Leh    = P.mkVoc "leh"   ;
    Liao   = P.mkVoc "liao"  ;
    Lor    = P.mkVoc "lor"   ;
    Mah    = P.mkVoc "mah"   ;

    -- -- for Exclaim end
    Sia    = P.mkVoc "sia" ;

    Kena = invarV2 "kena";
    Sabo_king = mkNP (P.mkN "sabo king");

   oper
   invarV2 : Str -> V2 = \str -> P.mkV2 (P.mkV str str str (str + "-ed") (str+"ing")) ;

   }