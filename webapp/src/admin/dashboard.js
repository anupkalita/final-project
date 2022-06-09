(function () {
  const xhr = new XMLHttpRequest();

  xhr.open("GET", "dashboard_process.php", true);

  xhr.onload = function () {
    if (this.status === 200) {
      const data = JSON.parse(this.responseText);
      console.log(data);
      let output = "";

      data.forEach(function (item) {
        output += `
        <div class="item">
        <img src="${item.poster}" alt="${item.event_name}">
        <div class="item-desc">
            <h3>${item.event_name.toUpperCase()}</h3>
            <p><i class="fas fa-rupee-sign"></i> ${item.price}</p>
        </div>
        <div>
            <button class="item-btn">${item.date_time.substring(0,10)}, <span style="color:black"> \u00A0${item.date_time.substring(10,19)}<span></button>
            <span id="food-id">${item.event_id}</span>
        </div>
        </div>
        `;
      });

      document.querySelector('#display-category').innerHTML = output;
      displayDetails();
    }
  };

  xhr.send();
  displayDetails();
})();


function displayDetails(){
  const xhr = new XMLHttpRequest();

    xhr.open("GET", "dashboard_details_process.php", true);
    xhr.onload = function(){
        if(this.status === 200){
            
            const data = JSON.parse(this.responseText);
            console.log(data);

            let output = `
                    <div class="dashboard-item">
                        <h2>Total Orders</h2>
                        <p>${data.total_orders}</p>
                    </div>
                    <div class="dashboard-item">
                        <h2>Total Events</h2>
                        <p>${data.total_event}</p>
                    </div>
                    <div class="dashboard-item">
                        <h2>Total Customers</h2>
                        <p>${data.total_customer}</p>
                    </div>
                    <div class="dashboard-item">
                        <h2>Total Revenue</h2>
                        <p><i class="fas fa-rupee-sign"></i> ${data.revenue}</p>
                    </div>
            `;

            document.querySelector('#dashboard').innerHTML = output;

        }
    }

    xhr.send();
}