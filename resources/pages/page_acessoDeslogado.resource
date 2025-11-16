*** Settings ***

Documentation     Arquivo com locators da page de acesso deslogado

*** Variables ***

${btn_entrar_sem_cadastro}        //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/btnEnterWithoutLogin"]
${btn_meu_perfil}                 //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/imgProfile"]
${btn_historico}                  //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/imgHistory"]
${btn_leitura_diaria}             //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/imgDailyReading"]
${btn_buscar}                     //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/imgSearch"]
${btn_configuracoes}              //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/cbBibleSetting"]
${btn_alterar_idioma}             //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/imgTranslate"]
${btn_biblia}                     //android.view.ViewGroup[@resource-id="org.universal.bibliafiel_comentada:id/bible"]
${btn_biblia_dramatizada}         
${btn_pao_nosso}                  //android.view.ViewGroup[@resource-id="org.universal.bibliafiel_comentada:id/bread"]
${btn_assinaturas}                //android.view.ViewGroup[@resource-id="org.universal.bibliafiel_comentada:id/products"]
${btn_avancar}                    //android.widget.ImageButton[@content-desc="fabNext"]
${btn_retroceder}                 //android.widget.ImageButton[@content-desc="fabPrevious"]
${primeira_tela_deslogado}        //android.widget.RelativeLayout[@resource-id="org.universal.bibliafiel_comentada:id/tivBible"]
${titulo_leitura_diaria}          //android.widget.TextView[@text="Daily Reading"]
${titulo_busca_deslogado}         //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tvSearchParameters"]
${topbar_config_deslogado}        //android.widget.RadioGroup[@resource-id="org.universal.bibliafiel_comentada:id/rdgTextSetting"]
${titulo_trocar_idioma}           //android.widget.TextView[@text="Change language"]
${alerta_produto_pago}            //android.widget.TextView[@text="To access this content you need to purchase our subscription"]
${titulo_assinaturas}             //android.widget.TextView[@text="Subscription"]
