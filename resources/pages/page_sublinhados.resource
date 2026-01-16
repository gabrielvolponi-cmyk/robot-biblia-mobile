*** Settings ***

Documentation     Arquivo com locators da page sublinhados

*** Variables ***

${header_sublinhados}                 //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtToolbarTitle" and @text="Underlines"]
${btn_voltar_sublinhados}             //android.widget.ImageButton[@content-desc="Navigate up"]
${btn_check_sublinhados}              //android.widget.Button[@resource-id="org.universal.bibliafiel_comentada:id/item_highlight_selector"]
${btn_texto_biblico_sublinhados}      //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radLeft"]
${btn_comentarios_sublinhados}        //android.widget.RadioButton[@resource-id="org.universal.bibliafiel_comentada:id/radRight"]
${btn_cores_sublinhados}              //android.widget.TextView[@text="Colors"]
${btn_categorias_sublinhados}         //android.widget.TextView[@text="Categories"]
${btn_tags_sublinhados}               //android.widget.TextView[@text="Tags"]
${btn_ver_tudo_sublinhados}           //android.widget.TextView[@text="See all"]
${txt_null_sublinhados}               //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtFailed"]
${grid_cor}                           //androidx.recyclerview.widget.RecyclerView[@resource-id="org.universal.bibliafiel_comentada:id/rvColor"]/android.view.ViewGroup
${btn_add_categoria}                  //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtAddCategory"]
${btn_add_tag}                        //android.widget.TextView[@resource-id="org.universal.bibliafiel_comentada:id/txtAddTag"]
${selector_data_sublinhados}          //android.widget.TextView[@text="Sort by date"]
${selector_periodo_sublinhados}       //android.widget.TextView[@text="Oldest"]
${input_busca_sublinhados}            //android.widget.EditText[@resource-id="org.universal.bibliafiel_comentada:id/edtSearch"]