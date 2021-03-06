tableextension 70140922  "UAE VAT Posting Setup Ext" extends "VAT Posting Setup"
{
    
    fields
    {
        field(70140921; "UAE VAT Group Code" ; Code[10])
        {
            Caption = 'VAT Group Code';
            DataClassification = CustomerContent;
            TableRelation = "UAE VAT Group Code"."Group Code";
        }
    }
}

pageextension 70140922 "UAE VAT Posting Setup Ext" extends "VAT Posting Setup"
{
    layout
    {
        
        addbefore("VAT Bus. Posting Group")
        {
            field("UAE VAT Group Code";"UAE VAT Group Code")
            {
                Caption = 'VAT Group Code';
                ToolTip = 'VAT Group Code is mandatory for UAE VAT Return report. Select the appropriate emirates';
                ApplicationArea = All;
            }
        }
    }
    
}