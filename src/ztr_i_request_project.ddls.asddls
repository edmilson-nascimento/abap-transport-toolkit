@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Request - CTS Project'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZTR_I_REQUEST_PROJECT
  as select from e070a

  association [0..1] to ZTR_I_PROJECT_VH as _Project on $projection.ProjectID = _Project.ProjectID

{
  key trkorr                      as TransportRequest,
      reference                   as ProjectID,
      _Project.ProjectDescription as ProjectDescription,

      _Project
}
where
  attribute = 'SAP_CTS_PROJECT'
