component accessors=true {

	public void function init( fw ) {
		variables.fw = fw;
	}

	public any function home( rc ) {
		return;
	}

	public any function tableInfo ( rc ) {	
		raw = new dbinfo(datasource=rc.dsn).tables();
		
		q = new query();
		q.setName("filtered");
		q.setDBType("query");
		q.setAttributes(sourceQuery=raw);
		objQueryResult = q.execute(sql="SELECT * FROM sourceQuery WHERE table_type like 'TABLE'");
		rc.filtered = objQueryResult.getResult();
	}
	
	public any function appCode ( rc ) {
		
	}
}