unit Model;

{
////////////////////////////////

This project aims to study the persistence of business objects in
one application FPC/Lazarus using  BrookFramework and dOPF from Silvio Clecio.

This project is not intended to provide warranties of any kind for any purpose!

////////////////////////////////
}
{$mode objfpc}{$H+}

interface

//uses
//  SysUtils,
//  Classes;

type

  TState = class
  private
    FId: Int64;
    FName: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property Name: string read FName write FName;
  published
  end;

  TCity = class
  private
    FId: Int64;
    FStateId: Int64;
    FName: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property StateId: Int64 read FStateId write FStateId;
    property Name: string read FName write FName;
  published
  end;

  TDistrict = class
  private
    FId: Int64;
    FCityId: Int64;
    FName: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property CityId: Int64 read FCityId write FCityId;
    property Name: string read FName write FName;
  published
  end;


  TStreet = class
  private
    FId: Int64;
    FDistrictId: Int64;
    FName: string;
    FZipCode: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property DistrictId: Int64 read FDistrictId write FDistrictId;
    property Name: string read FName write FName;
    property ZipCode: string read FZipCode write FZipCode;
  published
  end;


  TAddressType = class
  private
    FId: Int64;
    FDescription: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property Description: string read FDescription write FDescription;
  published
  end;


  TAddress = class
  private
    FId: Int64;
    FAddressTypeId: Int64;
    FStreetId: Int64;
    FNumber: integer;
    FComplement: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property AddressTypeId: Int64 read FAddressTypeId write FAddressTypeId;
    property StreetId: Int64 read FStreetId write FStreetId;
    property Number: integer read FNumber write FNumber;
    property Complement: string read FComplement write FComplement;
  published
  end;

  TPerson = class
    FId: Int64;
    FName: string;
    FAddress: Int64;
  protected
  public
    property Id: Int64 read FId write FId;
    property Name: string read FName write FName;
    property Address: Int64 read FAddress write FAddress;
  published
  end;

  TIndCust = class(TPerson) // Individual Customer
  private
    FBirthdate: TDateTime;
    FSSNumber: string;     // Social security number;
  protected
  public
    property Birthdate: TDateTime read FBirthdate write FBirthdate;
    property SSNumber: string read FSSNumber write FSSNumber;
  published
  end;

  TCompCust = class(TPerson) // Company Customer
  private
     FEIN: string; // Employer Identification Number;
  protected
  public
    property EIN: string read FEIN write FEIN;
  published
  end;

  TUnit = class
  private
    FId: Int64;
    FName: string;
    FShortName: string;
  protected
  public
    property Id: Int64 read FId write FId;
    property Name: string read FName write FName;
    property ShortName: string read FShortName write FShortName;
  published
  end;


  TProduct = class
  private
    FId: Int64;
    FName: string;
    FUnitId: Int64;
    FPrice: currency;
    FQty: real;
  protected
  public
    property Id: Int64 read FId write FId;
    property Name: string read FName write FName;
    property UnitId: Int64 read FUnitId write FUnitId;
    property Price: currency read FPrice write FPrice;
    property Qty: real read FQty write FQty;
  published
  end;


  TOrder = class
  private
    FId: Int64;
    FPersonId: Int64; // coud be TIndividualCustomer or TCompanyCustomer
    FBillingAddressId: Int64;
    FDeliveryAddressId: Int64;
    FDate: TDateTime;
    FTotal: currency;
  protected
  public
    property Id: Int64 read FId write FId;
    property PersonId: Int64 read FPersonId write FPersonId;
    property BillingAddressId: Int64 read FBillingAddressId
                                     write FBillingAddressId;
    property DeliveryAddressId: Int64 read FDeliveryAddressId
                                     write FDeliveryAddressId;
    property Date: TDateTime read FDate write FDate;
    property Total: currency read FTotal write FTotal;
  published
  end;


  TOrderItems = class
  private
    FId: Int64;
    FOrderId: Int64;
    FProductId: Int64;
    FDiscount: currency;
    FQty: real;
  protected
  public
    property Id: Int64 read FId write FId;
    property OrderId: Int64 read FOrderId write FOrderId;
    property ProductId: Int64 read FProductId write FProductId;
    property Discount: currency read FDiscount write FDiscount;
    property Qty: real read FQty write FQty;
  published
  end;



implementation

end.

