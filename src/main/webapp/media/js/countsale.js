$('#submit').click(function() {
	$('#container').highcharts({
		chart: {
			renderTo: 'container',
			type: 'column',
			events: {
				load: function() {
					var series1 = this.series[0];
					var data1 = [];
					data1.push(['东城',parseFloat($(".text1")[0].value)]);
					data1.push(['西城', parseFloat($(".text1")[1].value)]);
					data1.push(['朝阳', parseFloat($(".text1")[2].value)]);
					data1.push(['海淀', parseFloat($(".text1")[3].value)]);
					data1.push(['丰台', parseFloat($(".text1")[4].value)]);
					data1.push(['通州', parseFloat($(".text1")[5].value)]);
					series1.setData(data1);
					
					var series2 = this.series[1];
					var data2 = [];
					data2.push(['东城',parseFloat($(".text2")[0].value)]);
					data2.push(['西城', parseFloat($(".text2")[1].value)]);
					data2.push(['朝阳', parseFloat($(".text2")[2].value)]);
					data2.push(['海淀', parseFloat($(".text2")[3].value)]);
					data2.push(['丰台', parseFloat($(".text2")[4].value)]);
					data2.push(['通州', parseFloat($(".text2")[5].value)]);
					series2.setData(data2);
				}
			}
		},
		title: {
			text: '月平均出售量'
		},
		subtitle: {
			text: '数据来源: HouseManager'
		},
		xAxis: {
			categories: [
				'东城',
				'西城',
				'朝阳',
				'海淀',
				'丰台',
				'通州',
			],
			crosshair: true
		},
		yAxis: {
			min: 0,
			title: {
				text: '出售量'
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
				'<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
				name: '出售数量',
				data: [0, 0, 0, 0, 0, 0]
			}, {
				name: '单价/万',
				data: [0, 0, 0, 0, 0, 0]
			}
			]
	});
});