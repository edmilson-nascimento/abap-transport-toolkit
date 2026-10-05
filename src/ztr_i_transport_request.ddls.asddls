@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Request - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZTR_I_TRANSPORT_REQUEST
  as select from e070

  association [0..1] to e07t                      as _Text     on  $projection.TransportRequest = _Text.trkorr
                                                               and _Text.langu                  = $session.system_language

  // Value Help Associations
  association [0..1] to ZTR_I_TRANSPORT_STATUS_VH as _StatusVH on  $projection.RequestStatus = _StatusVH.Status
  association [0..1] to ZTR_I_TRANSPORT_TYPE_VH   as _TypeVH   on  $projection.RequestType = _TypeVH.RequestType
  association [0..1] to ZTR_I_USER_VH             as _UserVH   on  $projection.Owner = _UserVH.UserID

  // User Name Resolution
  association [0..1] to ZTR_I_USER_NAME           as _UserName on  $projection.Owner = _UserName.UserID

  // Transport Objects - direct only (FASE 3.2)
  composition [0..*] of ZTR_I_TRANSPORT_OBJECT    as _Objects

  // Transport Tasks (FASE 4)
  composition [0..*] of ZTR_I_TRANSPORT_TASK      as _Tasks

{
      @EndUserText.label: 'Transport Request'
  key trkorr        as TransportRequest,

      @EndUserText.label: 'Request Type'
      trfunction    as RequestType,

      @EndUserText.label: 'Request Status'
      trstatus      as RequestStatus,

      @EndUserText.label: 'Target System'
      tarsystem     as TargetSystem,

      @EndUserText.label: 'Owner'
      as4user       as Owner,

      @EndUserText.label: 'Owner Name'
      case when _UserName.FullName is not initial
        then concat_with_space(
               as4user,
               concat( '(', concat( _UserName.FullName, ')' ) ),
               1 )
        else as4user
      end as OwnerName,

      @EndUserText.label: 'Creation Date'
      as4date       as CreationDate,

      @EndUserText.label: 'Creation Time'
      as4time       as CreationTime,

      @EndUserText.label: 'Parent Request'
      strkorr       as ParentRequest,

      @EndUserText.label: 'Description'
      _Text.as4text as Description,

      // Criticality for Status Colors (SE10 TRSTATUS semantics)
      @EndUserText.label: 'Status Criticality'
      case trstatus
        when 'R' then 3  // Released = Green (Positive)
        when 'N' then 3  // Released (import protection) = Green (Positive)
        when 'D' then 2  // Modifiable = Yellow (Critical)
        when 'L' then 2  // Modifiable, Protected = Yellow (Critical)
        when 'O' then 2  // Release Started = Yellow (Critical)
        when 'P' then 2  // Release Preparation = Yellow (Critical)
        else 0           // Others = Neutral
      end           as StatusCriticality,

      // Request Type Description - read from the domain (DD07T via _TypeVH),
      // same source the filter Value Help already uses. Never hand-typed.
      @EndUserText.label: 'Request Type Description'
      case when _TypeVH.TypeText is not initial
        then _TypeVH.TypeText
        else trfunction
      end           as RequestTypeText,

      // Status Description - read from the domain (DD07T via _StatusVH),
      // same source the filter Value Help already uses. Never hand-typed.
      @EndUserText.label: 'Status Description'
      case when _StatusVH.StatusText is not initial
        then _StatusVH.StatusText
        else trstatus
      end           as StatusText,

      /* Associations */
      _Text,
      _StatusVH,
      _TypeVH,
      _UserVH,
      _UserName,
      _Objects,
      _Tasks
}
where
  strkorr = '' // Only ORDERs (no TASKs)
