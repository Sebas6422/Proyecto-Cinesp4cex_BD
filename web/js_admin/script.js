$(document).ready(function() {
    // Sidebar
    $('.sidebar-dropdown-menu').slideUp('fast');

    $('.sidebar-menu-item.has-dropdown > a, .sidebar-dropdown-menu-item.has-dropdown > a').click(function(e) {
        e.preventDefault();

        const $parent = $(this).parent();

        if (!$parent.hasClass('focused')) {
            $parent.siblings().find('.sidebar-dropdown-menu').slideUp('fast');
            $parent.siblings().find('.has-dropdown').removeClass('focused');
        }

        $(this).next().slideToggle('fast');
        $parent.toggleClass('focused');
    });

    $('.sidebar-toggle').click(function() {
        $('.sidebar').toggleClass('collapsed');
    });

    $('.sidebar.collapsed').mouseleave(function() {
        $('.sidebar-dropdown-menu').slideUp('fast');
        $('.sidebar-menu-item.has-dropdown, .sidebar-dropdown-menu-item.has-dropdown').removeClass('focused');
    });

    $('.sidebar-overlay').click(function() {
        $('.sidebar').addClass('collapsed');
        $('.sidebar-dropdown-menu').slideUp('fast');
        $('.sidebar-menu-item.has-dropdown, .sidebar-dropdown-menu-item.has-dropdown').removeClass('focused');
    });

    if (window.innerWidth < 768) {
        $('.sidebar').addClass('collapsed');
    }
    // End Sidebar

    // Charts
    const labels = ['Sala 1', 'Sala 2', 'Sala 3', 'Sala 4', 'Sala 5'];

    const salesChart = new Chart($('#sales-chart'), {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                backgroundColor: '#6610f2',
                data: [96, 56, 38, 70, 84, 100],
            }]
        },
        options: {
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    const visitorsChart = new Chart($('#visitors-chart'), {
        type: 'doughnut',
        data: {
            labels: ['Children', 'Teenager', 'Parent'],
            datasets: [{
                backgroundColor: ['#6610f2', '#198754', '#ffc107'],
                data: [40, 60, 80],
            }]
        }
    });
    // End Charts
});
