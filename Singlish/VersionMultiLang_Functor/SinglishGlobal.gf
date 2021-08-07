--# -path=../Version0

incomplete concrete SinglishGlobal of Singlish =
  open Syntax, Lexicon, WordNet, Extend, Symbolic in {

    lincat

    Phrase  = Phr;
    Pred    = S;
    QPred   = QS;

    Actor   = Pron ; -- you, I , She
    Action  = V2 ; -- kena, receive
    Object  = NP ; -- warning, fine, present

    SQuestEnd, SChatEnd, SExclaimEnd = Voc ;
    -- SQuestEnd;   -- ah, anot, hor, meh
    -- SChatEnd;    -- lah, leh, liao, lor, mah
    -- SExclaimEnd; -- Sia

    lin
    -- Coercions to start category  (Singlish)
    -- : Pred  -> SChatEnd -> Phrase ;
    SgpChat       pred  sChatEnd       = mkPhr (mkUtt pred) sChatEnd ;
    -- : QPred -> SQuestEnd -> Phrase;
    SgpQuest      qPred sQuestEnd      = mkPhr (mkUtt qPred) sQuestEnd ;
    -- : Pred  -> SExclaimEnd -> Phrase ;
    SgpExclaim    pred sExclaimEnd     = mkPhr (mkUtt pred) sExclaimEnd ;
    -- : QPred -> SExclaimEnd -> Phrase ;
    SgpQExclaim   qPred sExclaimEnd    = mkPhr (mkUtt qPred) sExclaimEnd;

    -- Coercions to start category  (English)
    -- : Pred -> Phrase ;
    EngSentPhrase   pred                 = mkPhr (mkUtt pred)  ;
    -- : QPred ->Phrase;
    EngQuestPhrase  qPred                = mkPhr (mkUtt qPred) ;

    -- Make Pred and QPred (Proper English)
    -- : Actor -> Action -> Object-> Pred ;
    MakeSentence actor action object     = mkS (pastTense) (mkCl (mkNP actor) (action) (object)) ;
    -- : Actor -> Action -> Object -> QPred;
    MakeQuestion actor action object     =  mkQS (pastTense) (mkQCl((mkCl (mkNP actor) (action) (object)))) ;

    -- : Actor -> Action -> Pred  ;
    PersonAction actor action            = mkS(mkCl (mkNP actor) (mkVP <action : V> )) ;
    -- : Action -> Object -> Pred ;
    VerbPhrase actor action object       = mkS( mkCl (mkNP (ProDrop actor))(mkVP action object)) ;   -- mkVP V2 NP

     -- Actor
    I       = Syntax.i_Pron      ;
    YouSg   = Syntax.youSg_Pron  ;
    YouPl   = Syntax.youPl_Pron  ;
    YouPol  = Syntax.youPol_Pron ;
    She     = Syntax.she_Pron    ;
    They    = Syntax.they_Pron   ;
    We      = Syntax.we_Pron     ;

    -- Verbs for Singlish
    -- Kena = invarV2 "kena" ;  ---  kena a warning / kena a warning by her
    -- Kena = kena_V; -- need so as to create non-existent words in wordnet

    -- Object NP
    Scolding = mkNP aPl_Det scolding_N ;
    Fine = mkNP a_Det fine_N ;
    Penalty = mkNP a_Det penalty_3_N ;
    Warning = mkNP a_Det warning_1_N ;
    -- Sabo_king = mkNP sabo_king_N ; -- need so as to create non-existent words in wordnet -- mkNP (mkN "sabo king"); -- original




}