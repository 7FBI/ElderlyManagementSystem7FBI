/**
 * 
 */

function getValuesNameSumNum(data) {
			var mapdata=new Array();
			for ( var k in data) {
				var items={name:data[k].pname.toString(),value:parseInt(data[k].sumNum)};
				mapdata[k]=items;
			}
			return mapdata;
		}

function getValuesNameSumMoney(data) {
	var mapdata=new Array();
	for ( var k in data) {
		var items={name:data[k].pname.toString(),value:parseInt(data[k].sumMoney)};
		mapdata[k]=items;
	}
	return mapdata;
}

function getValuesNameSumNum2(xnames,data) {
	var mapdata=new Array();
	for ( var k in data) {
		var items={name:xnames[k].toString(),value:parseInt(data[k])};
		mapdata[k]=items;
	}
	return mapdata;
}

function getValuesNameSumMoney2(xnames,data) {
var mapdata=new Array();
for ( var k in data) {
var items={name:xnames[k].toString(),value:parseInt(data[k])};
mapdata[k]=items;
}
return mapdata;
}



function getPanmes(collections) {
			var pnames = new Array();
			for ( var k in collections) {
				pnames[k] = collections[k].pname;
			}
			return pnames;
		}

function getTids(collections) {
	var pnames = new Array();
	for ( var k in collections) {
		pnames[k] = collections[k].tid;
	}
	return pnames;
}
function getIds(collections) {
	var pnames = new Array();
	for ( var k in collections) {
		pnames[k] = collections[k].id;
	}
	return pnames;
}

function getDates(collections) {
	var pnames = new Array();
	for ( var k in collections) {
		pnames[k] = collections[k].dates;
	}
	return pnames;
}

function getDatesDay(collections) {
	var pnames = new Array();
	for ( var k in collections) {
		pnames[k] = collections[k].datesDay;
	}
	return pnames;
}
		
		function getSumMoney(collections) {
			var pnames = new Array();
			for ( var k in collections) {
				pnames[k] = collections[k].sumMoney;
			}
			return pnames;
		}

		function getSumNum(collections) {
			var pnames = new Array();
			for ( var k in collections) {
				pnames[k] = collections[k].sumNum;
			}
			return pnames;
		}
		
		
		function getSumMoneyCount(collections) {
			var pnames =0;
			for ( var k in collections) {
				pnames= pnames+collections[k].sumMoney;
			}
			return pnames;
		}

		function getSumNumCount(collections) {
			var pnames=0;
			for ( var k in collections) {
				pnames= pnames+collections[k].sumNum;
			}
			return pnames;
		}

		function setTypeOption(xTy,titles, legends, xnames, numbers, documentsId,col) {
			var myChart = echarts.init(document.getElementById(documentsId));
			var option = {
					color:[col],
				title : {
					text : titles,
					y : 'top',
					x : '100px'
				},
				toolbox : {
					show : true,
					feature : {
						magicType : {
							show : true,
							type : [ 'line', 'bar' ]
						},
						saveAsImage : {
							show : true
						}
					}
				},
				 grid: {
				        left: '5%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				tooltip : {
					show : true,
					trigger : 'item'
				},
				legend : {
					data : legends,
					y : '30px'
				},
				xAxis : {
					type : 'value',
					axisLabel : {
						formatter : '{value}'+xTy
					},
					boundaryGap : [ 0, 0.005 ],
					x:'30px',
					y:'30px'
				},
				yAxis : {
					data : xnames,
					x:'30px',
					y:'130px'
				},
				series : [
				          {
								name : legends,
								type : 'bar',
								data : numbers,
								barMaxWidth:'18px',
								
						        markPoint: {
						        	symbol:'emptypin',
					                data: [
					                    {type: 'max', name: '最大值'},
					                    {type: 'min', name: '最小值'}
					                ]
					            },
					            smooth: true,
								itemStyle:{
									normal:{barBorderRadius:[5, 5, 5, 5]
								}

							}
				          }
				          ]
			};
			myChart.setOption(option);
		}
		
		
		function setTypeOptionX(xTy,titles, legends, xnames, numbers, documentsId,col) {
			var myChart = echarts.init(document.getElementById(documentsId));
			var option = {
					color:[col],
				title : {
					text : titles,
					y : 'top',
					x : '100px'
				},
				toolbox : {
					show : true,
					feature : {
						magicType : {
							show : true,
							type : [ 'line', 'bar' ]
						},
						saveAsImage : {
							show : true
						}
					}
				},
				 grid: {
				        left: '5%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				tooltip : {
					show : true,
					trigger : 'item'
				},
				legend : {
					data : legends,
					y : '30px'
				},
				xAxis : {
					data : xnames,
					boundaryGap : [ 0, 0.005 ],
					x:'30px',
					y:'30px'
				},
				yAxis : {
					type : 'value',
					axisLabel : {
						formatter : '{value}'+xTy
					},
					x:'30px',
					y:'130px'
				},
				series : [
				          {
								name : legends,
								type : 'bar',
								data : numbers,
								barMaxWidth:'18px',
								
						        markPoint: {
						        	symbol:'emptypin',
					                data: [
					                    {type: 'max', name: '最大值'},
					                    {type: 'min', name: '最小值'}
					                ]
					            },
					            smooth: true,
								itemStyle:{
									normal:{barBorderRadius:[5, 5, 5, 5]
								}

							}
				          }
				          ]
			};
			myChart.setOption(option);
		}
		
		
		function setTypeOptionThree(xTy,titles, legends, xnames, numbers, documentsId,col) {
			var myChart = echarts.init(document.getElementById(documentsId));
			var option = {
					color:col,
				title : {
					text : titles,
					y : 'top',
					x : '120px'
				},
				toolbox : {
					show : true,
					feature : {
						magicType : {
							show : true,
							type : [ 'line', 'bar' ]
						},
						saveAsImage : {
							show : true
						}
					}
				},
				 grid: {
				        left: '5%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				tooltip : {
					show : true,
					trigger : 'axis'
				},
				legend : {
					data : legends,
					y : '30px'
				},
				xAxis : {
					data : xnames,
					boundaryGap : [ 0, 0.005 ],
					x:'30px',
					y:'30px'
				},
				yAxis : {
					type : 'value',
					axisLabel : {
						formatter : '{value}'+xTy
					},
					x:'30px',
					y:'130px'
				},
				series : [
				          {
								name : legends,
								type : 'bar',
								data : numbers,
								barMaxWidth:'32px',
								barMinHeight:'2px',
						        markPoint: {
						        	symbol:'emptypin',
					                data: [
					                    {type: 'max', name: '最大值'},
					                    {type: 'min', name: '最小值'}
					                ]
					            },
					            smooth: true,
								itemStyle:{
									normal:{barBorderRadius:[5, 5, 5, 5]
								}

							}
				          }
				         ]
			};
			myChart.setOption(option);
		}