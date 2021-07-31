concrete SinglishEngOrg of Singlish = open Prelude, SyntaxEng, LexiconEng, ParadigmsEng, WordNetEng in {
    lincat

    Phrase  = Phr;
    Pred    = S;
    QPred   = QS;

    Actor   = Pron ; -- you, I , She
    Action  = V2 ; -- kena, receive
    Object  = CN ; -- warning, fine, present

    SQuestEnd, SChatEnd, SExclaimEnd = Voc ;
    -- SQuestEnd;   -- ah, anot, hor, meh
    -- SChatEnd;    -- lah, leh, liao, lor, mah
    -- SExclaimEnd; -- Sia

    lin
    -- Coercions to start category  (Singlish)
    -- : Pred  -> SChatEnd -> Phrase ;
    SgpChat       pred  sChatEnd       = mkPhr ((mkUtt pred) (mkVoc (sChatEnd))) ;
    -- : QPred -> SQuestEnd -> Phrase;
    SgpQuest      qPred sQuestEnd      = mkPhr ((mkUtt qPred) (mkVoc (sQuestEnd))) ;
    -- : Pred  -> SExclaimEnd -> Phrase ;
    SgpExclaim    pred sExclaimEnd     = mkPhr ((mkUtt pred) (mkVoc (sExclaimEnd))) ;
    -- : QPred -> SExclaimEnd -> Phrase ;
    SgpQExclaim   qPred sExclaimEnd    = mkPhr ((mkUtt qPred) (mkVoc (sExclaimEnd))) ;

    -- Coercions to start category  (English)
    -- : Pred -> Phrase ;
    EngSentPhrase   pred                 = mkPhr (mkUtt pred)  ;
    -- : QPred ->Phrase;
    EngQuestPhrase  qPred                = mkPhr (mkUtt qPred) ;

    -- Make Pred and QPred (Proper English)
    -- : Actor -> Action -> Object-> Pred ;
    MakeSentence actor action object     = mkS (mkCl (mkNP actor) (mkV2 action) (mkNP object)) ;
    -- : Actor -> Action -> Object -> QPred;
    MakeQuestion actor action object     =  mkQS (mkCl (mkNP actor) (mkV2 action) (mkNP object)) ;

    -- : Actor -> Action -> Pred  ;
    PersonAction actor action            = mkCl (mkNP Pron) (mkV action ) ;
    -- : Action -> Object -> Pred ;
    VerbPhrase action object             = mkCl (mkVP action) (mkNP object) ;   -- mkVP V2 NP

     -- Actor
    I       = SyntaxEng.i_Pron      ;
    YouSg   = SyntaxEng.youSg_Pron  ;
    YouPl   = SyntaxEng.youPl_Pron  ;
    YouPol  = SyntaxEng.youPol_Pron ;
    She     = SyntaxEng.she_Pron    ;
    They    = SyntaxEng.they_Pron   ;
    We      = SyntaxEng.we_Pron     ;

    -- Verbs for Singlish
    Kena_V2 = ss "kena" ;  ---  kena a warning / kena a warning by her
    -- Kena_V = ss "kena"  ;   --
    Sabo_V = ss "sabo"  ;

    -- Verbs for English
    receive = ss "receive"


    -- Object CN
    Scolding = mkNP aPl_Det scolding_1_N ;
    Fine = mkNP a_Det fine_1_N ;
    Warning = mkNP a_Det warning_1_N ;
    Sabo_king = mkNP (mkN "sabo king")


    -- for Question ends
    Ah      = ss "ah"   ;
    Anot    = ss "anot" ;
    Hor     = ss "hor"  ;
    Meh     = ss "meh"  ;

    -- for Chat ends
    Lah    = ss "lah"   ;
    Leh    = ss "leh"   ;
    Liao   = ss "liao"  ;
    Lor    = ss "lor"   ;
    Mah    = ss "mah"   ;

    -- for Exclaim end
    Sia    = ss "sia" ;



    oper
    Voc : Type;
    Voc

    ss : Str -> {s : Str} ;
    ss s = {s=s} ;

    param

    Tail =

      QuestionPassiveAh                -- How come ah
    | QuestionYesnoAnot                -- Can you do this anot
    | QuestionConsensusUncertainHor    -- Correct Hor
    | QuestionCorrectionDenyMeh        -- I got say meh

    | ChatFirmLah                   -- Not like that one lah
    | ChatMildLeh                   -- I like this one better leh
    | ChatPastLiao                  -- Gone liao
    | ChatZenLor                    -- Up to you lor
    | ChatJustifyMah                -- Bcos I am right mah

    | ExclaimSia                      ;-- Amazing sia

    param
      Context =
        ConQuestion
      | ConChat
      | ConExclaim ;

      QuestionAim =
        QuestionConsensus  -- hor
      | QuestionDeny       -- meh
      | PassiveA           -- ah
      | YesNo ;            -- anot

      ChatAim =
        Firm               -- lah
      | Mild               -- leh
      | Zen                -- lor
      | Past               -- liao
      | Justify ;          -- mah


}