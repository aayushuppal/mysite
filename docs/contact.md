# Contact

<!-- Begin Mailchimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/slim-10_7.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
	/* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<div id="mc_embed_signup">
<form action="https://github.us2.list-manage.com/subscribe/post?u=50befd4d98f386e733b61d6b9&amp;id=5fc3ac7169" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll">
	<label for="mce-EMAIL">I write occassionally | The Alpenglow Blog</label>
	<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_50befd4d98f386e733b61d6b9_5fc3ac7169" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button" style="background-color:#1e4788;"></div>
    </div>
</form>
</div>
<!--End mc_embed_signup-->


<!-- =========================================================================================== -->
<!--
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

---

- Email: <aayuppal@gmail.com>
- [LinkedIn - @uppalaayush](https://www.linkedin.com/in/uppalaayush)
- [GitHub - @aayushuppal](https://github.com/aayushuppal)
- [Twitter - @aayushuppal](https://twitter.com/aayushuppal)

<!-- =========================================================================================== -->

[^1]: Last Updated: `2020-04`

<!-- =========================================================================================== -->

<!-- <script>

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

    var url = "https://rp-dbasvc-v2.herokuapp.com/add-gen-msg"

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

</script> -->
