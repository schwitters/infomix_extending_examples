EXECUTE FUNCTION Exec_For_Rows("SELECT F1.A, ROW(F2.A, F1.B), SET{F1.B, F2.B}, F2.B, F2.C FROM Foo F1, Foo F2;");
