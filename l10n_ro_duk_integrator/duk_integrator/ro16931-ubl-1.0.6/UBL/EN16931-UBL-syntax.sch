<!--

    Licensed under European Union Public Licence (EUPL) version 1.2.

-->
<!-- Data binding to UBL syntax for syntax -->
<!--Schematron version 1.3.8 - Last update: 2022-05-26 -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="syntax" id="UBL-syntax">
  <param name="UBL-SR-01" value="(count(cac:ContractDocumentReference/cbc:ID) &lt;= 1)" />
  <param name="UBL-SR-02" value="(count(cac:ReceiptDocumentReference/cbc:ID) &lt;= 1)" />
  <param name="UBL-SR-03" value="(count(cac:DespatchDocumentReference/cbc:ID) &lt;= 1)" />
  <param name="UBL-SR-04" value="(count(cac:AdditionalDocumentReference[cbc:DocumentTypeCode='130']/cbc:ID) &lt;= 1)" />
  <param name="UBL-SR-05" value="(count(cac:PaymentTerms/cbc:Note) &lt;= 1)" />
  <param name="UBL-SR-06" value="(count(cac:InvoiceDocumentReference) &lt;= 1)" />
  <param name="UBL-SR-07" value="(cac:InvoiceDocumentReference/cbc:ID)" />
  <param name="UBL-SR-08" value="(count(cac:InvoicePeriod) &lt;= 1)" />
  <param
    name="UBL-SR-09"
    value="(count(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName) &lt;= 1)"
  />
  <param name="UBL-SR-10" value="(count(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name) &lt;= 1)" />
  <param
    name="UBL-SR-11"
    value="(count(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID) &lt;= 1)"
  />
  <param
    name="UBL-SR-12"
    value="(count(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/upper-case(cbc:ID)='VAT']/cbc:CompanyID) &lt;= 1)"
  />
  <param
    name="UBL-SR-13"
    value="(count(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/upper-case(cbc:ID)!='VAT']/cbc:CompanyID) &lt;= 1)"
  />
  <param
    name="UBL-SR-14"
    value="(count(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalForm) &lt;= 1)"
  />
  <param
    name="UBL-SR-15"
    value="(count(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName) &lt;= 1)"
  />
  <param
    name="UBL-SR-16"
    value="(count(cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID) &lt;= 1)"
  />
  <param
    name="UBL-SR-17"
    value="(count(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID) &lt;= 1)"
  />
  <param
    name="UBL-SR-18"
    value="(count(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme[cac:TaxScheme/upper-case(cbc:ID)='VAT']/cbc:CompanyID) &lt;= 1)"
  />
  <param
    name="UBL-SR-19"
    value="(count(cac:PartyName/cbc:Name) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"
  />
  <param
    name="UBL-SR-20"
    value="(count(cac:PartyIdentification/cbc:ID[upper-case(@schemeID) != 'SEPA']) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"
  />
  <param
    name="UBL-SR-21"
    value="(count(cac:PartyLegalEntity/cbc:CompanyID) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"
  />
  <param name="UBL-SR-22" value="(count(cac:Party/cac:PartyName/cbc:Name) &lt;= 1)" />
  <param name="UBL-SR-23" value="(count(cac:Party/cac:PartyTaxScheme/cbc:CompanyID) &lt;= 1)" />
  <param name="UBL-SR-24" value="(count(cac:Delivery) &lt;= 1)" />
  <param name="UBL-SR-25" value="(count(cac:DeliveryParty/cac:PartyName/cbc:Name) &lt;= 1)" />
  <param name="UBL-SR-26" value="(count(cbc:PaymentID) &lt;= 1)" />
  <param name="UBL-SR-27" value="(count(cbc:PaymentMeansCode) &lt;= 1)" />
  <param name="UBL-SR-28" value="(count(cac:PaymentMandate/cbc:ID) &lt;= 1)" />
  <param name="UBL-SR-29" value="(count(//cac:PartyIdentification/cbc:ID[upper-case(@schemeID) = 'SEPA']) &lt;= 1)" />
  <param name="UBL-SR-30" value="(count(cbc:AllowanceChargeReason) &lt;= 1)" />
  <param name="UBL-SR-31" value="(count(cbc:AllowanceChargeReason) &lt;= 1)" />
  <param name="UBL-SR-32" value="(count(cac:TaxCategory/cbc:TaxExemptionReason) &lt;= 1)" />
  <param name="UBL-SR-33" value="(count(cbc:DocumentDescription) &lt;= 1)" />
  <param name="UBL-SR-34" value="(count(cbc:Note) &lt;= 1)" />
  <param name="UBL-SR-35" value="(count(cac:OrderLineReference/cbc:LineID) &lt;= 1)" />
  <param name="UBL-SR-36" value="(count(cac:InvoicePeriod) &lt;= 1)" />
  <param name="UBL-SR-37" value="(count(cac:Price/cac:AllowanceCharge/cbc:Amount) &lt;= 1)" />
  <param name="UBL-SR-39" value="(count(cac:ProjectReference/cbc:ID) &lt;= 1)" />
  <param name="UBL-SR-40" value="(count(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name) &lt;= 1)" />
  <param name="UBL-SR-42" value="(count(cac:PartyTaxScheme) &lt;= 2)" />
  <param
    name="UBL-SR-43"
    value="((cbc:DocumentTypeCode='130') or ((local-name(/*) = 'CreditNote') and (cbc:DocumentTypeCode='50')) or (not(cbc:ID/@scheme) and not(cbc:DocumentTypeCode)))"
  />
  <param name="UBL-SR-44" value="count(//cbc:PaymentID[not(preceding::cbc:PaymentID/. = .)]) &lt;= 1" />
  <param name="UBL-SR-45" value="(count(cac:PaymentMeans/cbc:PaymentDueDate) &lt;=1)" />
  <param name="UBL-SR-46" value="(count(cac:PaymentMeans/cbc:PaymentMeansCode/@name) &lt;=1)" />
  <param name="UBL-SR-47" value="count(//cbc:PaymentMeansCode[not(preceding::cbc:PaymentMeansCode/. = .)]) &lt;= 1" />
  <param name="UBL-SR-48" value="count(cac:Item/cac:ClassifiedTaxCategory) = 1" />
  <param name="UBL-SR-49" value="(count(cac:InvoicePeriod/cbc:DescriptionCode) &lt;=1)" />
  <param name="UBL-SR-50" value="count(cac:Item/cbc:Description) &lt;= 1" />
  <param name="UBL-DT-01" value="string-length(substring-after(.,'.'))&lt;=2" />
  <param name="UBL-DT-06" value="(@mimeCode)" />
  <param name="UBL-DT-07" value="(@filename)" />
  <param name="UBL-DT-08" value="not(//@schemeName)" />
  <param name="UBL-DT-09" value="not(//@schemeAgencyName)" />
  <param name="UBL-DT-10" value="not(//@schemeDataURI)" />
  <param name="UBL-DT-11" value="not(//@schemeURI)" />
  <param name="UBL-DT-12" value="not(//@format)" />
  <param name="UBL-DT-13" value="not(//@unitCodeListIdentifier)" />
  <param name="UBL-DT-14" value="not(//@unitCodeListAgencyIdentifier)" />
  <param name="UBL-DT-15" value="not(//@unitCodeListAgencyName)" />
  <param name="UBL-DT-16" value="not(//@listAgencyName)" />
  <param name="UBL-DT-17" value="not(//@listName)" />
  <param name="UBL-DT-18" value="count(//@name) - count(//cbc:PaymentMeansCode/@name) &lt;= 0" />
  <param name="UBL-DT-19" value="not(//@languageID)" />
  <param name="UBL-DT-20" value="not(//@listURI)" />
  <param name="UBL-DT-21" value="not(//@listSchemeURI)" />
  <param name="UBL-DT-22" value="not(//@languageLocaleID)" />
  <param name="UBL-DT-23" value="not(//@uri)" />
  <param name="UBL-DT-24" value="not(//@currencyCodeListVersionID)" />
  <param name="UBL-DT-25" value="not(//@characterSetCode)" />
  <param name="UBL-DT-26" value="not(//@encodingCode)" />
  <param name="UBL-DT-27" value="not(//@schemeAgencyID)" />
  <param name="UBL-DT-28" value="not(//@listAgencyID)" />
  <param name="UBL-CR-001" value="not(ext:UBLExtensions)" />
  <param name="UBL-CR-002" value="not(cbc:UBLVersionID) or cbc:UBLVersionID = '2.1'" />
  <param name="UBL-CR-003" value="not(cbc:ProfileExecutionID)" />
  <param name="UBL-CR-004" value="not(cbc:CopyIndicator)" />
  <param name="UBL-CR-005" value="not(cbc:UUID)" />
  <param name="UBL-CR-006" value="not(cbc:IssueTime)" />
  <param name="UBL-CR-007" value="not(cbc:PricingCurrencyCode)" />
  <param name="UBL-CR-008" value="not(cbc:PaymentCurrencyCode)" />
  <param name="UBL-CR-009" value="not(cbc:PaymentAlternativeCurrencyCode)" />
  <param name="UBL-CR-010" value="not(cbc:AccountingCostCode)" />
  <param name="UBL-CR-011" value="not(cbc:LineCountNumeric)" />
  <param name="UBL-CR-012" value="not(cac:InvoicePeriod/cbc:StartTime)" />
  <param name="UBL-CR-013" value="not(cac:InvoicePeriod/cbc:EndTime)" />
  <param name="UBL-CR-014" value="not(cac:InvoicePeriod/cbc:DurationMeasure)" />
  <param name="UBL-CR-015" value="not(cac:InvoicePeriod/cbc:Description)" />
  <param name="UBL-CR-016" value="not(cac:OrderReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-017" value="not(cac:OrderReference/cbc:UUID)" />
  <param name="UBL-CR-018" value="not(cac:OrderReference/cbc:IssueDate)" />
  <param name="UBL-CR-019" value="not(cac:OrderReference/cbc:IssueTime)" />
  <param name="UBL-CR-020" value="not(cac:OrderReference/cbc:CustomerReference)" />
  <param name="UBL-CR-021" value="not(cac:OrderReference/cbc:OrderTypeCode)" />
  <param name="UBL-CR-022" value="not(cac:OrderReference/cac:DocumentReference)" />
  <param name="UBL-CR-023" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-024" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:UUID)" />
  <param name="UBL-CR-025" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-026" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentTypeCode)" />
  <param name="UBL-CR-027" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-028" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:XPath)" />
  <param name="UBL-CR-029" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-030" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-031" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:VersionID)" />
  <param name="UBL-CR-032" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentStatusCode)" />
  <param name="UBL-CR-033" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cbc:DocumentDescription)" />
  <param name="UBL-CR-034" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cac:Attachment)" />
  <param name="UBL-CR-035" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-036" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cac:IssuerParty)" />
  <param name="UBL-CR-037" value="not(cac:BillingReference/cac:InvoiceDocumentReference/cac:ResultOfVerification)" />
  <param name="UBL-CR-038" value="not(cac:BillingReference/cac:SelfBilledInvoiceDocumentReference)" />
  <param name="UBL-CR-039" value="not(cac:BillingReference/cac:CreditNoteDocumentReference)" />
  <param name="UBL-CR-040" value="not(cac:BillingReference/cac:SelfBilledCreditNoteDocumentReference)" />
  <param name="UBL-CR-041" value="not(cac:BillingReference/cac:DebitNoteDocumentReference)" />
  <param name="UBL-CR-042" value="not(cac:BillingReference/cac:ReminderDocumentReference)" />
  <param name="UBL-CR-043" value="not(cac:BillingReference/cac:AdditionalDocumentReference)" />
  <param name="UBL-CR-044" value="not(cac:BillingReference/cac:BillingReferenceLine)" />
  <param name="UBL-CR-045" value="not(cac:DespatchDocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-046" value="not(cac:DespatchDocumentReference/cbc:UUID)" />
  <param name="UBL-CR-047" value="not(cac:DespatchDocumentReference/cbc:IssueDate)" />
  <param name="UBL-CR-048" value="not(cac:DespatchDocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-049" value="not(cac:DespatchDocumentReference/cbc:DocumentTypeCode)" />
  <param name="UBL-CR-050" value="not(cac:DespatchDocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-051" value="not(cac:DespatchDocumentReference/cbc:XPath)" />
  <param name="UBL-CR-052" value="not(cac:DespatchDocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-053" value="not(cac:DespatchDocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-054" value="not(cac:DespatchDocumentReference/cbc:VersionID)" />
  <param name="UBL-CR-055" value="not(cac:DespatchDocumentReference/cbc:DocumentStatusCode)" />
  <param name="UBL-CR-056" value="not(cac:DespatchDocumentReference/cbc:DocumentDescription)" />
  <param name="UBL-CR-057" value="not(cac:DespatchDocumentReference/cac:Attachment)" />
  <param name="UBL-CR-058" value="not(cac:DespatchDocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-059" value="not(cac:DespatchDocumentReference/cac:IssuerParty)" />
  <param name="UBL-CR-060" value="not(cac:DespatchDocumentReference/cac:ResultOfVerification)" />
  <param name="UBL-CR-061" value="not(cac:ReceiptDocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-062" value="not(cac:ReceiptDocumentReference/cbc:UUID)" />
  <param name="UBL-CR-063" value="not(cac:ReceiptDocumentReference/cbc:IssueDate)" />
  <param name="UBL-CR-064" value="not(cac:ReceiptDocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-065" value="not(cac:ReceiptDocumentReference/cbc:DocumentTypeCode)" />
  <param name="UBL-CR-066" value="not(cac:ReceiptDocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-067" value="not(cac:ReceiptDocumentReference/cbc:XPath)" />
  <param name="UBL-CR-068" value="not(cac:ReceiptDocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-069" value="not(cac:ReceiptDocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-070" value="not(cac:ReceiptDocumentReference/cbc:VersionID)" />
  <param name="UBL-CR-071" value="not(cac:ReceiptDocumentReference/cbc:DocumentStatusCode)" />
  <param name="UBL-CR-072" value="not(cac:ReceiptDocumentReference/cbc:DocumentDescription)" />
  <param name="UBL-CR-073" value="not(cac:ReceiptDocumentReference/cac:Attachment)" />
  <param name="UBL-CR-074" value="not(cac:ReceiptDocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-075" value="not(cac:ReceiptDocumentReference/cac:IssuerParty)" />
  <param name="UBL-CR-076" value="not(cac:ReceiptDocumentReference/cac:ResultOfVerification)" />
  <param name="UBL-CR-077" value="not(cac:StatementDocumentReference)" />
  <param name="UBL-CR-078" value="not(cac:OriginatorDocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-079" value="not(cac:OriginatorDocumentReference/cbc:UUID)" />
  <param name="UBL-CR-080" value="not(cac:OriginatorDocumentReference/cbc:IssueDate)" />
  <param name="UBL-CR-081" value="not(cac:OriginatorDocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-082" value="not(cac:OriginatorDocumentReference/cbc:DocumentTypeCode)" />
  <param name="UBL-CR-083" value="not(cac:OriginatorDocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-084" value="not(cac:OriginatorDocumentReference/cbc:XPath)" />
  <param name="UBL-CR-085" value="not(cac:OriginatorDocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-086" value="not(cac:OriginatorDocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-087" value="not(cac:OriginatorDocumentReference/cbc:VersionID)" />
  <param name="UBL-CR-088" value="not(cac:OriginatorDocumentReference/cbc:DocumentStatusCode)" />
  <param name="UBL-CR-089" value="not(cac:OriginatorDocumentReference/cbc:DocumentDescription)" />
  <param name="UBL-CR-090" value="not(cac:OriginatorDocumentReference/cac:Attachment)" />
  <param name="UBL-CR-091" value="not(cac:OriginatorDocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-092" value="not(cac:OriginatorDocumentReference/cac:IssuerParty)" />
  <param name="UBL-CR-093" value="not(cac:OriginatorDocumentReference/cac:ResultOfVerification)" />
  <param name="UBL-CR-094" value="not(cac:ContractDocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-095" value="not(cac:ContractDocumentReference/cbc:UUID)" />
  <param name="UBL-CR-096" value="not(cac:ContractDocumentReference/cbc:IssueDate)" />
  <param name="UBL-CR-097" value="not(cac:ContractDocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-098" value="not(cac:ContractDocumentReference/cbc:DocumentTypeCode)" />
  <param name="UBL-CR-099" value="not(cac:ContractDocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-100" value="not(cac:ContractDocumentReference/cbc:XPath)" />
  <param name="UBL-CR-101" value="not(cac:ContractDocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-102" value="not(cac:ContractDocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-103" value="not(cac:ContractDocumentReference/cbc:VersionID)" />
  <param name="UBL-CR-104" value="not(cac:ContractDocumentReference/cbc:DocumentStatusCode)" />
  <param name="UBL-CR-105" value="not(cac:ContractDocumentReference/cbc:DocumentDescription)" />
  <param name="UBL-CR-106" value="not(cac:ContractDocumentReference/cac:Attachment)" />
  <param name="UBL-CR-107" value="not(cac:ContractDocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-108" value="not(cac:ContractDocumentReference/cac:IssuerParty)" />
  <param name="UBL-CR-109" value="not(cac:ContractDocumentReference/cac:ResultOfVerification)" />
  <param name="UBL-CR-110" value="not(cac:AdditionalDocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-111" value="not(cac:AdditionalDocumentReference/cbc:UUID)" />
  <param name="UBL-CR-112" value="not(cac:AdditionalDocumentReference/cbc:IssueDate)" />
  <param name="UBL-CR-113" value="not(cac:AdditionalDocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-114" value="not(cac:AdditionalDocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-115" value="not(cac:AdditionalDocumentReference/cbc:XPath)" />
  <param name="UBL-CR-116" value="not(cac:AdditionalDocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-117" value="not(cac:AdditionalDocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-118" value="not(cac:AdditionalDocumentReference/cbc:VersionID)" />
  <param name="UBL-CR-119" value="not(cac:AdditionalDocumentReference/cbc:DocumentStatusCode)" />
  <param
    name="UBL-CR-121"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:DocumentHash)"
  />
  <param
    name="UBL-CR-122"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:HashAlgorithmMethod)"
  />
  <param
    name="UBL-CR-123"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:ExpiryDate)"
  />
  <param
    name="UBL-CR-124"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:ExpiryTime)"
  />
  <param
    name="UBL-CR-125"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:MimeCode)"
  />
  <param
    name="UBL-CR-126"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:FormatCode)"
  />
  <param
    name="UBL-CR-127"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:EncodingCode)"
  />
  <param
    name="UBL-CR-128"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:CharacterSetCode)"
  />
  <param
    name="UBL-CR-129"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:FileName)"
  />
  <param
    name="UBL-CR-130"
    value="not(cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:Description)"
  />
  <param name="UBL-CR-131" value="not(cac:AdditionalDocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-132" value="not(cac:AdditionalDocumentReference/cac:IssuerParty)" />
  <param name="UBL-CR-133" value="not(cac:AdditionalDocumentReference/cac:ResultOfVerification)" />
  <param name="UBL-CR-134" value="not(cac:ProjectReference/cbc:UUID)" />
  <param name="UBL-CR-135" value="not(cac:ProjectReference/cbc:IssueDate)" />
  <param name="UBL-CR-136" value="not(cac:ProjectReference/cac:WorkPhaseReference)" />
  <param name="UBL-CR-137" value="not(cac:Signature)" />
  <param name="UBL-CR-138" value="not(cac:AccountingSupplierParty/cbc:CustomerAssignedAccountID)" />
  <param name="UBL-CR-139" value="not(cac:AccountingSupplierParty/cbc:AdditionalAccountID)" />
  <param name="UBL-CR-140" value="not(cac:AccountingSupplierParty/cbc:DataSendingCapability)" />
  <param name="UBL-CR-141" value="not(cac:AccountingSupplierParty/cac:Party/cbc:MarkCareIndicator)" />
  <param name="UBL-CR-142" value="not(cac:AccountingSupplierParty/cac:Party/cbc:MarkAttentionIndicator)" />
  <param name="UBL-CR-143" value="not(cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI)" />
  <param name="UBL-CR-144" value="not(cac:AccountingSupplierParty/cac:Party/cbc:LogoReferenceID)" />
  <param name="UBL-CR-145" value="not(cac:AccountingSupplierParty/cac:Party/cbc:IndustryClassificationCode)" />
  <param name="UBL-CR-146" value="not(cac:AccountingSupplierParty/cac:Party/cac:Language)" />
  <param name="UBL-CR-147" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:ID)" />
  <param name="UBL-CR-148" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:AddressTypeCode)" />
  <param name="UBL-CR-149" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:AddressFormatCode)" />
  <param name="UBL-CR-150" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Postbox)" />
  <param name="UBL-CR-151" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Floor)" />
  <param name="UBL-CR-152" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Room)" />
  <param name="UBL-CR-153" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BlockName)" />
  <param name="UBL-CR-154" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingName)" />
  <param name="UBL-CR-155" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber)" />
  <param name="UBL-CR-156" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:InhouseMail)" />
  <param name="UBL-CR-157" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Department)" />
  <param name="UBL-CR-158" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:MarkAttention)" />
  <param name="UBL-CR-159" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:MarkCare)" />
  <param
    name="UBL-CR-160"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PlotIdentification)"
  />
  <param
    name="UBL-CR-161"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName)"
  />
  <param
    name="UBL-CR-162"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode)"
  />
  <param name="UBL-CR-163" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:Region)" />
  <param name="UBL-CR-164" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:District)" />
  <param name="UBL-CR-165" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:TimezoneOffset)" />
  <param name="UBL-CR-166" value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:Name)" />
  <param
    name="UBL-CR-167"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cac:LocationCoordinate)"
  />
  <param name="UBL-CR-168" value="not(cac:AccountingSupplierParty/cac:Party/cac:PhysicalLocation)" />
  <param name="UBL-CR-169" value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:RegistrationName)" />
  <param name="UBL-CR-170" value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:TaxLevelCode)" />
  <param
    name="UBL-CR-171"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReasonCode)"
  />
  <param name="UBL-CR-172" value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReason)" />
  <param
    name="UBL-CR-173"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:RegistrationAddress)"
  />
  <param
    name="UBL-CR-174"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name)"
  />
  <param
    name="UBL-CR-175"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:TaxTypeCode)"
  />
  <param
    name="UBL-CR-176"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:CurrencyCode)"
  />
  <param
    name="UBL-CR-177"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cac:JurisdictionRegionAddress)"
  />
  <param
    name="UBL-CR-178"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationDate)"
  />
  <param
    name="UBL-CR-179"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationExpirationDate)"
  />
  <param
    name="UBL-CR-180"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalFormCode)"
  />
  <param
    name="UBL-CR-181"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator)"
  />
  <param
    name="UBL-CR-182"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode)"
  />
  <param
    name="UBL-CR-183"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CorporateStockAmount)"
  />
  <param
    name="UBL-CR-184"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator)"
  />
  <param
    name="UBL-CR-185"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress)"
  />
  <param
    name="UBL-CR-186"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme)"
  />
  <param
    name="UBL-CR-187"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:HeadOfficeParty)"
  />
  <param
    name="UBL-CR-188"
    value="not(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cac:ShareholderParty)"
  />
  <param name="UBL-CR-189" value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ID)" />
  <param name="UBL-CR-190" value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax)" />
  <param name="UBL-CR-191" value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Note)" />
  <param name="UBL-CR-192" value="not(cac:AccountingSupplierParty/cac:Party/cac:Contact/cac:OtherCommunication)" />
  <param name="UBL-CR-193" value="not(cac:AccountingSupplierParty/cac:Party/cac:Person)" />
  <param name="UBL-CR-194" value="not(cac:AccountingSupplierParty/cac:Party/cac:AgentParty)" />
  <param name="UBL-CR-195" value="not(cac:AccountingSupplierParty/cac:Party/cac:ServiceProviderParty)" />
  <param name="UBL-CR-196" value="not(cac:AccountingSupplierParty/cac:Party/cac:PowerOfAttorney)" />
  <param name="UBL-CR-197" value="not(cac:AccountingSupplierParty/cac:Party/cac:FinancialAccount)" />
  <param name="UBL-CR-198" value="not(cac:AccountingSupplierParty/cac:DespatchContact)" />
  <param name="UBL-CR-199" value="not(cac:AccountingSupplierParty/cac:AccountingContact)" />
  <param name="UBL-CR-200" value="not(cac:AccountingSupplierParty/cac:SellerContact)" />
  <param name="UBL-CR-201" value="not(cac:AccountingCustomerParty/cbc:CustomerAssignedAccountID)" />
  <param name="UBL-CR-202" value="not(cac:AccountingCustomerParty/cbc:SupplierAssignedAccountID)" />
  <param name="UBL-CR-203" value="not(cac:AccountingCustomerParty/cbc:AdditionalAccountID)" />
  <param name="UBL-CR-204" value="not(cac:AccountingCustomerParty/cac:Party/cbc:MarkCareIndicator)" />
  <param name="UBL-CR-205" value="not(cac:AccountingCustomerParty/cac:Party/cbc:MarkAttentionIndicator)" />
  <param name="UBL-CR-206" value="not(cac:AccountingCustomerParty/cac:Party/cbc:WebsiteURI)" />
  <param name="UBL-CR-207" value="not(cac:AccountingCustomerParty/cac:Party/cbc:LogoReferenceID)" />
  <param name="UBL-CR-208" value="not(cac:AccountingCustomerParty/cac:Party/cbc:IndustryClassificationCode)" />
  <param name="UBL-CR-209" value="not(cac:AccountingCustomerParty/cac:Party/cac:Language)" />
  <param name="UBL-CR-210" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:ID)" />
  <param name="UBL-CR-211" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:AddressTypeCode)" />
  <param name="UBL-CR-212" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:AddressFormatCode)" />
  <param name="UBL-CR-213" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Postbox)" />
  <param name="UBL-CR-214" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Floor)" />
  <param name="UBL-CR-215" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Room)" />
  <param name="UBL-CR-216" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BlockName)" />
  <param name="UBL-CR-217" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName)" />
  <param name="UBL-CR-218" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber)" />
  <param name="UBL-CR-219" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:InhouseMail)" />
  <param name="UBL-CR-220" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Department)" />
  <param name="UBL-CR-221" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:MarkAttention)" />
  <param name="UBL-CR-222" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:MarkCare)" />
  <param
    name="UBL-CR-223"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PlotIdentification)"
  />
  <param
    name="UBL-CR-224"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName)"
  />
  <param
    name="UBL-CR-225"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode)"
  />
  <param name="UBL-CR-226" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Region)" />
  <param name="UBL-CR-227" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:District)" />
  <param name="UBL-CR-228" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:TimezoneOffset)" />
  <param name="UBL-CR-229" value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:Name)" />
  <param
    name="UBL-CR-230"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:LocationCoordinate)"
  />
  <param name="UBL-CR-231" value="not(cac:AccountingCustomerParty/cac:Party/cac:PhysicalLocation)" />
  <param name="UBL-CR-232" value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:RegistrationName)" />
  <param name="UBL-CR-233" value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:TaxLevelCode)" />
  <param
    name="UBL-CR-234"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReasonCode)"
  />
  <param name="UBL-CR-235" value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:ExemptionReason)" />
  <param
    name="UBL-CR-236"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:RegistrationAddress)"
  />
  <param
    name="UBL-CR-237"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name)"
  />
  <param
    name="UBL-CR-238"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:TaxTypeCode)"
  />
  <param
    name="UBL-CR-239"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:CurrencyCode)"
  />
  <param
    name="UBL-CR-240"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cac:JurisdictionRegionAddress)"
  />
  <param
    name="UBL-CR-241"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationDate)"
  />
  <param
    name="UBL-CR-242"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationExpirationDate)"
  />
  <param
    name="UBL-CR-243"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalFormCode)"
  />
  <param
    name="UBL-CR-244"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalForm)"
  />
  <param
    name="UBL-CR-245"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator)"
  />
  <param
    name="UBL-CR-246"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode)"
  />
  <param
    name="UBL-CR-247"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CorporateStockAmount)"
  />
  <param
    name="UBL-CR-248"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator)"
  />
  <param
    name="UBL-CR-249"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress)"
  />
  <param
    name="UBL-CR-250"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme)"
  />
  <param
    name="UBL-CR-251"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:HeadOfficeParty)"
  />
  <param
    name="UBL-CR-252"
    value="not(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cac:ShareholderParty)"
  />
  <param name="UBL-CR-253" value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ID)" />
  <param name="UBL-CR-254" value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telefax)" />
  <param name="UBL-CR-255" value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Note)" />
  <param name="UBL-CR-256" value="not(cac:AccountingCustomerParty/cac:Party/cac:Contact/cac:OtherCommunication)" />
  <param name="UBL-CR-257" value="not(cac:AccountingCustomerParty/cac:Party/cac:Person)" />
  <param name="UBL-CR-258" value="not(cac:AccountingCustomerParty/cac:Party/cac:AgentParty)" />
  <param name="UBL-CR-259" value="not(cac:AccountingCustomerParty/cac:Party/cac:ServiceProviderParty)" />
  <param name="UBL-CR-260" value="not(cac:AccountingCustomerParty/cac:Party/cac:PowerOfAttorney)" />
  <param name="UBL-CR-261" value="not(cac:AccountingCustomerParty/cac:Party/cac:FinancialAccount)" />
  <param name="UBL-CR-262" value="not(cac:AccountingCustomerParty/cac:DeliveryContact)" />
  <param name="UBL-CR-263" value="not(cac:AccountingCustomerParty/cac:AccountingContact)" />
  <param name="UBL-CR-264" value="not(cac:AccountingCustomerParty/cac:BuyerContact)" />
  <param name="UBL-CR-265" value="not(cac:PayeeParty/cbc:MarkCareIndicator)" />
  <param name="UBL-CR-266" value="not(cac:PayeeParty/cbc:MarkAttentionIndicator)" />
  <param name="UBL-CR-267" value="not(cac:PayeeParty/cbc:WebsiteURI)" />
  <param name="UBL-CR-268" value="not(cac:PayeeParty/cbc:LogoReferenceID)" />
  <param name="UBL-CR-269" value="not(cac:PayeeParty/cbc:EndpointID)" />
  <param name="UBL-CR-270" value="not(cac:PayeeParty/cbc:IndustryClassificationCode)" />
  <param name="UBL-CR-271" value="not(cac:PayeeParty/cac:Language)" />
  <param name="UBL-CR-272" value="not(cac:PayeeParty/cac:PostalAddress)" />
  <param name="UBL-CR-273" value="not(cac:PayeeParty/cac:PhysicalLocation)" />
  <param name="UBL-CR-274" value="not(cac:PayeeParty/cac:PartyTaxScheme)" />
  <param name="UBL-CR-275" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:RegistrationName)" />
  <param name="UBL-CR-276" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:RegistrationDate)" />
  <param name="UBL-CR-277" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:RegistrationExpirationDate)" />
  <param name="UBL-CR-278" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:CompanyLegalFormCode)" />
  <param name="UBL-CR-279" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:CompanyLegalForm)" />
  <param name="UBL-CR-280" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator)" />
  <param name="UBL-CR-281" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode)" />
  <param name="UBL-CR-282" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:CorporateStockAmount)" />
  <param name="UBL-CR-283" value="not(cac:PayeeParty/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator)" />
  <param name="UBL-CR-284" value="not(cac:PayeeParty/cac:PartyLegalEntity/cac:RegistrationAddress)" />
  <param name="UBL-CR-285" value="not(cac:PayeeParty/cac:PartyLegalEntity/cac:CorporateRegistrationScheme)" />
  <param name="UBL-CR-286" value="not(cac:PayeeParty/cac:PartyLegalEntity/cac:HeadOfficeParty)" />
  <param name="UBL-CR-287" value="not(cac:PayeeParty/cac:PartyLegalEntity/cac:ShareholderParty)" />
  <param name="UBL-CR-288" value="not(cac:PayeeParty/cac:Contact)" />
  <param name="UBL-CR-289" value="not(cac:PayeeParty/cac:Person)" />
  <param name="UBL-CR-290" value="not(cac:PayeeParty/cac:AgentParty)" />
  <param name="UBL-CR-291" value="not(cac:PayeeParty/cac:ServiceProviderParty)" />
  <param name="UBL-CR-292" value="not(cac:PayeeParty/cac:PowerOfAttorney)" />
  <param name="UBL-CR-293" value="not(cac:PayeeParty/cac:FinancialAccount)" />
  <param name="UBL-CR-294" value="not(cac:BuyerCustomerParty)" />
  <param name="UBL-CR-295" value="not(cac:SellerSupplierParty)" />
  <param name="UBL-CR-296" value="not(cac:TaxRepresentativeParty/cbc:MarkCareIndicator)" />
  <param name="UBL-CR-297" value="not(cac:TaxRepresentativeParty/cbc:MarkAttentionIndicator)" />
  <param name="UBL-CR-298" value="not(cac:TaxRepresentativeParty/cbc:WebsiteURI)" />
  <param name="UBL-CR-299" value="not(cac:TaxRepresentativeParty/cbc:LogoReferenceID)" />
  <param name="UBL-CR-300" value="not(cac:TaxRepresentativeParty/cbc:EndpointID)" />
  <param name="UBL-CR-301" value="not(cac:TaxRepresentativeParty/cbc:IndustryClassificationCode)" />
  <param name="UBL-CR-302" value="not(cac:TaxRepresentativeParty/cac:PartyIdentification)" />
  <param name="UBL-CR-303" value="not(cac:TaxRepresentativeParty/cac:Language)" />
  <param name="UBL-CR-304" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:ID)" />
  <param name="UBL-CR-305" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:AddressTypeCode)" />
  <param name="UBL-CR-306" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:AddressFormatCode)" />
  <param name="UBL-CR-307" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:Postbox)" />
  <param name="UBL-CR-308" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:Floor)" />
  <param name="UBL-CR-309" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:Room)" />
  <param name="UBL-CR-310" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:BlockName)" />
  <param name="UBL-CR-311" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:BuildingName)" />
  <param name="UBL-CR-312" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:BuildingNumber)" />
  <param name="UBL-CR-313" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:InhouseMail)" />
  <param name="UBL-CR-314" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:Department)" />
  <param name="UBL-CR-315" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:MarkAttention)" />
  <param name="UBL-CR-316" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:MarkCare)" />
  <param name="UBL-CR-317" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:PlotIdentification)" />
  <param name="UBL-CR-318" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:CitySubdivisionName)" />
  <param name="UBL-CR-319" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:CountrySubentityCode)" />
  <param name="UBL-CR-320" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:Region)" />
  <param name="UBL-CR-321" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:District)" />
  <param name="UBL-CR-322" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cbc:TimezoneOffset)" />
  <param name="UBL-CR-323" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cac:Country/cbc:Name)" />
  <param name="UBL-CR-324" value="not(cac:TaxRepresentativeParty/cac:PostalAddress/cac:LocationCoordinate)" />
  <param name="UBL-CR-325" value="not(cac:TaxRepresentativeParty/cac:PhysicalLocation)" />
  <param name="UBL-CR-326" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:RegistrationName)" />
  <param name="UBL-CR-327" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:TaxLevelCode)" />
  <param name="UBL-CR-328" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:ExemptionReasonCode)" />
  <param name="UBL-CR-329" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:ExemptionReason)" />
  <param name="UBL-CR-330" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cac:RegistrationAddress)" />
  <param name="UBL-CR-331" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name)" />
  <param name="UBL-CR-332" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cac:TaxScheme/cbc:TaxTypeCode)" />
  <param name="UBL-CR-333" value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cac:TaxScheme/cbc:CurrencyCode)" />
  <param
    name="UBL-CR-334"
    value="not(cac:TaxRepresentativeParty/cac:PartyTaxScheme/cac:TaxScheme/cac:JurisdictionRegionAddress)"
  />
  <param name="UBL-CR-335" value="not(cac:TaxRepresentativeParty/cac:PartyLegalEntity)" />
  <param name="UBL-CR-336" value="not(cac:TaxRepresentativeParty/cac:Contact)" />
  <param name="UBL-CR-337" value="not(cac:TaxRepresentativeParty/cac:Person)" />
  <param name="UBL-CR-338" value="not(cac:TaxRepresentativeParty/cac:AgentParty)" />
  <param name="UBL-CR-339" value="not(cac:TaxRepresentativeParty/cac:ServiceProviderParty)" />
  <param name="UBL-CR-340" value="not(cac:TaxRepresentativeParty/cac:PowerOfAttorney)" />
  <param name="UBL-CR-341" value="not(cac:TaxRepresentativeParty/cac:FinancialAccount)" />
  <param name="UBL-CR-342" value="not(cac:Delivery/cbc:ID)" />
  <param name="UBL-CR-343" value="not(cac:Delivery/cbc:Quantity)" />
  <param name="UBL-CR-344" value="not(cac:Delivery/cbc:MinimumQuantity)" />
  <param name="UBL-CR-345" value="not(cac:Delivery/cbc:MaximumQuantity)" />
  <param name="UBL-CR-346" value="not(cac:Delivery/cbc:ActualDeliveryTime)" />
  <param name="UBL-CR-347" value="not(cac:Delivery/cbc:LatestDeliveryDate)" />
  <param name="UBL-CR-348" value="not(cac:Delivery/cbc:LatestDeliveryTime)" />
  <param name="UBL-CR-349" value="not(cac:Delivery/cbc:ReleaseID)" />
  <param name="UBL-CR-350" value="not(cac:Delivery/cbc:TrackingID)" />
  <param name="UBL-CR-351" value="not(cac:Delivery/cac:DeliveryLocation/cbc:Description)" />
  <param name="UBL-CR-352" value="not(cac:Delivery/cac:DeliveryLocation/cbc:Conditions)" />
  <param name="UBL-CR-353" value="not(cac:Delivery/cac:DeliveryLocation/cbc:CountrySubentity)" />
  <param name="UBL-CR-354" value="not(cac:Delivery/cac:DeliveryLocation/cbc:CountrySubentityCode)" />
  <param name="UBL-CR-355" value="not(cac:Delivery/cac:DeliveryLocation/cbc:LocationTypeCode)" />
  <param name="UBL-CR-356" value="not(cac:Delivery/cac:DeliveryLocation/cbc:InformationURI)" />
  <param name="UBL-CR-357" value="not(cac:Delivery/cac:DeliveryLocation/cbc:Name)" />
  <param name="UBL-CR-358" value="not(cac:Delivery/cac:DeliveryLocation/cac:ValidityPeriod)" />
  <param name="UBL-CR-359" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:ID)" />
  <param name="UBL-CR-360" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:AddressTypeCode)" />
  <param name="UBL-CR-361" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:AddressFormatCode)" />
  <param name="UBL-CR-362" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Postbox)" />
  <param name="UBL-CR-363" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Floor)" />
  <param name="UBL-CR-364" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Room)" />
  <param name="UBL-CR-365" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:BlockName)" />
  <param name="UBL-CR-366" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:BuildingName)" />
  <param name="UBL-CR-367" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:BuildingNumber)" />
  <param name="UBL-CR-368" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:InhouseMail)" />
  <param name="UBL-CR-369" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Department)" />
  <param name="UBL-CR-370" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:MarkAttention)" />
  <param name="UBL-CR-371" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:MarkCare)" />
  <param name="UBL-CR-372" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:PlotIdentification)" />
  <param name="UBL-CR-373" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:CitySubdivisionName)" />
  <param name="UBL-CR-374" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:CountrySubentityCode)" />
  <param name="UBL-CR-375" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:Region)" />
  <param name="UBL-CR-376" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:District)" />
  <param name="UBL-CR-377" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cbc:TimezoneOffset)" />
  <param name="UBL-CR-378" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cac:Country/cbc:Name)" />
  <param name="UBL-CR-379" value="not(cac:Delivery/cac:DeliveryLocation/cac:Address/cac:LocationCoordinate)" />
  <param name="UBL-CR-380" value="not(cac:Delivery/cac:DeliveryLocation/cac:SubsidiaryLocation)" />
  <param name="UBL-CR-381" value="not(cac:Delivery/cac:DeliveryLocation/cac:LocationCoordinate)" />
  <param name="UBL-CR-382" value="not(cac:Delivery/cac:AlternativeDeliveryLocation)" />
  <param name="UBL-CR-383" value="not(cac:Delivery/cac:RequestedDeliveryPeriod)" />
  <param name="UBL-CR-384" value="not(cac:Delivery/cac:EstimatedDeliveryPeriod)" />
  <param name="UBL-CR-385" value="not(cac:Delivery/cac:CarrierParty)" />
  <param name="UBL-CR-386" value="not(cac:Delivery/cac:DeliveryParty/cbc:MarkCareIndicator)" />
  <param name="UBL-CR-387" value="not(cac:Delivery/cac:DeliveryParty/cbc:MarkAttentionIndicator)" />
  <param name="UBL-CR-388" value="not(cac:Delivery/cac:DeliveryParty/cbc:WebsiteURI)" />
  <param name="UBL-CR-389" value="not(cac:Delivery/cac:DeliveryParty/cbc:LogoReferenceID)" />
  <param name="UBL-CR-390" value="not(cac:Delivery/cac:DeliveryParty/cbc:EndpointID)" />
  <param name="UBL-CR-391" value="not(cac:Delivery/cac:DeliveryParty/cbc:IndustryClassificationCode)" />
  <param name="UBL-CR-392" value="not(cac:Delivery/cac:DeliveryParty/cac:PartyIdentification)" />
  <param name="UBL-CR-393" value="not(cac:Delivery/cac:DeliveryParty/cac:Language)" />
  <param name="UBL-CR-394" value="not(cac:Delivery/cac:DeliveryParty/cac:PostalAddress)" />
  <param name="UBL-CR-395" value="not(cac:Delivery/cac:DeliveryParty/cac:PhysicalLocation)" />
  <param name="UBL-CR-396" value="not(cac:Delivery/cac:DeliveryParty/cac:PartyTaxScheme)" />
  <param name="UBL-CR-397" value="not(cac:Delivery/cac:DeliveryParty/cac:PartyLegalEntity)" />
  <param name="UBL-CR-398" value="not(cac:Delivery/cac:DeliveryParty/cac:Contact)" />
  <param name="UBL-CR-399" value="not(cac:Delivery/cac:DeliveryParty/cac:Person)" />
  <param name="UBL-CR-400" value="not(cac:Delivery/cac:DeliveryParty/cac:AgentParty)" />
  <param name="UBL-CR-401" value="not(cac:Delivery/cac:DeliveryParty/cac:ServiceProviderParty)" />
  <param name="UBL-CR-402" value="not(cac:Delivery/cac:DeliveryParty/cac:PowerOfAttorney)" />
  <param name="UBL-CR-403" value="not(cac:Delivery/cac:DeliveryParty/cac:FinancialAccount)" />
  <param name="UBL-CR-404" value="not(cac:Delivery/cac:NotifyParty)" />
  <param name="UBL-CR-405" value="not(cac:Delivery/cac:Despatch)" />
  <param name="UBL-CR-406" value="not(cac:Delivery/cac:DeliveryTerms)" />
  <param name="UBL-CR-407" value="not(cac:Delivery/cac:MinimumDeliveryUnit)" />
  <param name="UBL-CR-408" value="not(cac:Delivery/cac:MaximumDeliveryUnit)" />
  <param name="UBL-CR-409" value="not(cac:Delivery/cac:Shipment)" />
  <param name="UBL-CR-410" value="not(cac:DeliveryTerms)" />
  <param name="UBL-CR-411" value="not(cac:PaymentMeans/cbc:ID)" />
  <param name="UBL-CR-412" value="not(cac:PaymentMeans/cbc:PaymentDueDate) or ../cn:CreditNote" />
  <param name="UBL-CR-413" value="not(cac:PaymentMeans/cbc:PaymentChannelCode)" />
  <param name="UBL-CR-414" value="not(cac:PaymentMeans/cbc:InstructionNote)" />
  <param name="UBL-CR-415" value="not(cac:PaymentMeans/cac:CardAccount/cbc:CardTypeCode)" />
  <param name="UBL-CR-416" value="not(cac:PaymentMeans/cac:CardAccount/cbc:ValidityStartDate)" />
  <param name="UBL-CR-417" value="not(cac:PaymentMeans/cac:CardAccount/cbc:ExpiryDate)" />
  <param name="UBL-CR-418" value="not(cac:PaymentMeans/cac:CardAccount/cbc:IssuerID)" />
  <param name="UBL-CR-419" value="not(cac:PaymentMeans/cac:CardAccount/cbc:IssueNumberID)" />
  <param name="UBL-CR-420" value="not(cac:PaymentMeans/cac:CardAccount/cbc:CV2ID)" />
  <param name="UBL-CR-421" value="not(cac:PaymentMeans/cac:CardAccount/cbc:CardChipCode)" />
  <param name="UBL-CR-422" value="not(cac:PaymentMeans/cac:CardAccount/cbc:ChipApplicationID)" />
  <param name="UBL-CR-424" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:AliasName)" />
  <param name="UBL-CR-425" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:AccountTypeCode)" />
  <param name="UBL-CR-426" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:AccountFormatCode)" />
  <param name="UBL-CR-427" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode)" />
  <param name="UBL-CR-428" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote)" />
  <param
    name="UBL-CR-429"
    value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:Name)"
  />
  <param
    name="UBL-CR-430"
    value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:Name)"
  />
  <param
    name="UBL-CR-431"
    value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cac:Address)"
  />
  <param
    name="UBL-CR-432"
    value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:Address)"
  />
  <param name="UBL-CR-433" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:Country)" />
  <param name="UBL-CR-434" value="not(cac:PaymentMeans/cac:CreditAccount)" />
  <param name="UBL-CR-435" value="not(cac:PaymentMeans/cac:PaymentMandate/cbc:MandateTypeCode)" />
  <param name="UBL-CR-436" value="not(cac:PaymentMeans/cac:PaymentMandate/cbc:MaximumPaymentInstructionsNumeric)" />
  <param name="UBL-CR-437" value="not(cac:PaymentMeans/cac:PaymentMandate/cbc:MaximumPaidAmount)" />
  <param name="UBL-CR-438" value="not(cac:PaymentMeans/cac:PaymentMandate/cbc:SignatureID)" />
  <param name="UBL-CR-439" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerParty)" />
  <param name="UBL-CR-440" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cbc:Name)" />
  <param name="UBL-CR-441" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cbc:AliasName)" />
  <param
    name="UBL-CR-442"
    value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cbc:AccountTypeCode)"
  />
  <param
    name="UBL-CR-443"
    value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cbc:AccountFormatCode)"
  />
  <param
    name="UBL-CR-444"
    value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cbc:CurrencyCode)"
  />
  <param name="UBL-CR-445" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cbc:PaymentNote)" />
  <param
    name="UBL-CR-446"
    value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cac:FinancialInstitutionBranch)"
  />
  <param name="UBL-CR-447" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PayerFinancialAccount/cac:Country)" />
  <param name="UBL-CR-448" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:ValidityPeriod)" />
  <param name="UBL-CR-449" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:PaymentReversalPeriod)" />
  <param name="UBL-CR-450" value="not(cac:PaymentMeans/cac:PaymentMandate/cac:Clause)" />
  <param name="UBL-CR-451" value="not(cac:PaymentMeans/cac:TradeFinancing)" />
  <param name="UBL-CR-452" value="not(cac:PaymentTerms/cbc:ID)" />
  <param name="UBL-CR-453" value="not(cac:PaymentTerms/cbc:PaymentMeansID)" />
  <param name="UBL-CR-454" value="not(cac:PaymentTerms/cbc:PrepaidPaymentReferenceID)" />
  <param name="UBL-CR-455" value="not(cac:PaymentTerms/cbc:ReferenceEventCode)" />
  <param name="UBL-CR-456" value="not(cac:PaymentTerms/cbc:SettlementDiscountPercent)" />
  <param name="UBL-CR-457" value="not(cac:PaymentTerms/cbc:PenaltySurchargePercent)" />
  <param name="UBL-CR-458" value="not(cac:PaymentTerms/cbc:PaymentPercent)" />
  <param name="UBL-CR-459" value="not(cac:PaymentTerms/cbc:Amount)" />
  <param name="UBL-CR-460" value="not(cac:PaymentTerms/cbc:SettlementDiscountAmount)" />
  <param name="UBL-CR-461" value="not(cac:PaymentTerms/cbc:PenaltyAmount)" />
  <param name="UBL-CR-462" value="not(cac:PaymentTerms/cbc:PaymentTermsDetailsURI)" />
  <param name="UBL-CR-463" value="not(cac:PaymentTerms/cbc:PaymentDueDate)" />
  <param name="UBL-CR-464" value="not(cac:PaymentTerms/cbc:InstallmentDueDate)" />
  <param name="UBL-CR-465" value="not(cac:PaymentTerms/cbc:InvoicingPartyReference)" />
  <param name="UBL-CR-466" value="not(cac:PaymentTerms/cac:SettlementPeriod)" />
  <param name="UBL-CR-467" value="not(cac:PaymentTerms/cac:PenaltyPeriod)" />
  <param name="UBL-CR-468" value="not(cac:PaymentTerms/cac:ExchangeRate)" />
  <param name="UBL-CR-469" value="not(cac:PaymentTerms/cac:ValidityPeriod)" />
  <param name="UBL-CR-470" value="not(cac:PrepaidPayment)" />
  <param name="UBL-CR-471" value="not(cac:AllowanceCharge/cbc:ID)" />
  <param name="UBL-CR-472" value="not(cac:AllowanceCharge/cbc:PrepaidIndicator)" />
  <param name="UBL-CR-473" value="not(cac:AllowanceCharge/cbc:SequenceNumeric)" />
  <param name="UBL-CR-474" value="not(cac:AllowanceCharge/cbc:AccountingCostCode)" />
  <param name="UBL-CR-475" value="not(cac:AllowanceCharge/cbc:AccountingCost)" />
  <param name="UBL-CR-476" value="not(cac:AllowanceCharge/cbc:PerUnitAmount)" />
  <param name="UBL-CR-477" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:Name)" />
  <param name="UBL-CR-478" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:BaseUnitMeasure)" />
  <param name="UBL-CR-479" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:PerUnitAmount)" />
  <param name="UBL-CR-480" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReasonCode)" />
  <param name="UBL-CR-481" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:TaxExemptionReason)" />
  <param name="UBL-CR-482" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:TierRange)" />
  <param name="UBL-CR-483" value="not(cac:AllowanceCharge/cac:TaxCategory/cbc:TierRatePercent)" />
  <param name="UBL-CR-484" value="not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:Name)" />
  <param name="UBL-CR-485" value="not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode)" />
  <param name="UBL-CR-486" value="not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode)" />
  <param
    name="UBL-CR-487"
    value="not(cac:AllowanceCharge/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress)"
  />
  <param name="UBL-CR-488" value="not(cac:AllowanceCharge/cac:TaxTotal)" />
  <param name="UBL-CR-489" value="not(cac:AllowanceCharge/cac:PaymentMeans)" />
  <param name="UBL-CR-490" value="not(cac:TaxExchangeRate)" />
  <param name="UBL-CR-491" value="not(cac:PricingExchangeRate)" />
  <param name="UBL-CR-492" value="not(cac:PaymentExchangeRate)" />
  <param name="UBL-CR-493" value="not(cac:PaymentAlternativeExchangeRate)" />
  <param name="UBL-CR-494" value="not(cac:TaxTotal/cbc:RoundingAmount)" />
  <param name="UBL-CR-495" value="not(cac:TaxTotal/cbc:TaxEvidenceIndicator)" />
  <param name="UBL-CR-496" value="not(cac:TaxTotal/cbc:TaxIncludedIndicator)" />
  <param name="UBL-CR-497" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:CalculationSequenceNumeric)" />
  <param name="UBL-CR-498" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:TransactionCurrencyTaxAmount)" />
  <param name="UBL-CR-499" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:Percent)" />
  <param name="UBL-CR-500" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:BaseUnitMeasure)" />
  <param name="UBL-CR-501" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:PerUnitAmount)" />
  <param name="UBL-CR-502" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:TierRange)" />
  <param name="UBL-CR-503" value="not(cac:TaxTotal/cac:TaxSubtotal/cbc:TierRatePercent)" />
  <param name="UBL-CR-504" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Name)" />
  <param name="UBL-CR-505" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:BaseUnitMeasure)" />
  <param name="UBL-CR-506" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:PerUnitAmount)" />
  <param name="UBL-CR-507" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TierRange)" />
  <param name="UBL-CR-508" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TierRatePercent)" />
  <param name="UBL-CR-509" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:Name)" />
  <param name="UBL-CR-510" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode)" />
  <param name="UBL-CR-511" value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:CurrencyCode)" />
  <param
    name="UBL-CR-512"
    value="not(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress)"
  />
  <param name="UBL-CR-513" value="not(cac:WithholdingTaxTotal)" />
  <param name="UBL-CR-514" value="not(cac:LegalMonetaryTotal/cbc:PayableAlternativeAmount)" />
  <param name="UBL-CR-515" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cbc:UUID)" />
  <param name="UBL-CR-516" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cbc:TaxPointDate)" />
  <param name="UBL-CR-517" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cbc:AccountingCostCode)" />
  <param name="UBL-CR-518" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cbc:PaymentPurposeCode)" />
  <param name="UBL-CR-519" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cbc:FreeOfChargeIndicator)" />
  <param name="UBL-CR-520" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:InvoicePeriod/cbc:StartTime)" />
  <param name="UBL-CR-521" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:InvoicePeriod/cbc:EndTime)" />
  <param name="UBL-CR-522" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:InvoicePeriod/cbc:DurationMeasure)" />
  <param name="UBL-CR-523" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:InvoicePeriod/cbc:DescriptionCode)" />
  <param name="UBL-CR-524" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:InvoicePeriod/cbc:Description)" />
  <param
    name="UBL-CR-525"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:OrderLineReference/cbc:SalesOrderLineID)"
  />
  <param name="UBL-CR-526" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:OrderLineReference/cbc:UUID)" />
  <param
    name="UBL-CR-527"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:OrderLineReference/cbc:LineStatusCode)"
  />
  <param
    name="UBL-CR-528"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:OrderLineReference/cac:OrderReference)"
  />
  <param name="UBL-CR-529" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DespatchLineReference)" />
  <param name="UBL-CR-530" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:ReceiptLineReference)" />
  <param name="UBL-CR-531" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:BillingReference)" />
  <param name="UBL-CR-532" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:CopyIndicator)" />
  <param name="UBL-CR-533" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:UUID)" />
  <param name="UBL-CR-534" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:IssueDate)" />
  <param name="UBL-CR-535" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:IssueTime)" />
  <param name="UBL-CR-537" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:DocumentType)" />
  <param name="UBL-CR-538" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:XPath)" />
  <param name="UBL-CR-539" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:LanguageID)" />
  <param name="UBL-CR-540" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:LocaleCode)" />
  <param name="UBL-CR-541" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:VersionID)" />
  <param
    name="UBL-CR-542"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:DocumentStatusCode)"
  />
  <param
    name="UBL-CR-543"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cbc:DocumentDescription)"
  />
  <param name="UBL-CR-544" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cac:Attachment)" />
  <param name="UBL-CR-545" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cac:ValidityPeriod)" />
  <param name="UBL-CR-546" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cac:IssuerParty)" />
  <param
    name="UBL-CR-547"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DocumentReference/cac:ResultOfVerification)"
  />
  <param name="UBL-CR-548" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:PricingReference)" />
  <param name="UBL-CR-549" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:OriginatorParty)" />
  <param name="UBL-CR-550" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Delivery)" />
  <param name="UBL-CR-551" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:PaymentTerms)" />
  <param name="UBL-CR-552" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cbc:ID)" />
  <param name="UBL-CR-553" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cbc:PrepaidIndicator)" />
  <param name="UBL-CR-554" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cbc:SequenceNumeric)" />
  <param
    name="UBL-CR-555"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cbc:AccountingCostCode)"
  />
  <param name="UBL-CR-556" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cbc:AccountingCost)" />
  <param name="UBL-CR-557" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cbc:PerUnitAmount)" />
  <param name="UBL-CR-558" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cac:TaxCategory)" />
  <param name="UBL-CR-559" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cac:TaxTotal)" />
  <param name="UBL-CR-560" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:AllowanceCharge/cac:PaymentMeans)" />
  <param name="UBL-CR-561" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:TaxTotal)" />
  <param name="UBL-CR-562" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:WithholdingTaxTotal)" />
  <param name="UBL-CR-563" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:PackQuantity)" />
  <param name="UBL-CR-564" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:PackSizeNumeric)" />
  <param name="UBL-CR-565" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:CatalogueIndicator)" />
  <param name="UBL-CR-566" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:HazardousRiskIndicator)" />
  <param name="UBL-CR-567" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:AdditionalInformation)" />
  <param name="UBL-CR-568" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:Keyword)" />
  <param name="UBL-CR-569" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:BrandName)" />
  <param name="UBL-CR-570" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cbc:ModelName)" />
  <param
    name="UBL-CR-571"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:BuyersItemIdentification/cbc:ExtendedID)"
  />
  <param
    name="UBL-CR-572"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:BuyersItemIdentification/cbc:BarecodeSymbologyID)"
  />
  <param
    name="UBL-CR-573"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:BuyersItemIdentification/cac:PhysicalAttribute)"
  />
  <param
    name="UBL-CR-574"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:BuyersItemIdentification/cac:MeasurementDimension)"
  />
  <param
    name="UBL-CR-575"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:BuyersItemIdentification/cac:IssuerParty)"
  />
  <param
    name="UBL-CR-576"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:SellersItemIdentification/cbc:ExtendedID)"
  />
  <param
    name="UBL-CR-577"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:SellersItemIdentification/cbc:BarecodeSymbologyID)"
  />
  <param
    name="UBL-CR-578"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:SellersItemIdentification/cac:PhysicalAttribute)"
  />
  <param
    name="UBL-CR-579"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:SellersItemIdentification/cac:MeasurementDimension)"
  />
  <param
    name="UBL-CR-580"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:SellersItemIdentification/cac:IssuerParty)"
  />
  <param
    name="UBL-CR-581"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ManufacturersItemIdentification)"
  />
  <param
    name="UBL-CR-582"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:StandardItemIdentification/cbc:ExtendedID)"
  />
  <param
    name="UBL-CR-583"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:StandardItemIdentification/cbc:BarecodeSymbologyID)"
  />
  <param
    name="UBL-CR-584"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:StandardItemIdentification/cac:PhysicalAttribute)"
  />
  <param
    name="UBL-CR-585"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:StandardItemIdentification/cac:MeasurementDimension)"
  />
  <param
    name="UBL-CR-586"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:StandardItemIdentification/cac:IssuerParty)"
  />
  <param name="UBL-CR-587" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:CatalogueItemIdentification)" />
  <param
    name="UBL-CR-588"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemIdentification)"
  />
  <param name="UBL-CR-589" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:CatalogueDocumentReference)" />
  <param
    name="UBL-CR-590"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ItemSpecificationDocumentReference)"
  />
  <param name="UBL-CR-591" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:OriginCountry/cbc:Name)" />
  <param
    name="UBL-CR-592"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:CommodityClassification/cbc:NatureCode)"
  />
  <param
    name="UBL-CR-593"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:CommodityClassification/cbc:CargoTypeCode)"
  />
  <param
    name="UBL-CR-594"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:CommodityClassification/cbc:CommodityCode)"
  />
  <param name="UBL-CR-595" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:TransactionConditions)" />
  <param name="UBL-CR-596" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:HazardousItem)" />
  <param
    name="UBL-CR-597"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:Name)"
  />
  <param
    name="UBL-CR-598"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:BaseUnitMeasure)"
  />
  <param
    name="UBL-CR-599"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:PerUnitAmount)"
  />
  <param
    name="UBL-CR-600"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:TaxExemptionReasonCode)"
  />
  <param
    name="UBL-CR-601"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:TaxExemptionReason)"
  />
  <param
    name="UBL-CR-602"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:TierRange)"
  />
  <param
    name="UBL-CR-603"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cbc:TierRatePercent)"
  />
  <param
    name="UBL-CR-604"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cac:TaxScheme/cbc:Name)"
  />
  <param
    name="UBL-CR-605"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cac:TaxScheme/cbc:TaxTypeCode)"
  />
  <param
    name="UBL-CR-606"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cac:TaxScheme/cbc:CurrencyCode)"
  />
  <param
    name="UBL-CR-607"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ClassifiedTaxCategory/cac:TaxScheme/cac:JurisdictionRegionAddress)"
  />
  <param
    name="UBL-CR-608"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:ID)"
  />
  <param
    name="UBL-CR-609"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:NameCode)"
  />
  <param
    name="UBL-CR-610"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:TestMethod)"
  />
  <param
    name="UBL-CR-611"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:ValueQuantity)"
  />
  <param
    name="UBL-CR-612"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:ValueQualifier)"
  />
  <param
    name="UBL-CR-613"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:ImportanceCode)"
  />
  <param
    name="UBL-CR-614"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cbc:ListValue)"
  />
  <param
    name="UBL-CR-615"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cac:UsabilityPeriod)"
  />
  <param
    name="UBL-CR-616"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cac:ItemPropertyGroup)"
  />
  <param
    name="UBL-CR-617"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cac:RangeDimension)"
  />
  <param
    name="UBL-CR-618"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:AdditionalItemProperty/cac:ItemPropertyRange)"
  />
  <param name="UBL-CR-619" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ManufacturerParty)" />
  <param
    name="UBL-CR-620"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:InformationContentProviderParty)"
  />
  <param name="UBL-CR-621" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:OriginAddress)" />
  <param name="UBL-CR-622" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:ItemInstance)" />
  <param name="UBL-CR-623" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:Certificate)" />
  <param name="UBL-CR-624" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Item/cac:Dimension)" />
  <param name="UBL-CR-625" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:PriceChangeReason)" />
  <param name="UBL-CR-626" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:PriceTypeCode)" />
  <param name="UBL-CR-627" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:PriceType)" />
  <param name="UBL-CR-628" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:OrderableUnitFactorRate)" />
  <param name="UBL-CR-629" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:ValidityPeriod)" />
  <param name="UBL-CR-630" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:PriceList)" />
  <param name="UBL-CR-631" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cbc:OrderableUnitFactorRate)" />
  <param name="UBL-CR-632" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:ID)" />
  <param
    name="UBL-CR-633"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:AllowanceChargeReasonCode)"
  />
  <param
    name="UBL-CR-634"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:AllowanceChargeReason)"
  />
  <param
    name="UBL-CR-635"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:MultiplierFactorNumeric)"
  />
  <param
    name="UBL-CR-636"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:PrepaidIndicator)"
  />
  <param
    name="UBL-CR-637"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:SequenceNumeric)"
  />
  <param
    name="UBL-CR-638"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:AccountingCostCode)"
  />
  <param
    name="UBL-CR-639"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:AccountingCost)"
  />
  <param
    name="UBL-CR-640"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cbc:PerUnitAmount)"
  />
  <param
    name="UBL-CR-641"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cac:TaxCategory)"
  />
  <param
    name="UBL-CR-642"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cac:TaxTotal)"
  />
  <param
    name="UBL-CR-643"
    value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:AllowanceCharge/cac:PaymentMeans)"
  />
  <param name="UBL-CR-644" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:Price/cac:PricingExchangeRate)" />
  <param name="UBL-CR-645" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:DeliveryTerms)" />
  <param name="UBL-CR-646" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:SubInvoiceLine)" />
  <param name="UBL-CR-647" value="not((cac:InvoiceLine|cac:CreditNoteLine)/cac:ItemPriceExtension)" />
  <param name="UBL-CR-648" value="not(cbc:CustomizationID/@schemeID)" />
  <param name="UBL-CR-649" value="not(cbc:ProfileID/@schemeID)" />
  <param name="UBL-CR-650" value="not(cbc:ID/@schemeID)" />
  <param name="UBL-CR-651" value="not(cbc:SalesOrderID/@schemeID)" />
  <param name="UBL-CR-652" value="not(//cac:PartyTaxScheme/cbc:CompanyID/@schemeID)" />
  <param name="UBL-CR-653" value="not(cac:PaymentMeans/cbc:PaymentID/@schemeID)" />
  <param name="UBL-CR-654" value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID/@schemeID)" />
  <param
    name="UBL-CR-655"
    value="not(cac:PaymentMeans/cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cbc:ID/@schemeID)"
  />
  <param name="UBL-CR-656" value="not(cbc:InvoiceTypeCode/@listID)" />
  <param name="UBL-CR-657" value="not(cbc:DocumentCurrencyCode/@listID)" />
  <param name="UBL-CR-658" value="not(cbc:TaxCurrencyCode/@listID)" />
  <param name="UBL-CR-659" value="not(cac:AdditionalDocumentReference/cbc:DocumentTypeCode/@listID)" />
  <param name="UBL-CR-660" value="not(//cac:Country/cbc:IdentificationCode/@listID)" />
  <param name="UBL-CR-661" value="not(cac:PaymentMeans/cbc:PaymentMeansCode/@listID)" />
  <param name="UBL-CR-662" value="not(//cbc:AllowanceChargeReasonCode/@listID)" />
  <param name="UBL-CR-663" value="not(//@unitCodeListID)" />
  <param name="UBL-CR-664" value="not(//cac:FinancialInstitution)" />
  <param
    name="UBL-CR-665"
    value="not(//cac:AdditionalDocumentReference[cbc:DocumentTypeCode  != '130' or not(cbc:DocumentTypeCode)]/cbc:ID/@schemeID)"
  />
  <param
    name="UBL-CR-666"
    value="not(//cac:AdditionalDocumentReference[cbc:DocumentTypeCode  = '130']/cac:Attachment)"
  />
  <param name="UBL-CR-667" value="not(//cac:BuyersItemIdentification/cbc:ID/@schemeID)" />
  <param name="UBL-CR-668" value="not(//cac:SellersItemIdentification/cbc:ID/@schemeID)" />
  <param name="UBL-CR-669" value="not(//cac:Price/cac:AllowanceCharge/cbc:AllowanceChargeReasonCode)" />
  <param name="UBL-CR-670" value="not(//cac:Price/cac:AllowanceCharge/cbc:AllowanceChargeReason)" />
  <param name="UBL-CR-671" value="not(//cac:Price/cac:AllowanceCharge/cbc:MultiplierFactorNumeric)" />
  <param name="UBL-CR-672" value="not(cbc:CreditNoteTypeCode/@listID)" />
  <param
    name="UBL-CR-673"
    value="not(//cac:AdditionalDocumentReference[cbc:DocumentTypeCode  = '130']/cbc:DocumentDescription)"
  />
  <param name="UBL-CR-674" value="not(//cbc:PrimaryAccountNumber/@schemeID)" />
  <param name="UBL-CR-675" value="not(//cac:CardAccount/cbc:NetworkID/@schemeID)" />
  <param name="UBL-CR-676" value="not(//cac:PaymentMandate/cbc:ID/@schemeID)" />
  <param name="UBL-CR-677" value="not(//cac:PaymentMandate/cac:PayerFinancialAccount/cbc:ID/@schemeID)" />
  <param name="UBL-CR-678" value="not(//cac:TaxCategory/cbc:ID/@schemeID)" />
  <param name="UBL-CR-679" value="not(//cac:ClassifiedTaxCategory/cbc:ID/@schemeID)" />
  <param name="UBL-CR-680" value="not(//cac:PaymentMeans/cac:PayerFinancialAccount)" />
  <param name="UBL-CR-681" value="not(cac:PaymentMeans/cbc:InstructionNote)" />
  <param name="UBL-CR-682" value="not(cac:Delivery/cac:DeliveryAddress)" />
  <param name="Invoice_line" value="cac:InvoiceLine | cac:CreditNoteLine" />
  <param name="Preceding_Invoice" value="cac:BillingReference" />
  <param name="Payee" value="cac:PayeeParty" />
  <param name="Tax_Representative" value="cac:TaxRepresentativeParty" />
  <param name="Deliver_to" value="cac:Delivery" />
  <param name="Payment_instructions" value="cac:PaymentMeans" />
  <param name="Document_level_allowances" value="cac:AllowanceCharge[cbc:ChargeIndicator = false()]" />
  <param name="Document_level_charges" value="cac:AllowanceCharge[cbc:ChargeIndicator = true()]" />
  <param name="Invoice_total_VAT" value="cac:TaxTotal" />
  <param name="Tax_subtotal" value="cac:TaxSubtotal" />
  <param name="Additional_supporting_documents" value="cac:AdditionalDocumentReference" />
  <param name="Invoice" value="/ubl:Invoice | /cn:CreditNote" />
  <param
    name="Amount_data_type"
    value="//*[ends-with(name(), 'Amount') and not(ends-with(name(),'PriceAmount')) and not(ancestor::cac:Price/cac:AllowanceCharge)]"
  />
  <param name="Price_data_type" value="//*[ends-with(name(), 'PriceAmount')]" />
  <param name="Quantity_data_type" value="//*[ends-with(name(), 'Quantity')]" />
  <param name="Percent_data_type" value="//*[ends-with(name(), 'Rate')]" />
  <param name="Code_data_type" value="//*[ends-with(name(), 'Code')]" />
  <param name="Binary_object_data_type" value="//*[ends-with(name(), 'BinaryObject')]" />
  <param name="Accounting_supplier_party" value="cac:AccountingSupplierParty/cac:Party" />
</pattern>
