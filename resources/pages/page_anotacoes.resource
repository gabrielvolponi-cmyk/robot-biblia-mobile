*** Settings ***

Documentation     Arquivo com locators da page de anotacoes

*** Variables ***

${titulo_anotacoes}            //*[@text='Anotações']
${btn_texto_biblico}           //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radLeft"]
${btn_comentarios}             //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radRight"]
${btn_ver_tudo}                //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/tvSeeAll"]
${btn_pai_nosso}               //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/ivNoteIcon"][1]
${btn_coracao}                 //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/ivNoteIcon"][2]
${btn_anjo}                    //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/ivNoteIcon"][3]
${btn_cruz}                    //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/ivNoteIcon"][4]
${btn_biblia_anotacoes}        //android.widget.ImageView[@resource-id="org.universal.bibliafiel_comentada:id/ivNoteIcon"][5]
${btn_voltar_anotacoes}        //android.widget.ImageButton[@content-desc="Navigate up"]
${nenhuma_anotacao_encontrada}    //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtFailed"]