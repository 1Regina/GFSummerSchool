concrete SinglishEngOrg of Singlish = open Prelude, SyntaxEng, ExtendEng, LexiconEng, ParadigmsEng, WordNetEng in {
    lincat

    Phrase  = Phr;
    Pred    = S;
    QPred   = QS; -- S if want to remove questions

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
    -- : Actor -> Action -> Object -> QPred; -- syntax Singlish do not have a question structure no mkQS
    MakeQuestion actor action object     =  mkQS (pastTense)(anteriorAnt)(mkQCl (mkCl (mkNP actor) (action) (object))) ;

    -- : Actor -> Action -> Pred  ;
    PersonAction actor action            = mkS(mkCl (mkNP actor) (mkVP <action : V> )) ; -- hack to force a sub-category action: V2 into a higher category
    -- : Action -> Object -> Pred ;
    VerbPhrase actor action object       = mkS( mkCl (mkNP (ProDrop actor))(mkVP action object)) ;   -- mkVP V2 NP

     -- Actor
    I       = SyntaxEng.i_Pron      ;
    YouSg   = SyntaxEng.youSg_Pron  ;
    YouPl   = SyntaxEng.youPl_Pron  ;
    YouPol  = SyntaxEng.youPol_Pron ;
    She     = SyntaxEng.she_Pron    ;
    They    = SyntaxEng.they_Pron   ;
    We      = SyntaxEng.we_Pron     ;

    -- Verbs for Singlish
    Kena = invarV2 "kena" ;  ---  kena a warning / kena a warning by her
    -- Kena_V = ss "kena"  ;   --
    -- Sabo =invarV2 "sabo"  ;

    -- Verbs for English
    -- Receive = mkV2  "receive" ;

    -- Object NP
    Scolding = mkNP aPl_Det scolding_N ;
    Fine = mkNP a_Det fine_N ;
    Penalty = mkNP a_Det penalty_3_N ;
    Warning = mkNP a_Det warning_1_N ;
    Sabo_king = mkNP (mkN "sabo king");


    -- for Question ends
    Ah      = mkVoc "ah"   ;
    Anot    = mkVoc "anot" ;
    Hor     = mkVoc "hor"  ;
    Meh     = mkVoc "meh"  ;

    -- for Chat ends
    Lah    = mkVoc "lah"   ;
    Leh    = mkVoc "leh"   ;
    Liao   = mkVoc "liao"  ;
    Lor    = mkVoc "lor"   ;
    Mah    = mkVoc "mah"   ;

    -- for Exclaim end
    Sia    = mkVoc "sia" ;

   oper -- for Singlish verbs
    invarV2 : Str -> V2 = \str -> mkV2 (mkV str str str (str + "-ed") (str+"ing")) ;



    -- param

    -- Tail =

    --   QuestionPassiveAh                -- How come ah
    -- | QuestionYesnoAnot                -- Can you do this anot
    -- | QuestionConsensusUncertainHor    -- Correct Hor
    -- | QuestionCorrectionDenyMeh        -- I got say meh

    -- | ChatFirmLah                   -- Not like that one lah
    -- | ChatMildLeh                   -- I like this one better leh
    -- | ChatPastLiao                  -- Gone liao
    -- | ChatZenLor                    -- Up to you lor
    -- | ChatJustifyMah                -- Bcos I am right mah

    -- | ExclaimSia                      ;-- Amazing sia

    -- param
    --   Context =
    --     ConQuestion
    --   | ConChat
    --   | ConExclaim ;

    --   QuestionAim =
    --     QuestionConsensus  -- hor
    --   | QuestionDeny       -- meh
    --   | PassiveA           -- ah
    --   | YesNo ;            -- anot

    --   ChatAim =
    --     Firm               -- lah
    --   | Mild               -- leh
    --   | Zen                -- lor
    --   | Past               -- liao
    --   | Justify ;          -- mah


}