codeunit 70001 "Modify Customer 10000"
{
    trigger OnRun()
    var
        Cust: Record Customer;
    begin
        Cust.Get('10000');
        Cust.Name := 'Marije';
        Cust.Modify();
        if Confirm('Keep this transaction open?') then;
        Error('RollBack Transaction');
    end;
}