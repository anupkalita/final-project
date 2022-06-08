
// IIFI
(function(){
    getEventDetails();
})()


// Function to load all Event items
function getEventDetails(){
    const xhr = new XMLHttpRequest();

    xhr.open('GET', 'admin_updateEvent_process.php', true);

    xhr.onload = function(){
        if(this.status === 200){
            
            const data = JSON.parse(this.responseText);
            console.log(data);

            let output = "";
            let tableHead = `
                <tr id="table-head">
                <th>Poster</th>
                <th>Event ID</th>
                <th>Event Name</th>
                <th>Price</th>
                <th>Delete</th>
                </tr>
            `
            data.forEach(function(item){
                output += `
                    <tr>
                        <td><img src="${item.poster}" alt="event_img"></td>
                        <td>${item.event_id}</td>
                        <td>${item.event_name}</td>
                        <td>${item.price}</td>
                        <td><button id="delete-btn">Delete</button></td>
                    </tr>
                    `
            })

            document.querySelector('#table').innerHTML = tableHead + output;
        }
    }

    xhr.send();
}


// function to delete Event item
document.body.addEventListener('click', function(e){

    if(e.target.id === "delete-btn"){
        deleteEvent(e);
    }
})
function deleteEvent(e){


    let Event_id = e.target.parentElement.parentElement.firstElementChild.nextElementSibling.textContent;

    const xhr = new XMLHttpRequest();

    xhr.open('POST', 'admin_updateEvent_process.php', true);

    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

    xhr.onload = function(){
        if(this.status === 200){
            getEventDetails();
        }
    }

    const Event = `Event_id=${Event_id}`;

    xhr.send(Event);
}