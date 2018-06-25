report 70140942 "UAEVATLoc Service - Invoice"
{
    // version NAVW112.00

    DefaultLayout = RDLC;
    RDLCLayout = './UAEVATLoc Service - Invoice.rdl';
    Caption = 'Service - Invoice';
    Permissions = TableData "Sales Shipment Buffer"=rimd;

    dataset
    {
        dataitem("Service Invoice Header";"Service Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.","Customer No.","No. Printed";
            RequestFilterHeading = 'Posted Service Invoice';
            column(No_ServiceInvHeader;"No.")
            {
            }
            column(InvDiscountAmountCaption;InvDiscountAmountCaptionLbl)
            {
            }
            column(DisplayAdditionalFeeNote;DisplayAdditionalFeeNote)
            {
            }
            dataitem(CopyLoop;"Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;"Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                    column(CompanyInfo2Picture;CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfoPicture;CompanyInfo3.Picture)
                    {
                    }
                    column(ReportTitleCopyText;STRSUBSTNO(Text004,CopyText))
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CompanyInfoFaxNo;CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BillToCustNo_ServInvHeader;"Service Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(BillToCustNo_ServInvHeaderCaption;"Service Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PostingDate_ServInvHeader;FORMAT("Service Invoice Header"."Posting Date"))
                    {
                    }
                    column(VATNoText;VATNoText)
                    {
                    }
                    column(VATRegNo_ServInvHeader;"Service Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_ServInvHeader;FORMAT("Service Invoice Header"."Due Date"))
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(No1_ServiceInvHeader;"Service Invoice Header"."No.")
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YorRef_ServInvHeader;"Service Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText;OrderNoText)
                    {
                    }
                    column(OrderNo_ServInvHeader;"Service Invoice Header"."Order No.")
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(DocDate_ServInvHeader;FORMAT("Service Invoice Header"."Document Date",0,4))
                    {
                    }
                    column(PricesInclVAT_ServInvHeader;"Service Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(PricesInclVAT_ServInvHeaderCaption;"Service Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(PageCaption;STRSUBSTNO(Text005,''))
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(PricesInclVAT1_ServInvHeader;FORMAT("Service Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(CompanyInfoPhoneNoCaption;CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoFaxNoCaption;CompanyInfoFaxNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoVATRegistrationNoCaption;CompanyInfoVATRegistrationNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCaption;CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankNameCaption;CompanyInfoBankNameCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankAccountNoCaption;CompanyInfoBankAccountNoCaptionLbl)
                    {
                    }
                    column(AmountCaption;AmountCaptionLbl)
                    {
                    }
                    column(ServiceInvoiceHeaderDueDateCaption;ServiceInvoiceHeaderDueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption;InvoiceNoCaptionLbl)
                    {
                    }
                    column(ServiceInvoiceHeaderPostingDateCaption;ServiceInvoiceHeaderPostingDateCaptionLbl)
                    {
                    }
                    //UAE VAT Localization Start -->
                    column(CurrencyFactor;CurrencyFactor)
                    {
                    }
                    column(LCYCode;GLSetup."LCY Code")
                    {
                    }
                    column(IsFCY;IsFCY)
                    {
                    }
                    //UAE VAT Localization Stop <--
                    dataitem(DimensionLoop1;"Integer")
                    {
                        DataItemLinkReference = "Service Invoice Header";
                        DataItemTableView = SORTING(Number);
                        column(DimText;DimText)
                        {
                        }
                        column(Number_IntegerLine;Number)
                        {
                        }
                        column(HeaderDimensionsCaption;HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            DimText := DimTxtArr[Number];
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                              CurrReport.BREAK;
                            FindDimTxt("Service Invoice Header"."Dimension Set ID");
                            SETRANGE(Number,1,DimTxtArrLength);
                        end;
                    }
                    dataitem("Service Invoice Line";"Service Invoice Line")
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Service Invoice Header";
                        DataItemTableView = SORTING("Document No.","Line No.");
                        column(TypeInt;TypeInt)
                        {
                        }
                        column(BaseDisc_ServInvHeader;"Service Invoice Header"."VAT Base Discount %")
                        {
                        }
                        column(TotalLineAmount;TotalLineAmount)
                        {
                        }
                        column(TotalAmount;TotalAmount)
                        {
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                        }
                        column(TotalInvDiscAmount;TotalInvDiscAmount)
                        {
                        }
                        column(LineNo_ServInvLine;"Line No.")
                        {
                        }
                        column(LineAmt_ServInvLine;"Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Description_ServInvLine;Description)
                        {
                        }
                        column(No_ServInvLine;"No.")
                        {
                        }
                        column(Quantity_ServInvLine;Quantity)
                        {
                        }
                        column(UOM_ServInvLine;"Unit of Measure")
                        {
                        }
                        column(No_ServInvLineCaption;FIELDCAPTION("No."))
                        {
                        }
                        column(Description_ServInvLineCaption;FIELDCAPTION(Description))
                        {
                        }
                        column(Quantity_ServInvLineCaption;FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_ServInvLineCaption;FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(UnitPrice_ServInvLine;"Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDisc_ServInvLine;"Line Discount %")
                        {
                        }
                        column(VATIdentifier_ServInvLine;"VAT Identifier")
                        {
                        }
                        column(VATIdentifier_ServInvLineCaption;FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(PostedShipmentDate;FORMAT(PostedShipmentDate))
                        {
                        }
                        column(InvDiscountAmount;-"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalText;TotalText)
                        {
                        }
                        column(Amount_ServInvLine;Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtInclVATAmount;"Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtInclVAT_ServInvLine;"Amount Including VAT")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText;VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(LineAmtInvDiscAmtAmtInclVAT;-("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Service Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPriceCaption;UnitPriceCaptionLbl)
                        {
                        }
                        column(ServiceInvoiceLineLineDiscountCaption;ServiceInvoiceLineLineDiscountCaptionLbl)
                        {
                        }
                        column(PostedShipmentDateCaption;PostedShipmentDateCaptionLbl)
                        {
                        }
                        column(SubtotalCaption;SubtotalCaptionLbl)
                        {
                        }
                        column(LineAmountInvDiscountAmountAmountIncludingVATCaption;LineAmountInvDiscountAmountAmountIncludingVATCaptionLbl)
                        {
                        }
                        //UAE VAT Localization Start -->
                        column(VAT__;"VAT %")
                        {
                        }
                        Column(VATAmount_ServiceLine; "Amount Including VAT"-"Line Amount"-"Inv. Discount Amount")
                        {
                        }
                        //UAE VAT Localization Stop <--
                        dataitem("Service Shipment Buffer";"Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(ServShptBufferPostingDate;FORMAT(ServiceShipmentBuffer."Posting Date"))
                            {
                            }
                            column(ServShptBufferQuantity;ServiceShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0:5;
                            }
                            column(ShipmentCaption;ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then
                                  ServiceShipmentBuffer.FIND('-')
                                else
                                  ServiceShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem()
                            begin
                                ServiceShipmentBuffer.SETRANGE("Document No.","Service Invoice Line"."Document No.");
                                ServiceShipmentBuffer.SETRANGE("Line No.","Service Invoice Line"."Line No.");

                                SETRANGE(Number,1,ServiceShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(DimText1;DimText)
                            {
                            }
                            column(LineDimensionsCaption;LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number <= DimTxtArrLength then
                                  DimText := DimTxtArr[Number]
                                else
                                  DimText := FORMAT("Service Invoice Line".Type) + ' ' + AccNo;
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                  CurrReport.BREAK;

                                FindDimTxt("Service Invoice Line"."Dimension Set ID");
                                if IsServiceContractLine then
                                  SETRANGE(Number,1,DimTxtArrLength + 1)
                                else
                                  SETRANGE(Number,1,DimTxtArrLength);
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            PostedShipmentDate := 0D;
                            if Quantity <> 0 then
                              PostedShipmentDate := FindPostedShipmentDate;

                            IsServiceContractLine := (Type = Type::"G/L Account") and ("Service Item No." <> '') and ("Contract No." <> '');
                            if IsServiceContractLine then begin
                              AccNo := "No.";
                              "No." := "Service Item No.";
                            end;

                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            if "Allow Invoice Disc." then
                              VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;

                            TotalLineAmount += "Line Amount";
                            TotalAmount += Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalInvDiscAmount += "Inv. Discount Amount";
                            TypeInt := Type;
                        end;

                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DELETEALL;
                            ServiceShipmentBuffer.RESET;
                            ServiceShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                              MoreLines := NEXT(-1) <> 0;
                            if not MoreLines then
                              CurrReport.BREAK;
                            SETRANGE("Line No.",0,"Line No.");
                            CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount");

                            TotalLineAmount := 0;
                            TotalAmount := 0;
                            TotalAmountInclVAT := 0;
                            TotalInvDiscAmount := 0;
                        end;
                    }
                    dataitem(VATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase;VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Service Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmount;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Service Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmount;VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Service Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Service Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmount;VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Service Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineVATCaption;VATAmountLineVATCaptionLbl)
                        {
                        }
                        column(VATAmountLineVATBaseControl108Caption;VATAmountLineVATBaseControl108CaptionLbl)
                        {
                        }
                        column(VATAmountLineVATAmountControl109Caption;VATAmountLineVATAmountControl109CaptionLbl)
                        {
                        }
                        column(VATAmountSpecificationCaption;VATAmountSpecificationCaptionLbl)
                        {
                        }
                        column(VATAmountLineVATIdentifierCaption;VATAmountLineVATIdentifierCaptionLbl)
                        {
                        }
                        column(VATAmountLineInvDiscBaseAmountControl141Caption;VATAmountLineInvDiscBaseAmountControl141CaptionLbl)
                        {
                        }
                        column(VATAmountLineLineAmountControl140Caption;VATAmountLineLineAmountControl140CaptionLbl)
                        {
                        }
                        column(VATAmountLineVATBaseControl116Caption;VATAmountLineVATBaseControl116CaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if VATAmountLine.GetTotalVATAmount = 0 then
                              CurrReport.BREAK;
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode;VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription;VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2;VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Service Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption;VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption;VATAmountLineVATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption;VATAmountLineVATAmountControl109CaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            if not VATClause.GET(VATAmountLine."VAT Clause Code") then
                              CurrReport.SKIP;
                            VATClause.TranslateDescription("Service Invoice Header"."Language Code");
                        end;

                        trigger OnPreDataItem()
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(Total;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                        column(PaymentTermsDescription;PaymentTerms.Description)
                        {
                        }
                        column(PaymentTermsDescriptionCaption;PaymentTermsDescriptionCaptionLbl)
                        {
                        }
                    }
                    dataitem(Total2;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                        column(CustNo_ServInvHeader;"Service Invoice Header"."Customer No.")
                        {
                        }
                        column(CustNo_ServInvHeaderCaption;"Service Invoice Header".FIELDCAPTION("Customer No."))
                        {
                        }
                        column(ShipToAddr1;ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8;ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption;ShiptoAddressCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if not ShowShippingAddr then
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem(LineFee;"Integer")
                    {
                        DataItemTableView = SORTING(Number) ORDER(Ascending) WHERE(Number=FILTER(1..));
                        column(LineFeeCaptionLbl;TempLineFeeNoteOnReportHist.ReportText)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if not DisplayAdditionalFeeNote then
                              CurrReport.BREAK;
                            if Number = 1 then begin
                              if not TempLineFeeNoteOnReportHist.FINDSET then
                                CurrReport.BREAK
                            end else
                              if TempLineFeeNoteOnReportHist.NEXT = 0 then
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                      CopyText := FormatDocument.GetCOPYText;
                      OutputNo += 1;
                    end;
                    CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem()
                begin
                    if not CurrReport.PREVIEW then
                      CODEUNIT.RUN(CODEUNIT::"Service Inv.-Printed","Service Invoice Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    if NoOfLoops <= 0 then
                      NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Service Invoice Header");
                FormatDocumentFields("Service Invoice Header");

                if not Cust.GET("Bill-to Customer No.") then
                  CLEAR(Cust);

                GetLineFeeNoteOnReportHist("No.");
                //UAE VAT Localization Start -->
                IsFCY := FALSE;
                IF (GLSetup."LCY Code" <> "Currency Code") AND ("Currency Code" <> '') THEN 
                    IsFCY := True;
                IF IsFCY THEN 
                    CurrencyFactor := "Currency Factor"
                ELSE
                    CurrencyFactor := 1;
                //UAE VAT Localization Stop <--
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies;NoOfCopies)
                    {
                        ApplicationArea = Service;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        ApplicationArea = Service;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(DisplayAdditionalFeeNote;DisplayAdditionalFeeNote)
                    {
                        ApplicationArea = Service;
                        Caption = 'Show Additional Fee Note';
                        ToolTip = 'Specifies if you want notes about additional fees to be shown on the document.';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        ServiceSetup.GET;
        FormatDocument.SetLogoPosition(ServiceSetup."Logo Position on Documents",CompanyInfo1,CompanyInfo2,CompanyInfo3);
    end;

    var
        Text004: Label 'Service TAX Invoice %1';
        Text005: Label 'Page %1';
        GLSetup: Record "General Ledger Setup";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        ServiceSetup: Record "Service Mgt. Setup";
        Cust: Record Customer;
        DimSetEntry: Record "Dimension Set Entry";
        VATAmountLine: Record "VAT Amount Line" temporary;
        VATClause: Record "VAT Clause";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        ServiceShipmentBuffer: Record "Service Shipment Buffer" temporary;
        TempLineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist." temporary;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        PostedShipmentDate: Date;
        CustAddr: array [8] of Text[50];
        ShipToAddr: array [8] of Text[50];
        CompanyAddr: array [8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        OutputNo: Integer;
        TypeInt: Integer;
        DimText: Text[120];
        ShowInternalInfo: Boolean;
        TotalLineAmount: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        DimTxtArrLength: Integer;
        DimTxtArr: array [500] of Text[50];
        IsServiceContractLine: Boolean;
        AccNo: Code[20];
        CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
        CompanyInfoFaxNoCaptionLbl: Label 'Fax No.';
        CompanyInfoVATRegistrationNoCaptionLbl: Label 'VAT Reg. No.';
        CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
        CompanyInfoBankNameCaptionLbl: Label 'Bank';
        CompanyInfoBankAccountNoCaptionLbl: Label 'Account No.';
        AmountCaptionLbl: Label 'Amount';
        ServiceInvoiceHeaderDueDateCaptionLbl: Label 'Due Date';
        InvoiceNoCaptionLbl: Label 'Invoice No.';
        ServiceInvoiceHeaderPostingDateCaptionLbl: Label 'Posting Date';
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: Label 'Unit Price';
        ServiceInvoiceLineLineDiscountCaptionLbl: Label 'Disc. %';
        PostedShipmentDateCaptionLbl: Label 'Posted Shipment Date';
        SubtotalCaptionLbl: Label 'Subtotal';
        LineAmountInvDiscountAmountAmountIncludingVATCaptionLbl: Label 'Payment Discount on VAT';
        ShipmentCaptionLbl: Label 'Shipment';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        VATClausesCap: Label 'VAT Clause';
        VATAmountLineVATCaptionLbl: Label 'VAT %';
        VATAmountLineVATBaseControl108CaptionLbl: Label 'VAT Base';
        VATAmountLineVATAmountControl109CaptionLbl: Label 'VAT Amount';
        VATAmountSpecificationCaptionLbl: Label 'VAT Amount Specification';
        VATAmountLineVATIdentifierCaptionLbl: Label 'VAT Identifier';
        VATAmountLineInvDiscBaseAmountControl141CaptionLbl: Label 'Inv. Disc. Base Amount';
        VATAmountLineLineAmountControl140CaptionLbl: Label 'Line Amount';
        VATAmountLineVATBaseControl116CaptionLbl: Label 'Total';
        PaymentTermsDescriptionCaptionLbl: Label 'Payment Terms';
        ShiptoAddressCaptionLbl: Label 'Ship-to Address';
        InvDiscountAmountCaptionLbl: Label 'Invoice Discount Amount';
        DisplayAdditionalFeeNote: Boolean;
        //UAE VAT Localization Start -->
        CurrencyFactor : Decimal;
        IsFCY : Boolean;
        //UAE VAT Localization Start <--

    procedure FindPostedShipmentDate(): Date
    var
        ServiceShipmentHeader: Record "Service Shipment Header";
        ServiceShipmentBuffer2: Record "Service Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        if "Service Invoice Line"."Shipment No." <> '' then
          if ServiceShipmentHeader.GET("Service Invoice Line"."Shipment No.") then
            exit(ServiceShipmentHeader."Posting Date");

        if "Service Invoice Header"."Order No." = '' then
          exit("Service Invoice Header"."Posting Date");

        case "Service Invoice Line".Type of
          "Service Invoice Line".Type::Item:
            GenerateBufferFromValueEntry("Service Invoice Line");
          "Service Invoice Line".Type::"G/L Account","Service Invoice Line".Type::Resource,
          "Service Invoice Line".Type::Cost:
            GenerateBufferFromShipment("Service Invoice Line");
          "Service Invoice Line".Type::" ":
            exit(0D);
        end;

        ServiceShipmentBuffer.RESET;
        ServiceShipmentBuffer.SETRANGE("Document No.","Service Invoice Line"."Document No.");
        ServiceShipmentBuffer.SETRANGE("Line No." ,"Service Invoice Line"."Line No.");
        if ServiceShipmentBuffer.FIND('-') then begin
          ServiceShipmentBuffer2 := ServiceShipmentBuffer;
          if ServiceShipmentBuffer.NEXT = 0 then begin
            ServiceShipmentBuffer.GET(
              ServiceShipmentBuffer2."Document No.",ServiceShipmentBuffer2."Line No.",ServiceShipmentBuffer2."Entry No.");
            ServiceShipmentBuffer.DELETE;
            exit(ServiceShipmentBuffer2."Posting Date");
          end ;
          ServiceShipmentBuffer.CALCSUMS(Quantity);
          if ServiceShipmentBuffer.Quantity <> "Service Invoice Line".Quantity then begin
            ServiceShipmentBuffer.DELETEALL;
            exit("Service Invoice Header"."Posting Date");
          end;
        end else
          exit("Service Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(ServiceInvoiceLine2: Record "Service Invoice Line")
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := ServiceInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.",ServiceInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date","Service Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.",'');
        ValueEntry.SETFILTER("Entry No.",'%1..',FirstValueEntryNo);
        if ValueEntry.FIND('-') then
          repeat
            if ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") then begin
              if ServiceInvoiceLine2."Qty. per Unit of Measure" <> 0 then
                Quantity := ValueEntry."Invoiced Quantity" / ServiceInvoiceLine2."Qty. per Unit of Measure"
              else
                Quantity := ValueEntry."Invoiced Quantity";
              AddBufferEntry(
                ServiceInvoiceLine2,
                -Quantity,
                ItemLedgerEntry."Posting Date");
              TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
            end;
            FirstValueEntryNo := ValueEntry."Entry No." + 1;
          until (ValueEntry.NEXT = 0) or (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(ServiceInvoiceLine: Record "Service Invoice Line")
    var
        ServiceInvoiceHeader: Record "Service Invoice Header";
        ServiceInvoiceLine2: Record "Service Invoice Line";
        ServiceShipmentHeader: Record "Service Shipment Header";
        ServiceShipmentLine: Record "Service Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        ServiceInvoiceHeader.SETCURRENTKEY("Order No.");
        ServiceInvoiceHeader.SETFILTER("No.",'..%1',"Service Invoice Header"."No.");
        ServiceInvoiceHeader.SETRANGE("Order No.","Service Invoice Header"."Order No.");
        if ServiceInvoiceHeader.FIND('-') then
          repeat
            ServiceInvoiceLine2.SETRANGE("Document No.",ServiceInvoiceHeader."No.");
            ServiceInvoiceLine2.SETRANGE("Line No.",ServiceInvoiceLine."Line No.");
            ServiceInvoiceLine2.SETRANGE(Type,ServiceInvoiceLine.Type);
            ServiceInvoiceLine2.SETRANGE("No.",ServiceInvoiceLine."No.");
            ServiceInvoiceLine2.SETRANGE("Unit of Measure Code",ServiceInvoiceLine."Unit of Measure Code");
            if ServiceInvoiceLine2.FIND('-') then
              repeat
                TotalQuantity := TotalQuantity + ServiceInvoiceLine2.Quantity;
              until ServiceInvoiceLine2.NEXT = 0;
          until ServiceInvoiceHeader.NEXT = 0;

        ServiceShipmentLine.SETCURRENTKEY("Order No.","Order Line No.");
        ServiceShipmentLine.SETRANGE("Order No.","Service Invoice Header"."Order No.");
        ServiceShipmentLine.SETRANGE("Order Line No.",ServiceInvoiceLine."Line No.");
        ServiceShipmentLine.SETRANGE("Line No.",ServiceInvoiceLine."Line No.");
        ServiceShipmentLine.SETRANGE(Type,ServiceInvoiceLine.Type);
        ServiceShipmentLine.SETRANGE("No.",ServiceInvoiceLine."No.");
        ServiceShipmentLine.SETRANGE("Unit of Measure Code",ServiceInvoiceLine."Unit of Measure Code");
        ServiceShipmentLine.SETFILTER(Quantity,'<>%1',0);

        if ServiceShipmentLine.FIND('-') then
          repeat
            if ABS(ServiceShipmentLine.Quantity) <= ABS(TotalQuantity - ServiceInvoiceLine.Quantity) then
              TotalQuantity := TotalQuantity - ServiceShipmentLine.Quantity
            else begin
              if ABS(ServiceShipmentLine.Quantity) > ABS(TotalQuantity) then
                ServiceShipmentLine.Quantity := TotalQuantity;
              Quantity :=
                ServiceShipmentLine.Quantity - (TotalQuantity - ServiceInvoiceLine.Quantity);

              TotalQuantity := TotalQuantity - ServiceShipmentLine.Quantity;
              ServiceInvoiceLine.Quantity := ServiceInvoiceLine.Quantity - Quantity;

              if ServiceShipmentHeader.GET(ServiceShipmentLine."Document No.") then
                AddBufferEntry(
                  ServiceInvoiceLine,
                  Quantity,
                  ServiceShipmentHeader."Posting Date");
            end;
          until (ServiceShipmentLine.NEXT = 0) or (TotalQuantity = 0);
    end;

    procedure AddBufferEntry(ServiceInvoiceLine: Record "Service Invoice Line";QtyOnShipment: Decimal;PostingDate: Date)
    begin
        ServiceShipmentBuffer.SETRANGE("Document No.",ServiceInvoiceLine."Document No.");
        ServiceShipmentBuffer.SETRANGE("Line No.",ServiceInvoiceLine."Line No.");
        ServiceShipmentBuffer.SETRANGE("Posting Date",PostingDate);
        if ServiceShipmentBuffer.FIND('-') then begin
          ServiceShipmentBuffer.Quantity := ServiceShipmentBuffer.Quantity + QtyOnShipment;
          ServiceShipmentBuffer.MODIFY;
          exit;
        end;

        with ServiceShipmentBuffer do begin
          "Document No." := ServiceInvoiceLine."Document No.";
          "Line No." := ServiceInvoiceLine."Line No.";
          "Entry No." := NextEntryNo;
          Type := ServiceInvoiceLine.Type;
          "No." := ServiceInvoiceLine."No.";
          Quantity := QtyOnShipment;
          "Posting Date" := PostingDate;
          INSERT;
          NextEntryNo := NextEntryNo + 1
        end;
    end;

    procedure FindDimTxt(DimSetID: Integer)
    var
        Separation: Text[5];
        i: Integer;
        TxtToAdd: Text[120];
        StartNewLine: Boolean;
    begin
        DimSetEntry.SETRANGE("Dimension Set ID",DimSetID);
        DimTxtArrLength := 0;
        for i := 1 to ARRAYLEN(DimTxtArr) do
          DimTxtArr[i] := '';
        if not DimSetEntry.FINDSET then
          exit;
        Separation := '; ';
        repeat
          TxtToAdd := DimSetEntry."Dimension Code" + ' - ' + DimSetEntry."Dimension Value Code";
          if DimTxtArrLength = 0 then
            StartNewLine := true
          else
            StartNewLine := STRLEN(DimTxtArr[DimTxtArrLength]) + STRLEN(Separation) + STRLEN(TxtToAdd) > MAXSTRLEN(DimTxtArr[1]);
          if StartNewLine then begin
            DimTxtArrLength += 1;
            DimTxtArr[DimTxtArrLength] := TxtToAdd
          end else
            DimTxtArr[DimTxtArrLength] := DimTxtArr[DimTxtArrLength] + Separation + TxtToAdd;
        until DimSetEntry.NEXT = 0;
    end;

    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo: Code[20])
    var
        LineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist.";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        Customer: Record Customer;
    begin
        TempLineFeeNoteOnReportHist.DELETEALL;
        CustLedgerEntry.SETRANGE("Document Type",CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SETRANGE("Document No.",SalesInvoiceHeaderNo);
        if not CustLedgerEntry.FINDFIRST then
          exit;

        if not Customer.GET("Service Invoice Header"."Bill-to Customer No.") then
          exit;

        LineFeeNoteOnReportHist.SETRANGE("Cust. Ledger Entry No",CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SETRANGE("Language Code",Customer."Language Code");
        if LineFeeNoteOnReportHist.FINDSET then begin
          repeat
            TempLineFeeNoteOnReportHist.INIT;
            TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
            TempLineFeeNoteOnReportHist.INSERT;
          until LineFeeNoteOnReportHist.NEXT = 0;
        end else begin
          LineFeeNoteOnReportHist.SETRANGE("Language Code",Language.GetUserLanguage);
          if LineFeeNoteOnReportHist.FINDSET then
            repeat
              TempLineFeeNoteOnReportHist.INIT;
              TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
              TempLineFeeNoteOnReportHist.INSERT;
            until LineFeeNoteOnReportHist.NEXT = 0;
        end;
    end;

    local procedure FormatAddressFields(var ServiceInvoiceHeader: Record "Service Invoice Header")
    begin
        FormatAddr.GetCompanyAddr(ServiceInvoiceHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.ServiceInvBillTo(CustAddr,ServiceInvoiceHeader);
        ShowShippingAddr := FormatAddr.ServiceInvShipTo(ShipToAddr,CustAddr,ServiceInvoiceHeader);
    end;

    local procedure FormatDocumentFields(ServiceInvoiceHeader: Record "Service Invoice Header")
    begin
        with ServiceInvoiceHeader do begin
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetSalesPerson(SalesPurchPerson,"Salesperson Code",SalesPersonText);
          FormatDocument.SetPaymentTerms(PaymentTerms,"Payment Terms Code","Language Code");

          OrderNoText := FormatDocument.SetText("Order No." <> '',FIELDCAPTION("Order No."));
          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
        end;
    end;
}

