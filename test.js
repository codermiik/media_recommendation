const emotions = document.querySelectorAll('.emotion');
const menu = document.querySelector('.menu');

function selectEmotion() {
	emotions.forEach(emotion => {
		emotion.classList.remove('selected');
	});
	this.classList.add('selected');
	console.log(this.id);
}

emotions.forEach(emotion => {
	emotion.addEventListener('click', selectEmotion);
});


const checkboxes = document.querySelectorAll('.container2 .checkbox');

checkboxes.forEach(checkbox => {
  checkbox.addEventListener('change', () => {
    if (checkbox.checked) {
      checkboxes.forEach(otherCheckbox => {
        if (otherCheckbox !== checkbox) {
          otherCheckbox.checked = false;
        }
      });
    }
  });
});

const checkboxes2 = document.querySelectorAll('.container3 .checkbox');

checkboxes2.forEach(checkbox => {
  checkbox.addEventListener('change', () => {
    if (checkbox.checked) {
      checkboxes2.forEach(otherCheckbox => {
        if (otherCheckbox !== checkbox) {
          otherCheckbox.checked = false;
        }
      });
    }
  });
});

//HOME CLICK BUTTON CODE
function getSelectedCheckboxes() {
    // Get all the checkboxes in container2
    const container2Checkboxes = document.querySelectorAll('.container2 input[type="checkbox"]');
    // Get all the checkboxes in container3
    const container3Checkboxes = document.querySelectorAll('.container3 input[type="checkbox"]');

    console.log(container2Checkboxes);
    console.log(container3Checkboxes);
    // Loop through the checkboxes in container2 and check which one is selected
    let question1 = "";
    container2Checkboxes.forEach(function(checkbox) {
      if (checkbox.checked) {
        question1 = checkbox.getAttribute("name");
      }
    });
    console.log(question1);
    // Loop through the checkboxes in container3 and check which one is selected
    let question2 = "";
    container3Checkboxes.forEach(function(checkbox) {
      if (checkbox.checked) {
        question2 = checkbox.getAttribute("name");
      }
    });
    console.log(question2)

    // Send the selected checkboxes' values to the PHP code using an AJAX request
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "get_data.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Do whatever you need to do with the response
           //console.log(xhr.responseText);
            const reco = xhr.responseText;
            const outputData = JSON.parse(reco);
            console.log(outputData)
            
            // Open the recommendation.html file in a new tab
            const win = window.open('recommendation.html', '_blank');
            win.focus();

            // Wait for the new tab to load before updating its content
            win.onload = function() {
              // Get the title and description elements in the new tab
              const titleElement = win.document.getElementById('title');
              const descriptionElement = win.document.getElementById('description');
          
              // Loop through the JSON data and append the title, description, platform, rating and button to the table
              for (let i = 0; i < outputData.length; i++) {
                  const title = outputData[i].title;
                  const description = outputData[i].description;
                  const platform = outputData[i].platform;
                  const rating = outputData[i].rating;
          
                  const row = win.document.createElement('tr');
                  const titleCell = win.document.createElement('td');
                  const descriptionCell = win.document.createElement('td');
                  const platformCell = win.document.createElement('td');
                  const ratingCell = win.document.createElement('td');
                  const buttonCell = win.document.createElement('td');
          
                  titleCell.appendChild(win.document.createTextNode(title));
                  descriptionCell.appendChild(win.document.createTextNode(description));
                  platformCell.appendChild(win.document.createTextNode(platform));
                  ratingCell.appendChild(win.document.createTextNode(rating));
          
                  // Create a button element and add it to the button cell
                  const button = win.document.createElement('button');
                  button.innerHTML = 'Add to Favorite';
                  buttonCell.appendChild(button);
          
                  // Append all the cells to the row and the row to the table
                  row.appendChild(titleCell);
                  row.appendChild(descriptionCell);
                  row.appendChild(platformCell);
                  row.appendChild(ratingCell);
                  row.appendChild(buttonCell);
                  win.document.querySelector('table').appendChild(row);
              }
          }
          
        }
    };
    const data = "question1=" + encodeURIComponent(question1) + "&question2=" + encodeURIComponent(question2);
    xhr.send(data);

    
}

function openAddFav() {
  // Open the recommendation.html file in a new tab
  const win = window.open('recommendation.html', '_blank');
  win.focus();



  
  // Send the selected checkboxes' values to the PHP code using an AJAX request
  const xhr = new XMLHttpRequest();
  xhr.open("POST", "get_data.php", true);
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
          // Do whatever you need to do with the response
         //console.log(xhr.responseText);
          const reco = xhr.responseText;
          const outputData = JSON.parse(reco);
          console.log(outputData)
          
          // Open the recommendation.html file in a new tab
          const win = window.open('recommendation.html', '_blank');
          win.focus();

          // Wait for the new tab to load before updating its content
          win.onload = function() {
              // Get the title and description elements in the new tab
              const titleElement = win.document.getElementById('title');
              const descriptionElement = win.document.getElementById('description');

              // Loop through the JSON data and append the title and description to the table
              for (let i = 0; i < outputData.length; i++) {
              const title = outputData[i].title;
              const description = outputData[i].description;
              const platform = outputData[i].platform;
              const rating = outputData[i].rating;
              
              const row = win.document.createElement('tr');
              const titleCell = win.document.createElement('td');
              const descriptionCell = win.document.createElement('td');
              const platformCell = win.document.createElement('td');
              const ratingCell = win.document.createElement('td');

              titleCell.appendChild(win.document.createTextNode(title));
              descriptionCell.appendChild(win.document.createTextNode(description));
              platformCell.appendChild(win.document.createTextNode(platform));
              ratingCell.appendChild(win.document.createTextNode(rating));
              row.appendChild(titleCell);
              row.appendChild(descriptionCell);
              row.appendChild(platformCell);
              row.appendChild(ratingCell);
              win.document.querySelector('table').appendChild(row);
              }
          }

      }
  };
  const data = "question1=" + encodeURIComponent(question1) + "&question2=" + encodeURIComponent(question2);
  xhr.send(data);

  
}
function fetchFav() {
  window.location.href = "fav.html";
};
const data = "question1=" + encodeURIComponent(question1) + "&question2=" + encodeURIComponent(question2);
xhr.send(data);



