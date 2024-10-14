sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'br.com.sinosbyte.zui5.visitas',
            componentId: 'VisitasList',
            contextPath: '/Visitas'
        },
        CustomPageDefinitions
    );
});