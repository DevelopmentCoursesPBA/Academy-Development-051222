pageextension 50100 "CSD Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Shoe Size"; Rec."CSD Shoe Size")
            {
                ApplicationArea = All;
            }
            field("CSD Weight"; Rec."CSD Weight")
            {
                ApplicationArea = ALL;
            }
        }
    }
}
    
