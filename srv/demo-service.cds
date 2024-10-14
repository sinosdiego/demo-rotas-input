using {sinosbyte.demo.rotas as db} from '../db/schema';


service DemoRota {

    entity Locais     as
        projection on db.Localizacao {
            *,
            /**
             * como há 2 entities para a mesma tabela "db.Visitas", foi
             * necessario adicionar este "redirected", para que não
             * houvesse erro na association.
             */
            visitas : redirected to VisitasAll
        };

    entity Visitas    as projection on db.Visitas
                         where
                             atendido = false
        actions {
            @Common.SideEffects: {TargetProperties: ['rota']}
            action setaRota();
            @Common.SideEffects: {TargetProperties: ['atentido']}
            action visited();

        };

    entity VisitasAll as projection on db.Visitas
                         order by
                             atendido,
                             data_atendimento desc;

    entity Rota       as
        projection on db.Visitas {
            data_chamado,
            descricao,
            observacao,
            local.nome,
            local.endereco,
            local.cidade,
            local.bairro,
            local.estado
        }
        where
            rota = true;

}
