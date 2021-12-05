page 70000 "Locktable Demo"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Welcome)
            {
                field(WelcomeToDemo; 'Welcome to the Locktable Demo') { ApplicationArea = All; }
            }
            group(Instructions)
            {
                InstructionalText = 'Click on the actions to start the demo...';
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Step1)
            {
                ApplicationArea = All;
                Caption = 'Read Customer with Locktable';

                trigger OnAction()
                var
                    ReadCustomerWithLocktable: Codeunit "Read Customer with Locktable";
                begin
                    ReadCustomerWithLocktable.Run();
                end;
            }
        }
    }
}