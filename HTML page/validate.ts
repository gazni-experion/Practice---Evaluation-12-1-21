const form = document.querySelector('form')!;
form.addEventListener('submit', event =>{
    event.preventDefault();

    const name = document.getElementById('first-name')
    if(name.value == " "){
        alert("Please enter first name!")
    }

})