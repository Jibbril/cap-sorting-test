using MyService as service from '../../srv/my-service';

annotate service.Books with @(
    UI.SelectionPresentationVariant #DefaultFilter           : {
        Text                : 'MY TEXT',
        SelectionVariant    : {
            Text          : 'MY TEXT',
            SelectOptions : []
        },
        PresentationVariant : ![@UI.PresentationVariant]
    },

    UI.PresentationVariant                             : {
        MaxItems       : 4,
        SortOrder      : [{Property : name}],
        Visualizations : ['@UI.LineItem']
    },

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'author_id',
            Value : author_id,
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'id',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author_id',
                Value : author_id,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
