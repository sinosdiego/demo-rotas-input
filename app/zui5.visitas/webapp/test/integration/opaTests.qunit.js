sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'br/com/sinosbyte/zui5/visitas/test/integration/FirstJourney',
		'br/com/sinosbyte/zui5/visitas/test/integration/pages/VisitasList',
		'br/com/sinosbyte/zui5/visitas/test/integration/pages/VisitasObjectPage'
    ],
    function(JourneyRunner, opaJourney, VisitasList, VisitasObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('br/com/sinosbyte/zui5/visitas') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheVisitasList: VisitasList,
					onTheVisitasObjectPage: VisitasObjectPage
                }
            },
            opaJourney.run
        );
    }
);