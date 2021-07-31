concrete SinglishEngOrg of Singlish = open Prelude, SyntaxEng, ParadigmsEng in {
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
    EngSentence   pred                 = mkPhr (mkUtt pred)  ;
    -- : QPred ->Phrase;
    EngQuest      qPred                = mkPhr (mkUtt qPred) ;

    -- Make Pred and QPred (Proper English)
    -- : Actor -> Action -> Object-> Pred ;
    MakePred actor action object        = mkUtt (mkS (mkCl (mkNP actor) (mkV2 action) (mkNP object))) ;
    -- : Actor -> Action -> Object -> QPred;
    MakeQuest actor action object       = mkUtt (mkQS (mkCl (mkNP actor) (mkV2 action) (mkNP object))) ;

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

    -- Verbs for Singlish
    Kena_V2 = ss "kena" ;
    --Sabo = ss "sabo" ;


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
      | ConExclaim;

      QuestionAim =
        QuestionConsensus
      | QuestionDeny
      | PassiveA
      | YesNo ;

      ChatAim =
        Firm
      | Mild
      | Zen
      | Past
      | Justify ;


}