# Contact

<!-- =========================================================================================== -->

## Get in touch or drop a message to collaborate

<div id="Contact_Failed" style="display: none;">
    <h4>
        Request Failed! Try Again.
    </h4>
</div>

<form id="Contact_Form" action="" onsubmit="submitEmail();return false;">
    <div class="form-group">

        <label for="msgInputField">Message</label>
        <textarea id="msgInputField"
        onchange="validateForm()"
        onkeyup="validateForm()"
        onkeydown="validateForm()"
        onpaste="validateForm()"
        oninput="validateForm()"
        class="form-control fontSizeFormInput" rows="5"></textarea>

        <label for="emailInputField">Email address</label>
        <input
        id="emailInputField" type="email"
        onchange="validateForm()"
        onkeyup="validateForm()"
        onkeydown="validateForm()"
        onpaste="validateForm()"
        oninput="validateForm()"
        class="form-control fontSizeFormInput" aria-describedby="emailHelp" placeholder="Enter email" />

    </div>

    <button id="submitButton" class="btn btn-primary" disabled=true>Submit</button>
</form>

<div id="Contact_Successful" style="display: none;">
    <h4>
        Thank you for reaching out. <i class="fas fa-check-circle"></i>
    </h4>
</div>

<div id="Contact_processing" style="display: none;">
    <h4>
        Processing Request...
    </h4>
</div>

<!-- =========================================================================================== -->

<hr/>

You can also find me at:

- [@LinkedIn](https://www.linkedin.com/in/uppalaayush)
- [@GitHub](https://github.com/aayushuppal)
- [@BitBucket](https://bitbucket.org/aayushuppal)
- [@Twitter](https://twitter.com/aayushuppal)
- Email: <aayuppal@gmail.com>

<!-- =========================================================================================== -->

[^1]: Last Updated: `2018-11-18`

<!-- =========================================================================================== -->

<script>

function validateForm() {
    var emailField =  $("#emailInputField")[0].value.trim()
    var isEmailValid = emailField.match(/^([\w.%+-]+)@([\w-]+\.)+([\w]{2,})$/i)

    var msgField =  $("#msgInputField")[0].value.trim()
    var isMsgValid = msgField.length >= 2

    if (isEmailValid == null || !isMsgValid) {
        document.getElementById("submitButton").disabled=true
        return false
    }

    document.getElementById("submitButton").disabled=false
    return true
}

function submitEmail() {
    isValidForm = validateForm()
    if (!isValidForm) {
        return
    }

    var emailField =  document.getElementById("emailInputField").value.trim()
    var msgField =  $("#msgInputField")[0].value.trim()

    var url = "https://rp-dbasvc.herokuapp.com/add-gen-msg"

    document.getElementById("Contact_Form").style.display = "none"
    document.getElementById("Contact_Failed").style.display = "none"
    document.getElementById("Contact_Successful").style.display = "none"
    document.getElementById("Contact_processing").style.display = "block"

    fetch(url, {
        method: "POST",
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            email: emailField,
            message: msgField,
            referral: "aayushuppal.github.io"
        })
    })
    .then(handleResponse)
    .then(handleSuccess)
    .catch(handleErrors)
}

function handleResponse(response) {
    if (!response.ok) {
        throw Error(response.statusText)
    }
    return response
}

function handleSuccess(response) {
    document.getElementById("Contact_Failed").style.display = "none"
    document.getElementById("Contact_processing").style.display = "none"
    document.getElementById("Contact_Form").style.display = "none"
    document.getElementById("Contact_Successful").style.display = "block"
}

function handleErrors(error) {
    document.getElementById("Contact_Successful").style.display = "none"
    document.getElementById("Contact_processing").style.display = "none"
    document.getElementById("Contact_Failed").style.display = "block"
    document.getElementById("Contact_Form").style.display = "block"
}

</script>
