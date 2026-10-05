@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Object - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZTR_I_TRANSPORT_OBJECT
  as select from e071

  association [0..1] to e070               as _Task    on  $projection.EntryRequest = _Task.trkorr

  association to parent ZTR_I_TRANSPORT_REQUEST as _Request on  $projection.EntryRequest = _Request.TransportRequest

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

      // Object Type Description
      @EndUserText.label: 'Object Type Description'
      case object
        when 'PROG' then 'Program'
        when 'CLAS' then 'Class'
        when 'INTF' then 'Interface'
        when 'FUGR' then 'Function Group'
        when 'FUNC' then 'Function Module'
        when 'TABL' then 'Table'
        when 'TTYP' then 'Table Type'
        when 'DTEL' then 'Data Element'
        when 'DOMA' then 'Domain'
        when 'DDLS' then 'CDS View'
        when 'DDLX' then 'Metadata Extension'
        when 'BDEF' then 'Behavior Definition'
        when 'SRVD' then 'Service Definition'
        when 'SRVB' then 'Service Binding'
        when 'MSAG' then 'Message Class'
        when 'DEVC' then 'Package'
        when 'VIEW' then 'View'
        when 'ENHO' then 'Enhancement Implementation'
        else object
      end             as ObjectTypeText,

      /* Associations */
      _Task,
      _Request
}
