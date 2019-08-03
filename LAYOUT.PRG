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
