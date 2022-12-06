reportextension 50101 "CSD Customer Top 10" extends "Customer - Top 10 List"
{
    dataset
    {
        // Add changes to dataitems and columns here
    }
    
    requestpage
    {
        layout
        {
            modify(ChartType)
            {
                Visible=false;
            }
        }
    }
    
    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }
}