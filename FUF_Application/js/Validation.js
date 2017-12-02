function CheckNumericMobile(e) {

    if (window.event) // IE 
    {
        if ((e.keyCode < 48 || e.keyCode > 57) && e.keyCode != 8 && e.keyCode != 11) {
            event.returnValue = false;
            document.getElementById("mobl_err").style.display = "block";
            return false;
        }
        else {
            document.getElementById("mobl_err").style.display = "none";
        }

    }
    else { // Fire Fox
        if ((e.which < 48 || e.which > 57) && e.which != 8 && e.keyCode != 11) {
            e.preventDefault();
            document.getElementById("mobl_err").style.display = "block";
            return false;

        }
        else {
            document.getElementById("mobl_err").style.display = "none";
        }

    }

}

function DateSelectionChanged(e) {
    var today = new Date();
    var dob = e.get_selectedDate();
    var months = (today.getMonth() - dob.getMonth() + (12 * (today.getFullYear() - dob.getFullYear())));
    var age = Math.round(months / 12);
    if (age < 16) {
        alert("Error Age is less than 16");
    }
}