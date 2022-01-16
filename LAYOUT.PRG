Select a
USE \docs\drawing.dbf
Select b
USE \vendor\drawing.dbf
Select b
GOTO TOP
WHILE .NOT. b->(EOF())
 SELECT a
 APPEND BLANK
 REPLACE a->draw_no WITH b->drawing
 REPLACE a->distcode WITH b->order
 REPLACE a->equip_no WITH b->tag_no
 REPLACE a->client_no WITH b->client_no
 REPLACE a->title WITH b->title
 REPLACE a->rev_no WITH b->revision
 REPLACE a->remarks WITH b->comments
 SELECT b
 SKIP
END
SELECT a
USE
Select b
USE
Select a
USE \docs\distname
Select b
USE \vendor\orders
Select b
GOTO TOP
WHILE .NOT. b->(EOF())
 SELECT a
 APPEND BLANK
 REPLACE a->distcode WITH b->order
 REPLACE a->descript WITH b->descript
 SELECT b
 SKIP
END
SELECT a
USE
Select b
USE
Select a
USE \docs\distcode
Select b
USE \vendor\distcode
Select b
GOTO TOP
WHILE .NOT. b->(EOF())
 SELECT a
 APPEND BLANK
 REPLACE a->compcode WITH b->compcode
 REPLACE a->distcode WITH b->order
 REPLACE a->fs_copy WITH b->fs_Copy
 REPLACE a->a3_copy WITH b->a3_copy
 SELECT b
 SKIP
END
SELECT a
USE
Select b
USE
Select a
USE \docs\company
Select b
USE \vendor\company
Select b
GOTO TOP
WHILE .NOT. b->(EOF())
 SELECT a
 APPEND BLANK
 REPLACE a->compcode WITH b->compcode
 REPLACE a->name WITH b->name
 REPLACE a->street WITH b->street
 REPLACE a->town WITH b->town
 REPLACE a->attention WITH b->attention
 REPLACE a->telephone WITH b->telephone
 REPLACE a->fs_copy WITH b->fs_Copy
 REPLACE a->a3_copy WITH b->a3_copy
 REPLACE a->dist WITH b->dist
 REPLACE a->selc WITH b->selc
 SELECT b
 SKIP
END
SELECT a
USE
Select b
USE
Select a
USE \docs\rev
Select b
USE \vendor\history
Select b
GOTO TOP
WHILE .NOT. b->(EOF())
 SELECT a
 APPEND BLANK
 REPLACE a->draw_no WITH b->drawing
 REPLACE a->rev_no WITH b->rev
 REPLACE a->remarks WITH b->comments
 SELECT b
 SKIP
END
SELECT a
USE
Select b
USE
Select a
USE \docs\issue
Select b
USE \vendor\issue
Select b
GOTO TOP
WHILE .NOT. b->(EOF())
 SELECT a
 APPEND BLANK
 REPLACE a->issue WITH b->issue
 REPLACE a->draw_no WITH b->drawing
 REPLACE a->rev_no WITH b->revision
 REPLACE a->selc WITH b->selc
 SELECT b
 SKIP
END
SELECT a
USE
Select b
USE


/**
    dbUseArea( .T.,,"\docs\drawing.dbf", "ddrawing", .T. )
    dbUseArea( .T.,,"\vendor\drawing.dbf", "vdrawing", .T. )
    dbgotop()
    while !(vdrawing->(end()))
        ddrawing->dbappend()
        ddrawing->draw_no   := vdrawing->drawing
        ddrawing->distcode  := vdrawing->order
        ddrawing->equip_no  := vdrawing->tag_no
        ddrawing->client_no := vdrawing->client_no
        ddrawing->title     := vdrawing->title
        ddrawing->rev_no    := vdrawing->revision
        ddrawing->remarks   := vdrawing->comments
        vdrawing->dbskip()
    enddo
    ddrawing->(dbCloseArea())
    vdrawing->(dbCloseArea())

    dbUseArea( .T.,,"\docs\distname", "distname", .T. )
    dbUseArea( .T.,,"\vendor\orders", "orders", .T. )
    dbgotop()
    while !(orders->(EOF()))
        distname->dbappend()
        distname->distcode := orders->order
        distname->descript := orders->descript
        orders->dbskip()
    enddo
    distname->(dbCloseArea())
    orders->(dbCloseArea())

    dbUseArea( .T.,,"\docs\distcode", "ddistcode", .T. )
    dbUseArea( .T.,,"\vendor\distcode", "vdistcode", .T. )
    dbgotop()
    while !(b->(EOF()))
        ddistcode->dbappend()
        ddistcode->compcode := vdistcode->compcode
        ddistcode->distcode := vdistcode->order
        ddistcode->fs_copy  := vdistcode->fs_Copy
        ddistcode->a3_copy  := vdistcode->a3_copy
        vdistcode->dbskip()
    enddo
    ddistcode->(dbCloseArea())
    vdistcode->(dbCloseArea())

    dbUseArea( .T.,,"\docs\company", "dcompany", .T. )
    dbUseArea( .T.,,"\vendor\company", "vcompany", .T. )
    dbgotop()
    while !(vcompany->(EOF()))
        dcompany->dbappend()
        dcompany->compcode  := vcompany->compcode
        dcompany->name      := vcompany->name
        dcompany->street    := vcompany->street
        dcompany->town      := vcompany->town
        dcompany->attention := vcompany->attention
        dcompany->telephone := vcompany->telephone
        dcompany->fs_copy   := vcompany->fs_Copy
        dcompany->a3_copy   := vcompany->a3_copy
        dcompany->dist      := vcompany->dist
        dcompany->selc      := vcompany->selc
        vcompany->dbskip()
    enddo
    dcompany->(dbCloseArea())
    vcompany->(dbCloseArea())

    dbUseArea( .T.,,"\docs\rev", "rev", .T. )
    dbUseArea( .T.,,"\vendor\history", "history", .T. )
    dbgotop()
    while !(history->(EOF()))
        rev->dbappend()
        rev->draw_no := history->drawing
        rev->rev_no  := history->rev
        rev->remarks := history->comments
        history->dbskip()
    enddo
    rev->(dbCloseArea())
    history->(dbCloseArea())

    dbUseArea( .T.,,"\docs\issue", "dissue", .T. )
    dbUseArea( .T.,,"\vendor\issue", "vissue", .T. )
    dbgotop()
    while !(vissue->(EOF()))
        dissue->dbappend()
        dissue->issue   := vissue->issue
        dissue->draw_no := vissue->drawing
        dissue->rev_no  := vissue->revision
        dissue->selc    := vissue->selc
        vissue->dbskip()
    enddo
    dissue->(dbCloseArea())
    vissue->(dbCloseArea())
**/
