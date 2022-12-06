reportextension 50100 "CSD Customer List" extends "Customer - List"
{
    RDLCLayout = './Layouts/CustomerList.rdl';
    dataset
    {
        add(Customer)
        {
            column(CSD_Shoe_Size; "CSD Shoe Size")
            {
                IncludeCaption = true;
            }
            column(CSD_Weight; "CSD Weight")
            {
                IncludeCaption = true;
            }
        }
    }
    requestpage
    {

        layout
        {
            addfirst(Content)
            {
                group("CSD Options")
                {
                    Caption = 'Options';
                    field(ShowDetails; ShowDetails)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    var
        ShowDetails: Boolean;

    trigger OnPostReport()
    var
        EndMessageTxt: Label 'I have finished - %1 Customers', Comment = 'Gives a message after run';
    begin
        message(EndMessageTxt, Customer.Count());
    end;
}