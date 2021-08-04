--# -path=../Version0

concrete SinglishChi of Singlish =
  SinglishGlobal - [SgpChat, SgpQuest, SgpExclaim, SgpQExclaim ] with
    (Syntax=SyntaxChi),
    (Lexicon=LexiconChi),  -- The tiny RGL lexicon of 300 words
    (WordNet=WordNetChi),
    (Extend =ExtendChi) **      -- instanciated with SyntaxChi
   open (P=ParadigmsChi), Prelude in { -- Open modules for defining things outside the inherited part
lin

    -- : Pred  -> SChatEnd -> Phrase ;
    SgpChat pred  sChatEnd       = cc2 (mkUtt pred) sChatEnd ; -- cc2 from Prelude
    -- : QPred -> SQuestEnd -> Phrase;
    SgpQuest qPred sQuestEnd      = cc2 (mkUtt qPred) sQuestEnd ;
    -- : Pred  -> SExclaimEnd -> Phrase ;
    SgpExclaim pred sExclaimEnd     = cc2(mkUtt pred) sExclaimEnd ;
    -- : QPred -> SExclaimEnd -> Phrase ;
    SgpQExclaim  qPred sExclaimEnd = cc2 (mkUtt qPred) sExclaimEnd;




    -- for Question ends
    Ah      = ss "ah" ;
    Anot    = ss "anot" ;
    Hor     = ss "hor"  ;
    Meh     = ss "meh"  ;

    -- for Chat ends
    Lah    = ss "lah"   ;
    Leh    = ss "leh"   ;
    Liao   = ss "liao"  ;
    Lor    = ss "lor"   ;
    Mah    = ss "mah"   ;

    -- -- for Exclaim end
    Sia    = ss "sia" ;

    Kena = P.mkV2 "kena";
    Sabo_king = mkNP (P.mkN "sabo king");

   oper
   invarV2 : Str -> V2 = \str -> P.mkV2 (P.mkV str str str (str + "-ed") (str+"ing")) ;

   }