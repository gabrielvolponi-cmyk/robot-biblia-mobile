*** Settings ***

Documentation     Arquivo com locators da page de cadastro

*** Variables ***

${btn_cadastrar}            //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tvRegisterLabel"]
${header_cadastro}          //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tv_title"]
${titulo_cadastro}          //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tvRegisterTitle"]
${descricao_cadastro}       //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tvRegisterDescription"]
${input_name}               //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtNameRegister"]
${input_last_name}          //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtLastNameRegister"]
${input_email_cadastro}              //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtEmailRegister"]
${input_confirm_email_cadastro}      //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtConfirmEmailRegister"]
${btn_continue}             //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/btnContinue"]
${btn_back}                 //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/btnBack"]