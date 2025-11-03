*** Settings ***

Documentation     Arquivo com locators da page de login

*** Variables ***
${scroll_view_login}        //android.widget.ScrollView/android.view.ViewGroup
${input_email}    //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtEmailLogin"] 
${input_senha}    //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtPasswordLogin"] 
${btn_logar}    //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/btnLogin"]

