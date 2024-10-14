const cds = require('@sap/cds');

// class service extends cds.ApplicationService {
//     async init() {
//         await super.init()
//     }

// };
// module.exports = service
module.exports = cds.service.impl(srv => {
    const { VisitasAll, Rota } = srv.entities;

    srv.after('NEW', VisitasAll.drafts, async (row, req) => {
        // console.log("Entity - " + Locais + ', ' + VisitasAll);
        // console.log(req.event + ' - ' + req.method + ' - ' + req.entity);

        if (req.event == 'NEW') {
            // console.log(row);
            dbNewVisita = await cds.read(VisitasAll.drafts).where({ ID: row.ID });
            dbNewVisita.atendido = 0;
            dbNewVisita.rota = 0;
            // console.log(dbNewVisita);
            await cds.update(VisitasAll.drafts, row.ID).set(dbNewVisita);
        }
        // row.data.atendido = 0;
    });
    srv.on('setaRota', async req => {
        // console.log('teste1')
        // console.log(req.subject)
        // console.log(req.subject.ref)
        // console.log('teste2')

        await UPDATE(VisitasAll).with({ rota: false });
        await UPDATE(req.subject).with({ rota: true });
    });

    srv.on('visited', async req => {
        // console.log(req.subject)
        await UPDATE(req.subject).with({
            atendido: true,
            rota: false,
            data_atendimento: req.timestamp
        });
    });

})