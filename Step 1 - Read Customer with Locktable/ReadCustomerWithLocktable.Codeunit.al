codeunit 70000 "Read Customer with Locktable"
{
    trigger OnRun()
    var
        Cust: Record Customer;
    begin
        Cust.LockTable();
        Cust.Get('10000');
        if Confirm('Keep this transaction open?') then;
    end;
}