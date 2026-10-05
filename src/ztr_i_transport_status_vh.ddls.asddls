@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Status - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #S,
  dataClass: #CUSTOMIZING
}
@ObjectModel.resultSet.sizeCategory: #XS  // Renders as dropdown!

define view entity ZTR_I_TRANSPORT_STATUS_VH
  as select from dd07t
{
      @ObjectModel.text.element: ['StatusText']
  key domvalue_l as Status,

      @Semantics.text: true
      ddtext     as StatusText
}
where domname    = 'TRSTATUS'
  and ddlanguage = $session.system_language
