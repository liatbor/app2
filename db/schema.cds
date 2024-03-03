namespace AppWithLogic;

using {
    Country ,
    Currency ,
    Language ,
    User ,
    cuid ,
    extensible ,
    managed ,
    temporal
} from '@sap/cds/common';

entity Employee
{
    key ID : UUID
        @Core.Computed;
    name : String(100);
    department : Association to one Department;
}

entity Department
{
    key ID : UUID
        @Core.Computed;
    name : String(100);
}
