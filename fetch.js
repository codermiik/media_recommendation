
//HOME CLICK BUTTON CODE
function fetchFavData() {

    // Send the selected checkboxes' values to the PHP code using an AJAX request
    const xhr = new XMLHttpRequest();
    xhr.open("GET", "fav.php");
    xhr.onload = function() {
        if (xhr.status === 200) {
          console.log(xhr.responseText)
          var moviesData = xhr.responseText;
          console.log(moviesData)
          populateMoviesTable(moviesData);
        }
      };
      xhr.send();
}

function populateMoviesTable(moviesData) {

    // Loop through the JSON data and append the title and description to the table
    for (let i = 0; i < moviesData.length; i++) {
    const title = moviesData[i].title;
    const description = moviesData[i].description;
    const platform = moviesData[i].platform;
    const rating = moviesData[i].rating;
    
    const row = document.createElement('tr');
    const titleCell = document.createElement('td');
    const descriptionCell = document.createElement('td');
    const platformCell = document.createElement('td');
    const ratingCell = document.createElement('td');

    titleCell.textContent(title.title);
    descriptionCell.textContent(description.description);
    platformCell.textContent(platform.platform);
    ratingCell.textContent(rating.rating);
    row.appendChild(titleCell);
    row.appendChild(descriptionCell);
    row.appendChild(platformCell);
    row.appendChild(ratingCell);
    moviesTableBody.appendChild(row);
    }
}
    // xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    // xhr.onreadystatechange = function() {
    //     if (xhr.readyState === 4 && xhr.status === 200) {
    //         // Do whatever you need to do with the response
    //        //console.log(xhr.responseText);
    //         const reco = xhr.responseText;
    //         const outputData = JSON.parse(reco);
    //         console.log(outputData)
            
    //         // Open the recommendation.html file in a new tab
    //         const win = window.open('fav.html', '_blank');
    //         win.focus();

    //         // Wait for the new tab to load before updating its content
    //         win.onload = function() {
    //             // Get the title and description elements in the new tab
    //             const titleElement = win.document.getElementById('title');
    //             const descriptionElement = win.document.getElementById('description');

    //             // Loop through the JSON data and append the title and description to the table
    //             for (let i = 0; i < outputData.length; i++) {
    //             const title = outputData[i].title;
    //             const description = outputData[i].description;
    //             const platform = outputData[i].platform;
    //             const rating = outputData[i].rating;
                
    //             const row = win.document.createElement('tr');
    //             const titleCell = win.document.createElement('td');
    //             const descriptionCell = win.document.createElement('td');
    //             const platformCell = win.document.createElement('td');
    //             const ratingCell = win.document.createElement('td');

    //             titleCell.appendChild(win.document.createTextNode(title));
    //             descriptionCell.appendChild(win.document.createTextNode(description));
    //             platformCell.appendChild(win.document.createTextNode(platform));
    //             ratingCell.appendChild(win.document.createTextNode(rating));
    //             row.appendChild(titleCell);
    //             row.appendChild(descriptionCell);
    //             row.appendChild(platformCell);
    //             row.appendChild(ratingCell);
    //             win.document.querySelector('table').appendChild(row);
    //             }
    //         }

    //     }
    // };
    // const data = "question1=" + encodeURIComponent(question1) + "&question2=" + encodeURIComponent(question2);
    // xhr.send(data);