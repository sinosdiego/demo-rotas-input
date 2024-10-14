sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'br.com.sinosbyte.zui5.locais',
            componentId: 'VisitasObjectPage',
            contextPath: '/Locais/visitas'
        },
        CustomPageDefinitions
    );
});