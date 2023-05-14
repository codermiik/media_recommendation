const emotions = document.querySelectorAll('.emotion');
const hamburger = document.querySelector('.hamburger');
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

hamburger.addEventListener('click', () => {
  hamburger.classList.toggle('active');
  menu.classList.toggle('active');
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
    // Concatenate the selected checkboxes' labels
    //const searchKey = container2Selection + " " + container3Selection;
    // Do whatever you need to do with the search key here
    //console.log(searchKey);

    // Send the selected checkboxes' values to the PHP code using an AJAX request
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "get_data.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {

            // Do whatever you need to do with the response
            console.log(xhr.responseText);

            // Open a new window and display the results on it
            const win = window.open("", "_blank");
            win.document.write(xhr.responseText);
        }
    };
    const data = "question1=" + encodeURIComponent(question1) + "&question2=" + encodeURIComponent(question2);
    xhr.send(data);
  }
