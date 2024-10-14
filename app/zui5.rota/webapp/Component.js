/**
 * eslint-disable @sap/ui5-jsdocs/no-jsdoc
 */

sap.ui.define([
    "sap/ui/core/UIComponent",
    "sap/ui/Device",
    "br/com/sinosbyte/zui5/rota/model/models"
],
    function (UIComponent, Device, models) {
        "use strict";

        return UIComponent.extend("br.com.sinosbyte.zui5.rota.Component", {
            metadata: {
                manifest: "json"
            },

            /**
             * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
             * @public
             * @override
             */
            init: function () {
                // 
                /**
                 * Sinosbyte - adicionada chamada para API
                 */
                sap.ui.getCore().loadLibrary("openui5.googlemaps", "./googlemaps/");
                // call the base component's init function
                UIComponent.prototype.init.apply(this, arguments);

                // enable routing
                this.getRouter().initialize();

                // set the device model
                this.setModel(models.createDeviceModel(), "device");
            }
        });
    }
);