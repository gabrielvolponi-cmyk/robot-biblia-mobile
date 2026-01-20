*** Settings ***

Documentation     Arquivo com locators da page de configuracoes

*** Variables ***

${btn_brilho}        //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radBrightness"]
${btn_fonte}         //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radFont"]
${btn_tema}          //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radTheme"]
${barra_brilho}      //android.widget.SeekBar[@resource-id="org.universal.bibliafiel_comentada:id/sbBrightness"]
${formato_texto}     //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radTextFormat"]
${small_space}       //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radSpaceSmall"]
${medium_space}      //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radSpaceMedium"]
${big_space}         //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radSpaceBig"]