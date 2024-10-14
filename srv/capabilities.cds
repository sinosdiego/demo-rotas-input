using {DemoRota as srv, } from './demo-service';

// annotate srv.VisitasAll with @(odata.draft.enabled: true);
annotate srv.Locais with @(odata.draft.enabled: true);
