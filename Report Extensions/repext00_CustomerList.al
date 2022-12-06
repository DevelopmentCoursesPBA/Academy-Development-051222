reportextension 50100 "CSD Customer List" extends "Customer - List"
{
    dataset
    {
        add(Customer)
        {
            column(CSD_Shoe_Size;"CSD Shoe Size")
            {
            }
        }
    }


    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }
}