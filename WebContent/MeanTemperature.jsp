<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); // 서블릿 컨텍스트페쓰
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MeanTemperature.jsp</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 순서는 꼭 jquery 먼저 -->
<script type="text/javascript" src="<%=cp%>/js/highcharts.js"></script>
<script type="text/javascript" src="<%=cp%>/js/export-data.js"></script>
<script type="text/javascript" src="<%=cp%>/js/exporting.js"></script>
<script type="text/javascript" src="<%=cp%>/js/series-label.js"></script>

<script type="text/javascript">
	$(function()
	{
		Highcharts.chart('container',
		{

			title :
			{
				/* text : 'Solar Employment Growth by Sector, 2010-2016' */
				text : '전국 주요 도시 평균 기온, 2018'
			},

			subtitle :
			{
				/* text : 'Source: thesolarfoundation.com' */
				text : 'Source: http://www.weather.go.kr/'
			},

			yAxis :
			{
				title :
				{
					/* text : 'Number of Employees' */
					text : '평균 기온'
				}
			},
			legend :
			{
				layout : 'vertical',
				align : 'right',
				verticalAlign : 'middle'
			},

			plotOptions :
			{
				series :
				{
					label :
					{
						connectorAllowed : false
					},
					/* pointStart : 2010 */
					pointStart : 1
				}
			},

			series : [
					{
						name : '서울',
						data : [ -4.0, -1.6, 8.1, 13.0, 18.2, 23.1, 27.8, 28.8, 21.5, 13.1, 7.8, -0.6 ]
					},
					{
						name : '대전',
						data : [ -2.5, -0.4, 8.7, 13.9, 19.2, 23.6, 27.9, 29.0, 21.2, 13.0, 8.0, 0.6 ]
					},
					{
						name : '광주',
						data : [ -0.2, 1.8, 10.0, 15.1, 19.5, 23.6, 28.3, 28.4, 21.6, 14.5, 9.9, 3.2 ]
					},
					{
						name : '대구',
						data : [ -0.9, 1.3, 9.2, 15.0, 19.2, 23.6, 28.2, 27.7, 21.0, 14.3, 8.8, 2.0 ]
					},
					{
						name : '제주',
						data : [ 4.9, 5.5, 11.4, 15.9, 19.1, 22.3, 27.3, 28.8, 23.9, 17.9, 13.9, 8.7 ]
					} ],

			responsive :
			{
				rules : [
				{
					condition :
					{
						maxWidth : 500
					},
					chartOptions :
					{
						legend :
						{
							layout : 'horizontal',
							align : 'center',
							verticalAlign : 'bottom'
						}
					}
				} ]
			}

		});
	});
</script>

<div id="container"></div>
</body>
</html>


























