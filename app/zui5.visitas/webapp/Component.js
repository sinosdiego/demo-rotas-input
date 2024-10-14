sap.ui.define(
    ["sap/fe/core/AppComponent", "sap/suite/ui/generic/template/extensionAPI/extensionAPI"],
    function (Component, ExtensionAPI) {
        "use strict";

        return Component.extend("br.com.sinosbyte.zui5.visitas.Component", {
            metadata: {
                manifest: "json"
            },

            onInit: function (oEvent) {
                alert('TESTE')
            }
        });
    }
);