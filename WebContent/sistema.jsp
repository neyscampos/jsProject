<!doctype html>
<html lang="en">
  <head>
    <title>Projeto teste lista em javascript!</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    
        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    
    
	<script>
	
	$(document).ready(function() {

		var gnome = new Array();

		function init() {
			gnome[0] = "Ilan";
			gnome[1] = "Juliana";
			gnome[2] = "Carlos";
			gnome[3] = "Chaveco";
			gnome[4] = "Luciana";
		}

		function resgate() {
			vnome = $("#nome").val();
		}

		function armazena() {
			gnome.push(vnome);
		}

		function mostra() {
			$(".saida").html(gnome.join(" </br>"));
		}

		function tamanho() {
			return gnome.length;
		}

		function limpar() {
			$("#nome").val("");
		}

		function existe() {
			try {
				resgate();
				var pos = gnome.indexOf(vnome);
				if (pos < 0)
					throw "Não encontrado";
				$(".saida2").html("<b> Encontrado na posição :" + pos);
				return pos;
			} catch (e) {
				flag = -1;
				$(".saida2").html("<b> Não encontrado");
				limpar();
				return -1;
			}
		}

		function excluir() {
			var pos = existe();
			if (pos >= 0)
				gnome.splice(pos, 1);
		}

		init();
		$("#btn1").on('click', function() {
			resgate();
			armazena();
			limpar();
		});

		$("#btn2").on('click', function() {
			mostra();
		});

		$("#btn3").on('click', function() {
			$(".saida2").html("<b>Quantidade " + tamanho());
		});

		$("#btn4").on('click', function() {
			existe();
		});

		$("#btn5").on('click', function() {
			excluir();
			mostra();
		});
	});
	</script>    
  </head>
  <body>
    <h1>Projeto teste lista em javascript!</h1>

    

	<form id="form1" name="form1">
		Nome<br /> <input type="text" name="nome" id="nome" size="50" /> <br />
		<hr />
		<br />
		<button id="btn1" type="button" class="btn btn-primary">Armazena</button>
		<button id="btn2" type="button" class="btn btn-info">Mostra</button>
		<button id="btn3" type="button" class="btn btn-info">Tamanho</button>
		<button id="btn4" type="button" class="btn btn-info">Posicao</button>
		<button id="btn5" type="button" class="btn btn-danger">Excluir</button>
		<div class="saida"></div>
		<div class="saida2"></div>

	</form>
  
  </body>
</html>

