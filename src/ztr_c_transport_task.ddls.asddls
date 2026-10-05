@EndUserText.label: 'Transport Task - Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define view entity ZTR_C_TRANSPORT_TASK
  as projection on ZTR_I_TRANSPORT_TASK
{
  key TaskRequest,
      ParentRequest,
      TaskType,
      TaskTypeText,
      TaskStatus,
      StatusText,
      StatusCriticality,
      Owner,
      OwnerName,
      Description,
      CreationDate,
      CreationTime,

      /* Associations */
      _Request : redirected to parent ZTR_C_TRANSPORT_REQUEST,
      _Objects : redirected to ZTR_C_TRANSPORT_OBJECT
}
