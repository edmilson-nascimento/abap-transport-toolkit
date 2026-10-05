@EndUserText.label: 'Transport Object - Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true

define view entity ZTR_C_TRANSPORT_OBJECT
  as projection on ZTR_I_TRANSPORT_OBJECT
{
  key EntryRequest,
  key EntryPosition,
      TransportRequest,
      ProgramId,
      ObjectType,
      ObjectTypeText,

      @Search.defaultSearchElement: true
      ObjectName,

      ObjectFunction,
      LockFlag,
      TaskOwner,

      /* Associations */
      _Request : redirected to parent ZTR_C_TRANSPORT_REQUEST
}
