using DemoRota as service from '../../srv/demo-service';

annotate service.Visitas with @(
    UI.LineItem                   : [
        {
            $Type             : 'UI.DataFieldForAction',
            Action            : 'DemoRota.visited',
            Label             : 'Visitado?',
            InvocationGrouping: #ChangeSet,
        },
        {
            $Type             : 'UI.DataFieldForAction',
            Action            : 'DemoRota.setaRota',
            Label             : 'Setar Rota',
            // InvocationGrouping: #ChangeSet
            // Utilizado para agrupar a chamada,
            // fazendo o disparo de todas as linha
            // selecionadas uma única vez
            InvocationGrouping: #ChangeSet,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Data Chamado',
            Value: data_chamado,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Nome',
            Value: local.nome,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Descrição',
            Value: descricao,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Cidade',
            Value: local.cidade,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Bairro',
            Value: local.bairro,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Endereço',
            Value: local.endereco,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Estado',
            Value: local.estado,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Em Rota',
            Value: rota,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Visitado',
            Value: atendido,
        },
    ],
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: data_chamado,
            },
            {
                $Type: 'UI.DataField',
                Value: data_atendimento,
            },
            {
                $Type: 'UI.DataField',
                Value: atendido,
            },
            {
                $Type: 'UI.DataField',
                Value: descricao,
            },
            {
                $Type: 'UI.DataField',
                Value: observacao,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
