*** Settings ***

Documentation     Arquivo com locators da page de assinaturas

*** Variables ***

${header_assinatura}        //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtToolbarTitle" and @text="Alterar assinatura"]
${btn_voltar_assinatura}    //android.widget.ImageButton[@content-desc="Navegar para cima"]
${web_view_assinatura}      //android.webkit.WebView[@resource-id="org.universal.bibliafiel_comentada:id/web_view_change_billing"]

