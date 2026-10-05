@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Task - Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZTR_I_TRANSPORT_TASK
  as select from e070

  association [0..1] to e07t                   as _Text     on  $projection.TaskRequest = _Text.trkorr
                                                             and _Text.langu             = $session.system_language

  association [0..1] to ZTR_I_USER_NAME         as _UserName on  $projection.Owner = _UserName.UserID

  // Value Help Associations (same domains the filters already use)
  association [0..1] to ZTR_I_TRANSPORT_STATUS_VH as _StatusVH on  $projection.TaskStatus = _StatusVH.Status
  association [0..1] to ZTR_I_TRANSPORT_TYPE_VH   as _TypeVH   on  $projection.TaskType = _TypeVH.RequestType

  association to parent ZTR_I_TRANSPORT_REQUEST as _Request  on  $projection.ParentRequest = _Request.TransportRequest

  association [0..*] to ZTR_I_TRANSPORT_OBJECT  as _Objects  on  $projection.TaskRequest = _Objects.EntryRequest

{
      @EndUserText.label: 'Task'
  key trkorr        as TaskRequest,

      @EndUserText.label: 'Parent Request'
      strkorr       as ParentRequest,

      @EndUserText.label: 'Task Type'
      trfunction    as TaskType,

      @EndUserText.label: 'Task Status'
      trstatus      as TaskStatus,

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

      @EndUserText.label: 'Description'
      _Text.as4text as Description,

      // Status Criticality (SE10 TRSTATUS semantics)
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

      // Task Type Description - read from the domain (DD07T via _TypeVH),
      // same source the filter Value Help already uses. Never hand-typed.
      @EndUserText.label: 'Task Type Description'
      case when _TypeVH.TypeText is not initial
        then _TypeVH.TypeText
        else trfunction
      end           as TaskTypeText,

      // Status Description - read from the domain (DD07T via _StatusVH),
      // same source the filter Value Help already uses. Never hand-typed.
      @EndUserText.label: 'Status Description'
      case when _StatusVH.StatusText is not initial
        then _StatusVH.StatusText
        else trstatus
      end           as StatusText,

      /* Associations */
      _Text,
      _UserName,
      _StatusVH,
      _TypeVH,
      _Request,
      _Objects
}
where
  strkorr <> ''
