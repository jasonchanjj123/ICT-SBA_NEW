program test;
var f:file of String;s:String;
begin
    assign('asset/txt/easy.txt');
    reset(f)    ;
    while not(EOF()) do
    begin
        while not(EOLn()) do
        begin
            read(s);
        end;    
    
    end;
end.