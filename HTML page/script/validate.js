const fname = document.getElementById('first-name')

const form = document.getElementById('form')
const errorElement = document.getElementById('error')

form.addEventListener('submit', e=>{
    let messages = []
    if (fname.value === ''){
        messages.push("Name is requiered")
    }

    if(messages.length > 0){
        e.preventDefault()
        errorElement.innerText = messages.join(' , ')
    }


})