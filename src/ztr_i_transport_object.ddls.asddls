@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Object - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZTR_I_TRANSPORT_OBJECT
  as select from e071

  association [0..1] to e070               as _Task    on  $projection.EntryRequest = _Task.trkorr

  association to parent ZTR_I_TRANSPORT_REQUEST as _Request on  $projection.EntryRequest = _Request.TransportRequest

  // Object type text - SAP standard (same source as SE10 / SAP's transport app). Never hand-typed.
  association [0..1] to I_TransportObjectsDescription as _TypeText
    on  $projection.ProgramId  = _TypeText.TransportRequestObjectPgmID
    and $projection.ObjectType = _TypeText.TransportRequestObjectType

{
      @EndUserText.label: 'Entry Request/Task'
  key trkorr         as EntryRequest,

      @EndUserText.label: 'Entry Position'
  key as4pos          as EntryPosition,

      @EndUserText.label: 'Parent Request'
      case when _Task.strkorr is not initial
        then _Task.strkorr
        else trkorr
      end             as TransportRequest,

      @EndUserText.label: 'Program ID'
      pgmid           as ProgramId,

      @EndUserText.label: 'Object Type'
      object          as ObjectType,

      @EndUserText.label: 'Object Name'
      obj_name        as ObjectName,

      @EndUserText.label: 'Object Function'
      objfunc         as ObjectFunction,

      @EndUserText.label: 'Lock Flag'
      lockflag        as LockFlag,

      @EndUserText.label: 'Task Owner'
      _Task.as4user   as TaskOwner,

      // Object Type Description - from SAP's object type texts, fallback to the code
      @EndUserText.label: 'Object Type Description'
      case when _TypeText.TransportRequestObjectTypeDesc is not initial
        then _TypeText.TransportRequestObjectTypeDesc
        else object
      end             as ObjectTypeText,

      /* Associations */
      _Task,
      _Request
}
