using DemoRota as service from '../../srv/demo-service';

annotate service.Locais with @(

    // UI.HeaderFacets           : [{$Type: 'UI.CollectionFacet',

    // }, ],

    UI.LineItem                : [
        {
            $Type: 'UI.DataField',
            Label: 'Nome',
            Value: nome,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Cidade',
            Value: cidade,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Bairro',
            Value: bairro,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Estado',
            Value: estado,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Endereço',
            Value: endereco,
        },

    ],
    UI.Facets                  : [{

        $Type : 'UI.CollectionFacet',
        Label : 'Local',
        ID    : 'GeneralInformation',
        Facets: [
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Detalhes',
                ID    : 'DetalheInfo',
                Target: '@UI.FieldGroup#DetalheInfo',
            },
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Endereço',
                ID    : 'EnderecoInfo',
                Target: '@UI.FieldGroup#EnderecoInfo',
            },
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Visitas',
                ID    : 'vistas',
                Target: 'visitas/@UI.LineItem#VisitasItem',
            },
        ],
    }, ],
    UI.FieldGroup #DetalheInfo : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: nome,
        },
        // {
        //     $Type: 'UI.DataField',
        //     Value: endereco,
        // },
        // {
        //     $Type: 'UI.DataField',
        //     Value: cidade,
        // },
        // {
        //     $Type: 'UI.DataField',
        //     Value: bairro,
        // },
        // {
        //     $Type: 'UI.DataField',
        //     Value: estado,
        // },
        ]
    },

    UI.FieldGroup #EnderecoInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: endereco,
            },
            {
                $Type: 'UI.DataField',
                Value: cidade,
            },
            {
                $Type: 'UI.DataField',
                Value: bairro,
            },
            {
                $Type: 'UI.DataField',
                Value: estado,
            },
        ]
    },

);

annotate service.VisitasAll with @(UI.LineItem #VisitasItem: [
    {
        $Type: 'UI.DataField',
        Value: data_chamado,
        Label: 'Data Chamado',
    },
    {
        $Type: 'UI.DataField',
        Value: descricao,
        Label: 'Descrição',
    },
    {
        $Type: 'UI.DataField',
        Value: observacao,
        Label: 'Observação',
    },
    {
        $Type                   : 'UI.DataField',
        Value                   : atendido,
        Label                   : 'Atendido?',
        ![@Common.FieldControl] : #ReadOnly
    },
    {
        $Type                   : 'UI.DataField',
        Value                   : data_atendimento,
        Label                   : 'Data Atendido',
        ![@Common.FieldControl] : #ReadOnly
    },
]);


annotate service.Locais with @(UI.HeaderInfo: {
    $Type         : 'UI.HeaderInfoType',
    TypeName      : 'Local',
    TypeNamePlural: 'Locais',
    Title         : {
        $Type: 'UI.DataField',
        Value: nome,
    },
    Description   : {
        $Type: 'UI.DataField',
        Value: ID,
    },
});
