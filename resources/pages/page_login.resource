*** Settings ***

Documentation     Arquivo com locators da page de login

*** Variables ***
${scroll_view_login}     //android.widget.ScrollView/android.view.ViewGroup
${input_email}           //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtEmailLogin"] 
${input_senha}           //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtPasswordLogin"] 
${btn_logar}             //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/btnLogin"]
${toast_erro_login}      //android.widget.Toast[@text="Incorrect email and/or password. Check the data entered and try again"]
${toast_usuario_null}    //android.widget.Toast[@text="Please fill in the Email field correctly."]
${toast_senha_null}      //android.widget.Toast[@text="Please fill in the Password field correctly."]

