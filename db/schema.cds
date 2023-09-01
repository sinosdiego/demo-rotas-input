namespace sinosbyte.demo.rotas;

entity Localizacao {

    key id       : UUID;

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
}

entity Acompanhamento {
    key id               : UUID;

        @Common.Label: 'Data Criação'
        data_chamado     : Date;

        @Common.Label: 'Data Atendimento'
        data_atendimento : Date;

        @Common.Label: 'Atendido?'
        atendido         : Boolean;

        @Common.Label: 'Local'
        localizacao      : Localizacao:id;

        @Common.Label: 'Descrição'
        descricao        : String(100);

        @Common.Label: 'Observação'
        observacao       : String(500);
        local            : Association to one Localizacao
                               on local.id = $self.localizacao;
}
