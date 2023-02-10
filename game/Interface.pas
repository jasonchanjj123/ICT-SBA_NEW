unit Interface;

interface 
    procedure print_table(table:string);
    var l,l2:integer
    begin
        for l:=0 to 8 do
            for l2:=1 to 9 do
                print(table[l*9+l2]);
        
    end;


implementation
