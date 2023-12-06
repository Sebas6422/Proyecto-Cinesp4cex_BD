<%-- 
    Document   : dulceria_usuario
    Created on : 6 oct. 2023, 23:22:52
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css_usuario/estilos_inicio.min.css">



    <title>Cine Sp4cex</title>
</head>
<body>
    <!-- start: Sidebar -->
    <%@include file="sidebarDashboard.jsp" %>
    
    <div class="sidebar-overlay"></div>
    <!-- end: Sidebar -->


    <!-- start: Main -->
    <main class="bg-light">
        <div class="p-2">
            <%@include file="perfilAdmin.jsp" %>

            <div style="margin-left: 50px;">


                <section class="avisos">
                    <div class="cards">
                        <div class="card">
                            <div class="card-body">
                                <div class="texto">
                                    <h1 class="card-title">3</h1> 
                                    <h3 class="card-subtitle mb-2 text-body-secondary">Registros Marcados</h3>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="#" class="card-link">Mayor Info</a>
                            </div>
                        </div>

                        <div class="card" >
                            <div class="card-body">
                                <div class="texto">
                                    <h1 class="card-title">0</h1> 
                                    <h3 class="card-subtitle mb-2 text-body-secondary">Registros Completados</h3>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="#" class="card-link">Mayor Info</a>
                            </div>
                        </div>

                        <div class="card" >
                            <div class="card-body">
                                <div class="texto">
                                    <h1 class="card-title">3</h1> 
                                    <h3 class="card-subtitle mb-2 text-body-secondary">Registros por Completar</h3>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="#" class="card-link">Mayor Info</a>
                            </div>
                        </div>

                        <div class="card " >
                            <div class="card-body">
                                <div class="texto">
                                    <h1 class="card-title">3</h1> 
                                    <h3 class="card-subtitle mb-2 text-body-secondary">usuarios sin marcar asistencia</h3>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="#" class="card-link">Mayor Info</a>
                            </div>
                        </div>
                    </div>

                    <div class="cronograma">
                        <table class="table">
                            <tr class="titulos">
                                <th>Personal</th>
                                <th>SÃ</th>
                                <th>DO</th>
                                <th>LU</th>
                                <th>MA</th>
                                <th>MI</th>
                                <th>JU</th>
                                <th>VI</th>
                                <th>SÃ</th>
                                <th>DO</th>
                                <th>LU</th>
                                <th>MA</th>
                                <th>MI</th>
                                <th>JU</th>
                                <th>VI</th>
                                <th>SÃ</th>
                                <th>DO</th>
                                <th>LU</th>
                                <th>MA</th>
                                <th>MI</th>
                                <th>JU</th>
                                <th>VI</th>
                                <th>SÃ</th>
                                <th>DO</th>
                                <th>LU</th>
                                <th>MA</th>
                                <th>MI</th>
                                <th>JU</th>
                                <th>VI</th>
                                <th>SÃ</th>
                                <th>DO</th>
                                <th>LU</th>
                            </tr>
                            <tr>
                                <th></th>
                                <th>01</th>
                                <th>02</th>
                                <th>03</th>
                                <th>04</th>
                                <th>05</th>
                                <th>06</th>
                                <th>07</th>
                                <th>08</th>
                                <th>09</th>
                                <th>10</th>
                                <th>11</th>
                                <th>12</th>
                                <th>13</th>
                                <th>14</th>
                                <th>15</th>
                                <th>16</th>
                                <th>17</th>
                                <th>18</th>
                                <th>19</th>
                                <th>20</th>
                                <th>21</th>
                                <th>22</th>
                                <th>23</th>
                                <th>24</th>
                                <th>25</th>
                                <th>26</th>
                                <th>27</th>
                                <th>28</th>
                                <th>29</th>
                                <th>30</th>
                                <th>31</th>
                            </tr>
                            <tr>
                                <th>Gabriel</th>
                                <th><i class="fa-solid fa-t"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-t"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                            </tr>
                            <tr>
                                <th>Jhon</th>
                                <th><i class="fa-solid fa-t"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-t"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                            </tr>
                            <tr>
                                <th>Jose</th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-t"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                            </tr>
                            <tr>
                                <th>Miguel</th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-t"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                            </tr>
                            <tr>
                                <th>Luis</th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                            </tr>
                            <tr>
                                <th>Carlos</th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-check"></i></th>
                                <th><i class="fa-solid fa-x"></i></th>
                            </tr>
                        </table>
                    </div>


                    <div class="cronograma-registro">
                        <table class="table">
                            <tr class="titulos">
                                <th>Personal</th>
                                <th>ASISTENCIA</th>
                                <th>TARDANZAS</th>
                                <th>FALTAS</th>
                            </tr>
                            <tr>
                                <th>Gabriel Phoenix</th>
                                <th>26 <i class="fa-solid fa-check"></i></th>
                                <th>2 <i class="fa-solid fa-t"></i></th>
                                <th>4 <i class="fa-solid fa-x"></i></th>
                            </tr>
                            <tr>
                                <th>Jhon Michael</th>
                                <th>26 <i class="fa-solid fa-check"></i></th>
                                <th>2 <i class="fa-solid fa-t"></i></th>
                                <th>4 <i class="fa-solid fa-x"></i></th>
                            </tr>
                            <tr>
                                <th>Jose Espinosa</th>
                                <th>24 <i class="fa-solid fa-check"></i></th>
                                <th>1 <i class="fa-solid fa-t"></i></th>
                                <th>5 <i class="fa-solid fa-x"></i></th>
                            </tr>
                            <tr>
                                <th>Miguel Caceres</th>
                                <th>26 <i class="fa-solid fa-check"></i></th>
                                <th>1 <i class="fa-solid fa-t"></i></th>
                                <th>4 <i class="fa-solid fa-x"></i></th>
                            </tr>
                            <tr>
                                <th>Luis Merengues</th>
                                <th>24 <i class="fa-solid fa-check"></i></th>
                                <th>0 <i class="fa-solid fa-t"></i></th>
                                <th>6 <i class="fa-solid fa-x"></i></th>
                            </tr>
                            <tr>
                                <th>Carlos Sosa</th>
                                <th>16 <i class="fa-solid fa-check"></i></th>
                                <th>0 <i class="fa-solid fa-t"></i></th>
                                <th>15 <i class="fa-solid fa-x"></i></th>
                            </tr>
                        </table>
                    </div>
                </section>
            </div>

    </main>
    <!-- end: Main -->



</body>
</html>