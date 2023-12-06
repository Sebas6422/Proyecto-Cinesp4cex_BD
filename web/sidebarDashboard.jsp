<%@page import="Model.Empleados" %>
<%
    Empleados emp = (Empleados) session.getAttribute("usuarioE");
   %>
<div class="sidebar position-fixed top-0 bottom-0 bg-white border-end">
    <div class="d-flex align-items-center p-3">
        <a href="#" class="sidebar-logo text-uppercase fw-bold text-decoration-none text-indigo fs-4">Cine Sp4cex</a>
        <i class="sidebar-toggle ri-arrow-left-circle-line ms-auto fs-5 d-none d-md-block"></i>
    </div>
    <ul class="sidebar-menu p-3 m-0 mb-0">
        <li class="sidebar-menu-item active">
            <a href="dashboard_admin.jsp">
                <i class="ri-dashboard-line sidebar-menu-item-icon"></i>
                Dashboard
            </a>
        </li>
        <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Menú</li>
        <li class="sidebar-menu-item has-dropdown">
            <a href="#">
                <i class="ri-user-line sidebar-menu-item-icon"></i>
                Personal
                <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
            </a>
            <ul class="sidebar-dropdown-menu">
                <li class="sidebar-dropdown-menu-item">
                    <a href="usuario_admin.jsp">
                        Usuarios
                    </a>
                </li>
                <li class="sidebar-dropdown-menu-item">
                    <a href="empleado_admin.jsp">
                        Trabajadores
                    </a>
                </li>
            </ul>
        </li>
        <li class="sidebar-menu-item has-dropdown">
            <a href="#">
                <i class="ri-user-line sidebar-menu-item-icon"></i>
                Funciones
                <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
            </a>
            <ul class="sidebar-dropdown-menu">
                <li class="sidebar-dropdown-menu-item">
                    <a href="cartelera_admin.jsp">
                        Cartelera
                    </a>
                </li>
                <li class="sidebar-dropdown-menu-item">
                    <a href="dulceria_admin.jsp">
                        Dulceria
                    </a>
                </li>
                <li class="sidebar-dropdown-menu-item">
                    <a href="Promociones_admin.jsp">
                        Promociones
                    </a>
                </li>
            </ul>
        </li>

        <li class="sidebar-menu-item has-dropdown">
            <a href="#">
                <i class="ri-shopping-cart-2-line sidebar-menu-item-icon"></i>
                Analisis
                <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
            </a>
            <ul class="sidebar-dropdown-menu">
                <li class="sidebar-dropdown-menu-item has-dropdown">
                    <a href="#">
                        Ingresos
                        <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                    </a>
                    <ul class="sidebar-dropdown-menu">
                        <li class="sidebar-dropdown-menu-item">
                            <a href="ingreso_dulceria.jsp">
                                Ingreso Dulceria
                            </a>
                        </li>

                        <li class="sidebar-dropdown-menu-item">
                            <a href="ingreso_entrada.jsp">
                                Ingreso Entradas
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="sidebar-dropdown-menu-item">
                    <a href="rh_admin.jsp">
                        Recursos Humanos
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</div>

