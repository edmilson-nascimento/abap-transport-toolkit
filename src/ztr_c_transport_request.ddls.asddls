@EndUserText.label: 'Transport Request - Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity ZTR_C_TRANSPORT_REQUEST
  provider contract transactional_query
  as projection on ZTR_I_TRANSPORT_REQUEST
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
  key TransportRequest,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZTR_I_TRANSPORT_TYPE_VH', element: 'RequestType' }
      }]
      RequestType,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZTR_I_TRANSPORT_STATUS_VH', element: 'Status' }
      }]
      RequestStatus,

      @Search.defaultSearchElement: true
      TargetSystem,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZTR_I_USER_VH', element: 'UserID' }
      }]
      Owner,

      @Search.defaultSearchElement: true
      OwnerName,

      CreationDate,
      CreationTime,
      ParentRequest,

      @Search.defaultSearchElement: true
      Description,

      StatusCriticality,

      @Search.defaultSearchElement: true
      RequestTypeText,

      @Search.defaultSearchElement: true
      StatusText,

      /* Associations */
      _Objects : redirected to composition child ZTR_C_TRANSPORT_OBJECT,
      _Tasks   : redirected to composition child ZTR_C_TRANSPORT_TASK
}
