@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CTS Project - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #S,
  dataClass: #CUSTOMIZING
}
@ObjectModel.resultSet.sizeCategory: #XS  // Renders as dropdown

define view entity ZTR_I_PROJECT_VH
  as select from ctsproject
{
      @ObjectModel.text.element: ['ProjectDescription']
  key trkorr     as ProjectID,

      @Semantics.text: true
      descriptn  as ProjectDescription,

      @UI.hidden: true
      externalid as ExternalProjectID
}
