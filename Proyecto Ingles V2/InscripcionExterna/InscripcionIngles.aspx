﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="InscripcionIngles.aspx.cs" Inherits="Proyecto_Ingles_V2.InscripcionExterna.InscripcionIngles" async="true"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Inscripcion Ingles Autonomo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.5/dist/sweetalert2.all.min.js" type="text/javascript"></script>
    <link href="../Content/sweetalert.css" rel="stylesheet"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="../Styles/MyStyle.css" rel="stylesheet" type="text/css" />


    <style>
        .switch {
  position: relative;
  display: inline-block;
  width: 50px;
  height: 20px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 12px;
  width: 12px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
    </style>
</head>
<body>
    <form runat="server">
           <!--header-->
          <nav class="navbar-head">
            <div style="float:left;width:15%;height:100%;" class="nomAplicacion">
           <a href="../Login/formLogin.aspx">
               <asp:Image src="../images/logo-sek-2.png" alt="Dont exist image" runat="server" style="width:100%;height:100%"/>
            </a>
            </div>
              <p style="float:right">
               REGISTRO INGLES AUTÓNOMO
              </p>
               <br />
              <br />
          </nav>
        <nav class="subnav">
        <div style="height:50px">
        </div>
        </nav>
        <!--fin header-->
<br />
<br />
      <div>
   <div class="container" >
    <h1 class="well" style="text-align:center">FORMULARIO DE REGISTRO</h1>
	<div class="col-lg-12 well">
	<div class="row">
					<div class="col-sm-12">
                        <div class="form-group">
                                <asp:Label ID="Label2" runat="server"  Text="Período de Inscripción" Style="font-weight:bold"></asp:Label>
                                <asp:DropDownList ID="cbxPeriodoLectivo" runat="server" AutoPostBack="true" class="form-control" >
                                </asp:DropDownList>
                        </div>
       
                       
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server"  Text="Estudiante UISEK:" Style="font-weight:bold"></asp:Label>
                              <label class="switch">
                              <input type="checkbox" runat="server" id="RabTipoEstudiante" />
                              <span class="slider round"></span>
                            </label>
                        </div>

                        <div class="form-group" >
                            <label>Tipo Documento :</label>
                           <asp:RadioButton runat="server" name="rb" GroupName="RdgDocuemnto" Text="CÉDULA" ID ="RabCedula" Checked="true" OnCheckedChanged="RabCedula_CheckedChanged" AutoPostBack="true"></asp:RadioButton>
                            <asp:RadioButton runat="server" name="rb" GroupName="RdgDocuemnto" Text="PASAPORTE "  ID ="RabPasaporte" AutoPostBack="true" OnCheckedChanged="RabPasaporte_CheckedChanged"></asp:RadioButton> 
                        </div>
                        <div class="row">
						<div class="form-group  col-sm-6">
								<label>Identificación</label>
								<asp:TextBox type="text" placeholder="Ingrese su número de identificación" class="form-control" runat="server" ID="txtCed" required="required" ></asp:TextBox>
                                 <asp:Label ID="lblCedula"  style="width:100%;color:red;border:hidden"  runat="server" Text="" ></asp:Label>
						</div>
                        <div class="form-group col-sm-6">
						<label>Correo Electrónico</label>
						<asp:TextBox type="text" placeholder="Ingrese su correo electrónico" class="form-control" runat="server" ID="txtEmail" required="required"></asp:TextBox>	
					    </div>
                            </div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Nombres</label>
								<asp:TextBox placeholder="Ingrese sus Nombres" class="form-control" required="required" runat="server" ID="txtNombres"></asp:TextBox>
							</div>
							<div class="col-sm-6 form-group">
								<label>Apellidos</label>
								<asp:TextBox type="text" placeholder="Ingrese sus Apellidos" class="form-control" runat="server" ID="txtApellidos" required="required"></asp:TextBox>
							</div>
						</div>

                        <div class="row">
						<div class="col-sm-6 form-group">
								<label>Celular</label>
								<asp:TextBox type="text" placeholder="Ingrese su celular" class="form-control" runat="server" ID="txtCelular" required="required" MaxLength="10" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>	
						</div>						
					    <div class="col-sm-6 form-group">
						    <label>Teléfono Convencional</label>
						    <asp:TextBox type="text" placeholder="Ingrese su teléfono Convencional" class="form-control" runat="server" id="txtTelefono" required="required" MaxLength="9" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>	
					    </div>	
                       </div>
                    <div class="row">
                    <div class="form-group col-sm-6">
							<label>Dirección Domiciliaria</label>
							<asp:TextBox placeholder="Ingrese su Dirección" class="form-control" runat="server" id="txtDireccion" TextMode="MultiLine" required="required"></asp:TextBox>
						</div>    
                        <div class="form-group col-sm-6">
                            <label>Solicitar Información</label>
						    <asp:TextBox type="text" placeholder="Ingrese sus preguntas aqui" class="form-control" runat="server" ID="txtInformacion" TextMode="MultiLine" ></asp:TextBox>	
                        </div>
                        </div>
                    <div class="row">
                        <div class="col-sm-4 form-group"> 
                                     <label>Rendir Exámen de Ubicación</label>
                            <label class="switch">
                              <input type="checkbox" runat="server" id="RabExamen"/>
                              <span class="slider round"></span>
                            </label>
                            </div>
                    </div>
                       <asp:HiddenField ID="correcto" runat="server" />
					<asp:button type="button" class="btn btn-lg btn-success" runat="server" Text="Enviar" id="btnGuardar" OnClick="btnGuardarInscrito_Click" ></asp:button>					
					</div>                   
				</div>                
	</div>
	</div>
        </div>
     <div class="footer-content" style="padding:0.5%;">
    <footer >
        <p style="color:white"><span class="glyphicon glyphicon-copyright-mark"></span> 2021 - Recursos Tecnológicos </p>
    </footer>
    </div> 
    </form>
</body>
 </html>

	<script type="text/javascript">



        var tipodoc = -1;
        var correcto = -1;

        function confirm() {

            Swal.fire({
                icon: 'success',
                title: 'OK',
                text: 'Registro Correcto Revise su correo!',
                footer: '<a href></a>'
            })
        }
        function rechazado() {

            Swal.fire({
                icon: 'error',
                title: 'error',
                text: 'Registro No se pudo Guardar',
                footer: '<a href></a>'
            })
        }
        $("document").ready(function () {
            /*si es cedula*/
            if ($("#<%=RabCedula.ClientID%>").is(':checked')) {
                tipodoc = 1;
            }
            /*si es pasaporte*/
            else if ($("#<%=RabPasaporte.ClientID%>").is(':checked')) {
            tipodoc = 2;
        } else {
            $('#<%=RabCedula.ClientID%>').prop('checked', true);
            tipodoc = 1;
            }


        });
        $("#txtCed").blur(function () {

            if($('#<%=RabTipoEstudiante.ClientID%>').is(':checked'))
            {
                traerDatosAlumno();
            } 
            
            /**
               * Algoritmo para validar cedulas de Ecuador
               * @Pasos  del algoritmo
               * 1.- Se debe validar que tenga 10 numeros
               * 2.- Se extrae los dos primero digitos de la izquierda y compruebo que existan las regiones
               * 3.- Extraigo el ultimo digito de la cedula
               * 4.- Extraigo Todos los pares y los sumo
               * 5.- Extraigo Los impares los multiplico x 2 si el numero resultante es mayor a 9 le restamos 9 al resultante
               * 6.- Extraigo el primer Digito de la suma (sumaPares + sumaImpares)
               * 7.- Conseguimos la decena inmediata del digito extraido del paso 6 (digito + 1) * 10
               * 8.- restamos la decena inmediata - suma / si la suma nos resulta 10, el decimo digito es cero
               * 9.- Paso 9 Comparamos el digito resultante con el ultimo digito de la cedula si son iguales todo OK sino existe error.     
            */
            if (tipodoc == 1) {
            var cedula = $("#txtCed").val();
            //Preguntamos si la cedula consta de 10 digitos
            if (cedula.length == 10) {

                //Obtenemos el digito de la region que sonlos dos primeros digitos
                var digito_region = cedula.substring(0, 2);

                //Pregunto si la region existe ecuador se divide en 24 regiones
                if (digito_region >= 1 && digito_region <= 24) {

                    // Extraigo el ultimo digito
                    var ultimo_digito = cedula.substring(9, 10);

                    //Agrupo todos los pares y los sumo
                    var pares = parseInt(cedula.substring(1, 2)) + parseInt(cedula.substring(3, 4)) + parseInt(cedula.substring(5, 6)) + parseInt(cedula.substring(7, 8));

                    //Agrupo los impares, los multiplico por un factor de 2, si la resultante es > que 9 le restamos el 9 a la resultante
                    var numero1 = cedula.substring(0, 1);
                    var numero1 = (numero1 * 2);
                    if (numero1 > 9) { var numero1 = (numero1 - 9); }

                    var numero3 = cedula.substring(2, 3);
                    var numero3 = (numero3 * 2);
                    if (numero3 > 9) { var numero3 = (numero3 - 9); }

                    var numero5 = cedula.substring(4, 5);
                    var numero5 = (numero5 * 2);
                    if (numero5 > 9) { var numero5 = (numero5 - 9); }

                    var numero7 = cedula.substring(6, 7);
                    var numero7 = (numero7 * 2);
                    if (numero7 > 9) { var numero7 = (numero7 - 9); }

                    var numero9 = cedula.substring(8, 9);
                    var numero9 = (numero9 * 2);
                    if (numero9 > 9) { var numero9 = (numero9 - 9); }

                    var impares = numero1 + numero3 + numero5 + numero7 + numero9;

                    //Suma total
                    var suma_total = (pares + impares);

                    //extraemos el primero digito
                    var primer_digito_suma = String(suma_total).substring(0, 1);

                    //Obtenemos la decena inmediata
                    var decena = (parseInt(primer_digito_suma) + 1) * 10;

                    //Obtenemos la resta de la decena inmediata - la suma_total esto nos da el digito validador
                    var digito_validador = decena - suma_total;

                    //Si el digito validador es = a 10 toma el valor de 0
                    if (digito_validador == 10)
                        var digito_validador = 0;

                    //Validamos que el digito validador sea igual al de la cedula
                    if (digito_validador == ultimo_digito) {
                        $("#lblCedula").hide();
                        correcto = 1;
                        $("#<%=correcto.ClientID%>").val(correcto);
                    } else {
                        $("#<%=lblCedula.ClientID%>").text("");
                        $("#<%=lblCedula.ClientID%>").text("La cédula es incorrecta");
                        $("#<%=lblCedula.ClientID%>").show();
                        correcto = 0;
                        $("#<%=correcto.ClientID%>").val(correcto);
                    }

                } else {
                    // imprimimos en consola si la region no pertenece
                    $("#<%=lblCedula.ClientID%>").text("");
                    $("#<%=lblCedula.ClientID%>").text("Esta cedula no pertenece a ninguna region");
                    $("#<%=lblCedula.ClientID%>").show();
                    correcto = 0;
                    $("#<%=correcto.ClientID%>").val(correcto);

                }
            } else {
                //imprimimos en consola si la cedula tiene mas o menos de 10 digitos
                $("#<%=lblCedula.ClientID%>").text("");
                $("#<%=lblCedula.ClientID%>").text("Esta cedula tiene menos de 10 Digitos");
                 $("#<%=lblCedula.ClientID%>").show();
                correcto = 0;
                $("#<%=correcto.ClientID%>").val(correcto);
                }
            } else {
                correcto = -1;
                $("#<%=correcto.ClientID%>").val(correcto);
            }
        });


            function solonumeros(e) {

            var key;

            if (window.event) // IE
            {
                key = e.keyCode;
            }
            else if (e.which) // Netscape/Firefox/Opera
            {
                key = e.which;
            }

            if (key < 48 || key > 57) {
                return false;
            }
 
            return true;
        }

        function traerDatosAlumno() {
            var cedula = $("#<%=txtCed.ClientID%>").val();

            //var cedula = document.getElementById("txt_identificacion").value;
            if (cedula != "") {
                $.ajax({
                    type: "POST",
                    url: '../ServicioEstudiante.asmx/BuscaEstudiante',
                    contentType: "application/json; charset=utf-8",
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}",
                    },
                    data: JSON.stringify({ cedula: cedula }),
                    dataType: "json",
                    success: function (response, status,data) {
                        //alert("entro 2 " + response.d);

                        var resp = response.d;

                        //alert(resp);
                        if (resp != "" && !resp.includes("No Existe")) {

                            $('#<%=txtNombres.ClientID%>').val(resp[0]);
                            $('#<%=txtApellidos.ClientID%>').val(resp[1]);
                            $('#<%=txtDireccion.ClientID%>').val(resp[2]);
                            $('#<%=txtCelular.ClientID%>').val(resp[3]);
                            $('#<%=txtTelefono.ClientID%>').val(resp[4]);
                            $('#<%=txtEmail.ClientID%>').val(resp[5]);
                            //  $('#txt_nombreCodirector').attr('disabled', 'disabled');
                        }
                        else {
                            alert("La cédula ingresada no existe como alumno.");
                            $('#txt_identificacion').val("");
                            $('#txt_nombre').val("");
                            $('#hd_codcarr').val("");
                            $('#txt_carrera').val("");
                            $('#txt_nivel').val("");

                        }
                    }, statusCode: {
                        404: function (content) { alert('cannot find resource'); },
                        500: function (content) { alert('internal server error'); }
                    },
                    error: function (xhr, status, error) {
                        alert("Error ");
                    }
                });
            }



        }

        




    </script>


