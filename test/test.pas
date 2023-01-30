program test;
var f:file of String;s:String;
begin
    Assign('asset/easy.txt');
    reset(f);
    while not(EOF()) do
    begin
        while not(EOLn()) do
        begin
            read(s);
        end;    
    
    end;
end.