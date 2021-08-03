abstract Singlish = {

    flags startcat = Phrase;
    cat
        Phrase;
        Pred; QPred;

        Actor;  -- you, I , She
        Action; -- kena, receive
        Object; -- warning, fine, present


        SQuestEnd;   -- ah, anot, hor, meh
        SChatEnd;    -- lah, leh, liao, lor, mah
        SExclaimEnd; -- Sia

    fun
        -- Remark: Comment -> Comment;
        -- SingRemark: Comment -> End -> Comment;
        -- Clause      : Pred -> Phrase ;
        -- QClause     : QPred -> Phrase ;

        -- Coercions to start category  (Singlish)
        SgpChat     : Pred  -> SChatEnd -> Phrase ;
        SgpQuest    : QPred -> SQuestEnd -> Phrase;
        SgpExclaim  : Pred  -> SExclaimEnd -> Phrase ;
        SgpQExclaim : QPred -> SExclaimEnd -> Phrase ;


        -- Coercions to start category  (English)
        EngSentPhrase: Pred -> Phrase ;
        EngQuestPhrase : QPred ->Phrase;

        -- Make Pred and QPred (Proper English)
        MakeSentence: Actor -> Action -> Object-> Pred ;
        MakeQuestion: Actor -> Action -> Object -> QPred;

        PersonAction : Actor -> Action -> Pred  ;
        VerbPhrase   : Actor ->  Action -> Object -> Pred ;


        -- Actor
        I,
        YouSg   ,
        YouPl   ,
        YouPol  ,
        She     ,
        They    ,
        We      : Actor;

        -- Verbs for Singlish
        Kena: Action ;
        -- Kena_V :
        -- Sabo: Action ;

        -- Verbs for English
        -- Receive : Action ;


        -- Object NP
        Scolding,
        Fine,
        Penalty,
        Warning,
        Sabo_king : Object ;

        -- End
        Ah, Anot, Hor, Meh         : SQuestEnd;
        Lah,Leh, Liao, Lor,Mah     : SChatEnd;
        Sia                        : SExclaimEnd ;


}
-- corpus
-- She kena a warning


-- She kena a warning from him
-- I kena a fine yesterday
-- She sabo us/ herself
-- We kena sabo by them
-- sabo king  (adjective)
