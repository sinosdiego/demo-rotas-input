namespace sinosbyte.demo.rotas;

using {
    cuid
} from '@sap/cds/common';

entity Localizacao : cuid {

    @Common.Label: 'Nome'
    nome     : String(40);

    @Common.Label: 'Endereço'
    endereco : String(100);

    @Common.Label: 'Cidade'
    cidade   : String(50);

    @Common.Label: 'Bairro'
    bairro   : String(50);

    @Common.Label: 'Estado'
    estado   : String(3);
    visitas  : Composition of many Visitas
                   on visitas.local.ID = ID;
}

entity Visitas : cuid {
    @Common.Label: 'Data Criação'
    data_chamado     : Date;

    @Common.Label: 'Data Atendimento'
    data_atendimento : Date;

    @Common.Label: 'Atendido?'
    atendido         : Boolean;

    @Common.Label: 'Descrição'
    descricao        : String(100);

    @Common.Label: 'Observação'
    observacao       : String(500);

    @Common.Label: 'Em Rota'
    rota             : Boolean;

    local            : Association to one Localizacao;
// local_ID         : String(50);
}

// Auto-fill reviewers and review dates
annotate Visitas with {
    //   reviewer @cds.on:{insert:$user};
    data_chamado @cds.on: {insert: $now};
}
