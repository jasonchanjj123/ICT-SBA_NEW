unit filing;

interface
var Table:file of String ;level_type,table:string;
    function get_table(level):String;
    var l,lines:integer;temp:string;
    begin
        randomize;
        table:=''
        case (level) of 
            1:level_type:='easy.txt';
            2:level_type:='hard.txt';
            3:level_type:='hardest.txt';
        end;

        Assign(Table,'asset/txt/'+level_type);
        while not EOLn(Table) do 
            Read(lines);
        target :=random(lines)+1;
        for l:=1 to target do
        begin
            Readln(temp);
            if l<>target then 
                continue
            table:=table+temp;
        end; 
        get_table:=table;
    end;