<head>
<meta charset="UTF-8">
<title>Corrosion Rate Utilites</title>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,700'>

<link rel="stylesheet" href="css/style.css">

<script src="http://code.jquery.com/jquery-latest.js">
	
</script>
<script>
	$(document).ready(function() {
		$('#submitconverter').click(function(event) {
			var corrosionratevaluein = $('#corrosionratevaluein').val();
			var dimensionIn = $('[name=dimensionin]:checked').val();
			var convertTo = $('[name=convertto]:checked').val();
			if (dimensionIn == convertTo) {
				alert("Cannot have same unit");
				return false;
			}
			console.log(corrosionratevaluein + dimensionIn + convertTo);
			$.get('corrosionrate', {
				corrosionratevalue : corrosionratevaluein,
				dimensionin : dimensionIn,
				convertto : convertTo
			}, function(responseText) {
				$('#convertvalue').text(responseText);
			});
		});
	});
</script>
</head>
<div class="container">
	<section id="fancyTabWidget" class="tabs t-tabs">
		<ul class="nav nav-tabs fancyTabs" role="tablist">

			<li class="tab fancyTab active">
				<div class="arrow-down">
					<div class="arrow-down-inner"></div>
				</div> <a id="tab0" href="#tabBody0" role="tab" aria-controls="tabBody0"
				aria-selected="true" data-toggle="tab" tabindex="0"><span
					class="fa fa-exchange"></span><span class="hidden-xs">Corrosion
						Rate Converter</span></a>
				<div class="whiteBlock"></div>
			</li>

			<li class="tab fancyTab">
				<div class="arrow-down">
					<div class="arrow-down-inner"></div>
				</div> <a id="tab1" href="#tabBody1" role="tab" aria-controls="tabBody1"
				aria-selected="true" data-toggle="tab" tabindex="0"><span
					class="fa fa-calculator"></span><span class="hidden-xs">Corrosion
						Rate Calculator</span></a>
				<div class="whiteBlock"></div>
			</li>

		</ul>
		<div id="myTabContent" class="tab-content fancyTabContent"
			aria-live="polite">
			<div class="tab-pane  fade active in" id="tabBody0" role="tabpanel"
				aria-labelledby="tab0" aria-hidden="false" tabindex="0">
				<div>
					<div class="row">

						<div class="col-md-12">
							<h2>This is the Corrosion Rate Converter.</h2>
							<p>To determine the remaining life of equipment, for example,
								the oil refining industry, the "corrosion rate" parameter of the
								wall material is used. For practical purposes, as a rule, the
								dimension [mm / year] is used. However, in the technical
								literature, other dimensions of the rate of corrosion are often
								encountered. This causes certain inconveniences. To convert one
								dimension to another, you need to calculate by a special
								formula. The presented application makes this calculation. The
								result of calculations is displayed on the screen. Для
								определения остаточного ресурса оборудования, например,
								нефтеперерабатывающей промышленности, используется показатель
								"скорость коррозии" материала стенок. Для практических целей,
								как правило, используется размерность [мм/год]. Однако, в
								технической литературе часто встречаются другие размерности
								скорости коррозии. Это вызывает определенные неудобства. Чтобы
								перевести одну размерность в другую, необходимо произвести
								расчет по специальной формуле. Представленное приложение
								производит данный расчет. Результат расчеты выводится на экран.
							</p>
						</div>
					</div>
					<div class="center">
						<form class="form-horizontal" role="form" align="center">
						
							<table>
								<tr>
									<td><input type="text" id="corrosionratevaluein" name="corrosionratevalue" placeholder="Corrosion Rate In"></td>
									<td><input type="radio" name="dimensionin" id="dimensionin" value="mpy">mpy(mils per year)<br>
										<input type="radio" name="dimensionin" id="dimensionin" value="ipy">ipy(inch per year)<br>
										<input type="radio" name="dimensionin" id="dimensionin" value="ipm">ipm(inch per month)<br>
										<input type="radio" name="dimensionin" id="dimensionin"	value="gsm2h">g/(sm<sup>2</sup>&times;h)</td>
								</tr>
								<tr></tr>
								<tr></tr>
								<tr></tr>
								<tr>
									<td><br> <label for="convert">Convert To</label></td>
									<td><br> <input type="radio" name="convertto" id="convertto" value="mmyear">mm/year<br>
								</tr>
								<tr>
									<td><br> <input type="button" id="submitconverter"
										value='Convert'></td>
								</tr>
							</table>
							
							<div id="convertvalue"></div>
						</form>
					</div>
				</div>


			</div>
			<div class="tab-pane  fade" id="tabBody1" role="tabpanel"
				aria-labelledby="tab1" aria-hidden="true" tabindex="0">
				<div class="row">

					<div class="col-md-12">
						<h2>This is the Corrosion Rate Calculator.</h2>
						<p>When operating various equipment in corrosive process
							environments, such as the oil refining industry, it is often
							necessary to determine the rate of corrosion of the equipment
							material. This is necessary to predict the residual life of the
							equipment and its safe operation. To determine the rate of
							corrosion, it is possible to use samples that are placed in the
							process medium by means of special devices. After the tests, it
							is possible to calculate the corrosion rate of the sample by the
							formula. This application allows you to make such calculations
							and display the calculation results on the screen. При
							эксплуатации различного оборудования в коррозионно-агрессивных
							технологический средах, например, нефтеперерабатывающей отрасли,
							часто бывает необходимо определить скорость коррозии материала
							оборудования. Это необходимо для прогнозирования остаточного
							ресурса оборудования и его безопасной эксплуатации. Для
							определения скорости коррозии возможно использование образцов,
							устанавливаемых в технологическую среду при помощи специальных
							приспособлений. После испытаний возможно расчитать скорость
							коррозии образца по формуле. Данное приложение позволяет
							произвести такие вычисления и вывести результаты расчета на
							экран.</p>

					</div>
					<div class="row">
						<div class="col-md-6 col-sm-6 vcenter">
							<img src="images/sample.png" width="250" height="250" border="1"
								alt="Sample" title="Sample">
						</div>

						<div class="col-md-6 col-sm-6 vcenter">
							<form>
								<table>
									
									<tr>
										<td><input type="text" id="samplelength"
											name="samplelength" placeholder="Length of Sample"></td>
										<td>, mm</td>
									</tr>
									<tr>
										<td><input type="text" id="samplewidth"
											name="samplewidth" placeholder="Width of Sample"></td>
										<td>, mm</td>
									</tr>
									<tr>
										<td><input type="text" id="samplethickness"
											name="samplethickness" placeholder="Thickness of Sample"></td>
										<td>, mm</td>
									</tr>
									<tr>
										<td><input type="text" id="holediameter"
											name="holediameter" placeholder="Diameter of Hole"></td>
										<td>, mm</td>
									</tr>
									<tr>
										<td><input type="text" id="initialmass"
											name="initialmass" placeholder="Initial Mass"></td>
										<td>, g</td>
									</tr>
									<tr>
										<td><input type="text" id="finalmass" name="finalmass"
											placeholder="Final Mass"></td>
										<td>, g</td>
									</tr>
									<tr>
										<td><input type="button" id="submit" value='Calculate'></td>
									</tr>
									

								</table>
								<div id="calculatevalue"></div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>

	</section>
</div>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

<script src="js/index.js"></script>

</body>