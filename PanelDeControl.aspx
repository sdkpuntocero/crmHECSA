<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelDeControl.aspx.cs" Inherits="crmHECSA.PanelDeControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css" />

    <link href="Estilos/PanelDeControl.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <title></title>
</head>
<body>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header text-center">
                    <img class="img-responsive  img-thumbnail" src="Imagenes/nophoto.svg" width="128" />
                </div>

                <ul class="list-unstyled components">

                    <li runat="server" id="li1">
                        <asp:LinkButton ID="lkb_usr_f" runat="server" Text="">
                        </asp:LinkButton>
                    </li>
                    <li>
                        <h6>
                            <asp:LinkButton ID="lkb_usr_fp" runat="server" Text=""></asp:LinkButton>
                        </h6>
                    </li>
                    <li>
                        <h6>
                            <asp:LinkButton ID="lkb_usr_fc" runat="server" Text=""></asp:LinkButton>
                        </h6>
                    </li>
                </ul>

                <ul class="list-unstyled components">
                    <li runat="server" id="li_resumen">
                        <asp:LinkButton ID="lkb_resumen" runat="server" Text="Resumen"></asp:LinkButton>
                    </li>
             
                    <li runat="server" id="li_servicios">
                        <asp:LinkButton ID="lkb_servicios" runat="server" Text="Cotizaciones"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_vnta">
                        <asp:LinkButton ID="lkb_ctrl_vnta" runat="server" Text="Ingresos"></asp:LinkButton>
                    </li>
                      <li runat="server" id="li3">
                        <asp:LinkButton ID="LinkButton2" runat="server" Text="Ordenes de Compra"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_comp">
                        <asp:LinkButton ID="lkb_ctrl_compras" runat="server" Text="Gastos"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_inv">
                        <asp:LinkButton ID="lkb_ctrl_inv" runat="server" Text="Inventario"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_prov">
                        <asp:LinkButton ID="lkb_ctrl_prov" runat="server" Text="Proveedores"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_clte">
                        <asp:LinkButton ID="lkb_ctrl_clte" runat="server" Text="Clientes"></asp:LinkButton>
                    </li>

                    <li runat="server" id="li2">
                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Fiscales"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_usrs">
                        <asp:LinkButton ID="lkb_ctrl_usrs" runat="server" Text="Usuarios"></asp:LinkButton>
                    </li>

                    <li runat="server" id="li_config">
                        <asp:LinkButton ID="lkb_config" runat="server" Text="Configuración"></asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="lkb_salir" runat="server" Text="Salir"></asp:LinkButton>
                    </li>
                </ul>

                <ul class="list-unstyled CTAs">
                    <li>
                        <h6>Google Chrome <i class="fab fa-chrome text-danger"></i></h6>
                    </li>
                </ul>
            </nav>

            <!-- Page Content  -->
            <div id="content">

                <nav class="navbar navbar-expand-lg  uno">
                    <div class="container-fluid">

                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Menu</span>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-justify"></i>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#" title="En Construcción">?</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                    <asp:UpdatePanel ID="up_usr" runat="server" UpdateMode="Conditional">
                    <contenttemplate>
                        <div class="card border-primary" runat="server" id="card_usr" visible="false">
                            <div class="card-header bg-primary">
                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_usuario_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_usuario_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <asp:TextBox CssClass="form-control" ID="i_usuario_buscar" runat="server" placeholder="Buscar Usuario" TextMode="Search" TabIndex="3"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_buscar_usr" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_usuario_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_usuario_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="4" OnClick="lkb_usuario_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_usrs" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="5" PageSize="5" OnRowCommand="gv_usrs_RowCommand" OnRowDataBound="gv_usrs_RowDataBound" OnPageIndexChanging="gv_usrs_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="usuario_ID" HeaderText="ID" SortExpression="usuario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_usr" HeaderText="ID" SortExpression="cod_usr" Visible="true" />
                                                <asp:BoundField DataField="nom_comp" HeaderText="NOMBRE COMPLETO" SortExpression="nom_comp" />
                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                <asp:TemplateField HeaderText="ESTATUS">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddl_usr_estatus" runat="server" AutoPostBack="true">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png">
                                                    <ItemTemplate>
                                                        <asp:Button CssClass="btn btn-warning" ID="btn_infusr" runat="server" Text="Ir" CommandName="btn_usr_ve" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PERFIL">
                                                    <ItemTemplate>
                                                        <asp:Button CssClass="btn btn-warning" ID="btn_usrp" runat="server" Text="Ir" CommandName="btn_usrp" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" Font-Bold="false" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_usr" visible="false">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_area" tabindex="6" required="required">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_perfil" tabindex="7" required="required">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_genero" tabindex="8" required="required">
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <input type="text" class="form-control" runat="server" id="i_nombres" required="required" placeholder="Nombre(s)" tabindex="9" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" class="form-control" runat="server" id="i_apaterno" required="required" placeholder="Apellido Paterno" tabindex="10" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" class="form-control" runat="server" id="i_amaterno" required="required" placeholder="Apellido Materno" tabindex="11" />
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="form-group col-md-4">
                                            <input type="date" class="form-control" runat="server" id="i_nacimiento" required="required" placeholder="Fecha de Nacimiento" tabindex="12" value="null" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="email" class="form-control" runat="server" id="i_emal_p" placeholder="Correo Personal" tabindex="13" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <asp:Button CssClass="btn btn-danger form-control" ID="btn_usr_ctrl" runat="server" Text="Generar datos de control" OnClick="btn_usr_ctrl_Click" TabIndex="14" />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <input type="text" class="form-control" runat="server" id="i_usr" required="required" placeholder="Usuario" tabindex="15" />
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="password" class="form-control" runat="server" id="i_clave" required="required" placeholder="Contraseña" tabindex="16" />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="email" class="form-control" runat="server" id="i_emal_c" required="required" placeholder="Correo Corporativo" tabindex="17" />
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-danger" ID="btn_usr_guarda" runat="server" Text="Guardar" OnClick="btn_usr_guarda_Click" TabIndex="18" Visible="true" />
                                </div>
                            </div>
                        </div>
                    </contenttemplate>
                    <triggers>
                    </triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_configuracion" runat="server" UpdateMode="Conditional">
                    <contenttemplate>
                        <div class="card border-primary" runat="server" id="card_configuracion" visible="false">
                            <div class="card-header bg-primary">Configuración e-mail de envío </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <input type="email" class="form-control" runat="server" id="i_email" required="required" placeholder="e-mail" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_email_usr" required="required" placeholder="Usuario" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_email_clave" required="required" placeholder="Contraseña" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_asunto" required="required" placeholder="Asunto" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_smtp" required="required" placeholder="Servidor SMTP (Gmail)" />
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" runat="server" id="i_puerto" required="required" placeholder="Puerto SMTP" />
                                </div>
                                <asp:Button CssClass="btn btn-danger" ID="btn_ee" runat="server" Text="Guardar" TabIndex="7" Visible="true" OnClick="btn_ee_Click" />
                            </div>
                        </div>
                    </contenttemplate>
                    <triggers>
                    </triggers>
                </asp:UpdatePanel>

                <asp:UpdatePanel ID="up_rpt" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_template" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="Div1" visible="false">
                            <div class="card-header bg-primary">En Construcción </div>
                            <div class="card-body">
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="modal" id="myModal">
            <div class="modal-dialog" role="document">
                <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="modal-content">
                            <div class="modal-header">
                                <asp:Label ID="lblModalTitle" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                <button type="button" class="close" data-dismiss="modal"><span>×</span> </button>
                            </div>
                            <div class="modal-body">
                                <asp:Label ID="lblModalBody" CssClass="login100-form-title" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="modal-footer">

                                <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>
