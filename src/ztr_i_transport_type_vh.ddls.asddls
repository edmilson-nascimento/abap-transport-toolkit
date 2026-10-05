@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Type - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #S,
  dataClass: #CUSTOMIZING
}
@ObjectModel.resultSet.sizeCategory: #XS

define view entity ZTR_I_TRANSPORT_TYPE_VH
  as select from dd07t
{
      @ObjectModel.text.element: ['TypeText']
      @UI.hidden: true
  key domvalue_l as RequestType,

      @Semantics.text: true
      ddtext     as TypeText
}
where
      domname    = 'TRFUNCTION'
  and ddlanguage = $session.system_language
