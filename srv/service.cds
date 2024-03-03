using { AppWithLogic as my } from '../db/schema';

@path : '/service/AppWithLogic'
service AppWithLogicService
{
    @odata.draft.enabled
    entity Employee as
        projection on my.Employee
        actions
        {
            action beOnboard
            (
                entity : $self not null,
                name : String(100),
                department : Department
            );

            action resign
            (
                entity : $self not null,
                name : String(100)
            )
            returns Boolean;
        };

    @odata.draft.enabled
    entity Department as
        projection on my.Department;

    function find
    (
        name : String(100)
    )
    returns String;

    action hire
    (
        name : String(100)
    )
    returns Boolean;
}

annotate AppWithLogicService with @requires :
[
    'authenticated-user'
];
