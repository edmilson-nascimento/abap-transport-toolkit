@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #M,
  dataClass: #MASTER
}

define view entity ZTR_I_USER_VH
  as select distinct from e070

  association [0..1] to ZTR_I_USER_NAME as _UserName on $projection.UserID = _UserName.UserID

{
      @EndUserText.label: 'User ID'
      @ObjectModel.text.element: ['UserName']
  key as4user           as UserID,

      @EndUserText.label: 'Name'
      @Semantics.text: true
      case when _UserName.FullName is not initial
        then _UserName.FullName
        else as4user
      end                as UserName,

      /* Associations */
      _UserName
}
where
  as4user <> ''
