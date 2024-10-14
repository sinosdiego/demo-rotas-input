sap.ui.define(['sap/m/MessageToast', 'sap/ui/core/mvc/Controller'],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (MessageToast, Controller) {
        "use strict";
        var PageController = Controller.extend("sap.m.sample.Button.Page", {
            onPress: function (evt) {
                MessageToast.show(evt.getSource().getId() + " Pressed");
            },
            handleSelectChange: function (evt) {
                var oList = this.byId("list");
                var items = oList.getSelectedItems();

                for (var i = 0; i < items.length; i++) {
                    var item = items[i];
                    var context = item.getBindingContext();
                    // var obj = context.getProperty('UID', context);
                    var obj = context.getId();
                    // this.getModel().call
                    MessageToast.show('Nome: ' + obj);
                    // MessageToast.show('teste: ' + this.getModel());
                }
            }
        });
        return PageController;
    });