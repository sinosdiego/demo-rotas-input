sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'br/com/sinosbyte/zui5/locais/test/integration/FirstJourney',
		'br/com/sinosbyte/zui5/locais/test/integration/pages/LocaisList',
		'br/com/sinosbyte/zui5/locais/test/integration/pages/LocaisObjectPage',
		'br/com/sinosbyte/zui5/locais/test/integration/pages/VisitasObjectPage'
    ],
    function(JourneyRunner, opaJourney, LocaisList, LocaisObjectPage, VisitasObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('br/com/sinosbyte/zui5/locais') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLocaisList: LocaisList,
					onTheLocaisObjectPage: LocaisObjectPage,
					onTheVisitasObjectPage: VisitasObjectPage
                }
            },
            opaJourney.run
        );
    }
);