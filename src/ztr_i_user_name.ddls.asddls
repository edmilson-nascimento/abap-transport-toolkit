@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Name - View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
  serviceQuality: #A,
  sizeCategory: #L,
  dataClass: #MASTER
}

define view entity ZTR_I_USER_NAME
  as select from usr21
    inner join adrp on  usr21.persnumber = adrp.persnumber
                    and adrp.date_from   = '00010101'
{
      @ObjectModel.text.element: ['FullName']
  key usr21.bname        as UserID,

      @Semantics.text: true
      adrp.name_text     as FullName,

      adrp.name_first    as FirstName,
      adrp.name_last     as LastName
}
