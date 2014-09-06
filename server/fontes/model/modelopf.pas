unit ModelOpf;

{
////////////////////////////////

This project aims to study the persistence of business objects in
one application FPC/Lazarus using  BrookFramework and dOPF from Silvio Clecio.

This project is not intended to provide warranties of any kind for any purpose!

////////////////////////////////
}

{$mode objfpc}{$H+}

interface

uses
  //Classes, SysUtils,
  model, dSQLdbBroker, dbutils;

type
      { TUfOpf }

  { TStateOpf }

  TStateOpf = class(specialize TdGSQLdbEntityOpf<TState>)
  public
    constructor Create; overload;
  end;

  { TCityOpf }

  TCityOpf = class(specialize TdGSQLdbEntityOpf<TCity>)
  public
    constructor Create; overload;
  end;

  { TDistrictOpf }

  TDistrictOpf = class(specialize TdGSQLdbEntityOpf<TDistrict>)
  public
    constructor Create; overload;
  end;

  { TStreetOpf }

  TStreetOpf = class(specialize TdGSQLdbEntityOpf<TStreet>)
  public
    constructor Create; overload;
  end;

  { TAddressTypeOpf }

  TAddressTypeOpf = class(specialize TdGSQLdbEntityOpf<TAddressType>)
  public
    constructor Create; overload;
  end;

  { TAddressOpf }

  TAddressOpf = class(specialize TdGSQLdbEntityOpf<TAddress>)
  public
    constructor Create; overload;
  end;

  { TPersonOpf }

  TPersonOpf = class(specialize TdGSQLdbEntityOpf<TPerson>)
  public
    constructor Create; overload;
  end;

  { TIndividualCustomerOpf }

  TIndividualCustomerOpf = class(specialize TdGSQLdbEntityOpf<TIndCust>)
  public
    constructor Create; overload;
  end;

  { TCompanyCustomerOpf }

  TCompanyCustomerOpf = class(specialize TdGSQLdbEntityOpf<TCompCust>)
  public
    constructor Create; overload;
  end;

  { TUnitOpf }

  TUnitOpf = class(specialize TdGSQLdbEntityOpf<TUnit>)
  public
    constructor Create; overload;
  end;

  { TProductOpf }

  TProductOpf = class(specialize TdGSQLdbEntityOpf<TProduct>)
  public
    constructor Create; overload;
  end;

  { TOrderOpf }

  TOrderOpf = class(specialize TdGSQLdbEntityOpf<TOrder>)
  public
    constructor Create; overload;
  end;

  { TOrderItemsOpf }

  TOrderItemsOpf = class(specialize TdGSQLdbEntityOpf<TOrderItems>)
  public
    constructor Create; overload;
  end;



implementation

{ TOrderItemsOpf }

constructor TOrderItemsOpf.Create;
begin
    inherited Create(dbutils.con, 'orderitem');
end;

{ TOrderOpf }

constructor TOrderOpf.Create;
begin
    inherited Create(dbutils.con, 'order');
end;

{ TProductOpf }

constructor TProductOpf.Create;
begin
    inherited Create(dbutils.con, 'product');
end;

{ TUnitOpf }

constructor TUnitOpf.Create;
begin
    inherited Create(dbutils.con, 'unit');
end;

{ TCompanyCustomerOpf }

constructor TCompanyCustomerOpf.Create;
begin
    inherited Create(dbutils.con, 'companycustomer');
end;

{ TIndividualCustomerOpf }

constructor TIndividualCustomerOpf.Create;
begin
    inherited Create(dbutils.con, 'individualcustomer');
end;

{ TPersonOpf }

constructor TPersonOpf.Create;
begin
    inherited Create(dbutils.con, 'person');
end;

{ TAddressOpf }

constructor TAddressOpf.Create;
begin
    inherited Create(dbutils.con, 'address');
end;

{ TAddressTypeOpf }

constructor TAddressTypeOpf.Create;
begin
    inherited Create(dbutils.con, 'addresstype');
end;

{ TStreetOpf }

constructor TStreetOpf.Create;
begin
    inherited Create(dbutils.con, 'street');
end;

{ TDistrictOpf }

constructor TDistrictOpf.Create;
begin
    inherited Create(dbutils.con, 'district');
end;

{ TCityOpf }

constructor TCityOpf.Create;
begin
    inherited Create(dbutils.con, 'city');
end;


constructor TStateOpf.Create;
begin
    inherited Create(dbutils.con, 'state');
end;

end.

