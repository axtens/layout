MODULE Layout;
FROM Strings IMPORT CompareStr;
FROM InOut IMPORT WriteString, WriteLine, RedirectOutput;
FROM SLICE IMPORT Slice;
FROM XDOS IMPORT ReadFileLine;
FROM Files IMPORT Read, Open, READ, Close;
FROM XString IMPORT RightTrim;

VAR
	i : INTEGER;
	n : CARDINAL;
	axString,
	tmp : ARRAY [0..127] OF CHAR;
	lFlag : BOOLEAN;

PROCEDURE WhileEnd();
BEGIN
	WriteLine(" SELECT b");
	WriteLine(" SKIP");
	WriteLine("END");
	WriteLine("SELECT a");
	WriteLine("USE");
	WriteLine("Select b");
	WriteLine("USE");
END WhileEnd;

PROCEDURE Exact( ax1, ax2 : ARRAY OF CHAR) : BOOLEAN ;
BEGIN
	RightTrim( ax1);
	RightTrim( ax2);
	RETURN (CompareStr( ax1, ax2) = 0)
END Exact;

BEGIN
	Open(i,"LAYOUT.DAT",READ);
	RedirectOutput("LAYOUT.PRG");
	ReadFileLine(i,axString,n);
	lFlag := FALSE;
	WHILE n <> 0 DO
		Slice( axString, tmp);
		IF Exact(tmp,"into") THEN
			IF lFlag THEN
				WhileEnd;
			END;
			Slice( axString, tmp);
			WriteLine("Select a");
			WriteString("USE ");
			RightTrim( tmp);
			WriteLine( tmp);
			Slice( axString, tmp); (* put *)
			Slice( axString, tmp);
			WriteLine("Select b");
			WriteString("USE ");
			RightTrim( tmp);
			WriteLine( tmp);
			WriteLine("Select b");
			WriteLine("GOTO TOP");
			WriteLine("WHILE .NOT. b->(EOF())");
			WriteLine(" SELECT a");
			WriteLine(" APPEND BLANK");
		ELSE
			IF Exact(tmp,"rep") THEN
				lFlag := TRUE;
				Slice( axString, tmp);
				WriteString(" REPLACE a->");
				RightTrim( tmp);
				WriteString( tmp);
				Slice( axString, tmp);
				Slice( axString, tmp);
				WriteString(" WITH b->");
				RightTrim( tmp);
				WriteLine( tmp);
			END
		END;
		ReadFileLine(i,axString,n);
	END;
	Close(i);
	IF lFlag THEN
		WhileEnd()
	END;

END Layout.





