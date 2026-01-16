*** Settings ***

Documentation     Arquivo com locators da page de troca de idioma

*** Variables ***

${header_alterar_idioma}            //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtToolbarTitle"]
${select_portugues}                 //androidx.cardview.widget.CardView[@resource-id="org.universal.bibliafiel_comentada:id/cvLanguagePortuguese"]/android.view.ViewGroup
${select_ingles}                    //androidx.cardview.widget.CardView[@resource-id="org.universal.bibliafiel_comentada:id/cvLanguageEnglish"]/android.view.ViewGroup
${select_espanhol}                  //androidx.cardview.widget.CardView[@resource-id="org.universal.bibliafiel_comentada:id/cvLanguageSpanish"]/android.view.ViewGroup
${btn_salvar_troca_idioma}          //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/btnSave"]
${btn_voltar_troca_idioma}          //android.widget.ImageButton[@content-desc="Navigate up"]
${info_biblia}                      //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tvInfoPayment"]
${info_biblia_ingles}               //android.widget.TextView[@resource-id='org.universal.bibliafiel_comentada:id/tvInfoPayment' and contains(@text,'Audio Bible currently available only in Portuguese')]
${info_biblia_portugues}            //android.widget.TextView[@resource-id='org.universal.bibliafiel_comentada:id/tvInfoPayment' and contains(@text,'Bíblia Dramatizada no momento disponível somente em português')]
${info_biblia_espanhol}             //android.widget.TextView[@resource-id='org.universal.bibliafiel_comentada:id/tvInfoPayment' and contains(@text,'La Biblia dramatizada está disponible actualmente solo en Portugues')]
