// Escuchar eventos de cambio en los checkboxes
const checkboxes = document.querySelectorAll('input[type="checkbox"]');
checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function () {
        const row = this.parentElement.parentElement;
        const name = row.firstElementChild.textContent;
        const passedInterview = row.querySelector('#entrevista' + (Array.from(row.parentElement.children).indexOf(row) + 1));
        const deliveredCV = row.querySelector('#cv' + (Array.from(row.parentElement.children).indexOf(row) + 1));
        
        console.log(`Candidato: ${name}`);
        console.log(`Pasó la entrevista: ${passedInterview.checked ? 'Sí' : 'No'}`);
        console.log(`Entregó su CV: ${deliveredCV.checked ? 'Sí' : 'No'}`);
    });
});
