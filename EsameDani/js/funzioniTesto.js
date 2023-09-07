// GESTORE PULZANTI INFORMAZIONI

function bottoniInfo(){
    $("#btnDettagli").click(function(){

        if($("#dettagli").attr("class") == "nascosto"){

            $("#dettagli").removeClass("nascosto");
            $("#dettagli").addClass("visibile");

            if($("#conservazione").attr("class") == "visibile"){

                $("#conservazione").removeClass("visibile");
                $("#conservazione").addClass("nascosto");
            }

            if($("#descrizione").attr("class") == "visibile"){

                $("#descrizione").removeClass("visibile");
                $("#descrizione").addClass("nascosto");
            }
        }else{

            $("#dettagli").removeClass("visibile");
            $("#dettagli").addClass("nascosto");
        }

    })

    $("#btnConservazione").click(function(){

        if($("#conservazione").attr("class") == "nascosto"){

            $("#conservazione").removeClass("nascosto");
            $("#conservazione").addClass("visibile");

            if($("#dettagli").attr("class") == "visibile"){

                $("#dettagli").removeClass("visibile");
                $("#dettagli").addClass("nascosto");
            }

            if($("#descrizione").attr("class") == "visibile"){

                $("#descrizione").removeClass("visibile");
                $("#descrizione").addClass("nascosto");
            }
        }else{

            $("#conservazione").removeClass("visibile");
            $("#conservazione").addClass("nascosto");
        }

    })

    $("#btnDescrizione").click(function(){

        if($("#descrizione").attr("class") == "nascosto"){

            $("#descrizione").removeClass("nascosto");
            $("#descrizione").addClass("visibile");

            if($("#conservazione").attr("class") == "visibile"){

                $("#conservazione").removeClass("visibile");
                $("#conservazione").addClass("nascosto");
            }

            if($("#dettagli").attr("class") == "visibile"){

                $("#dettagli").removeClass("visibile");
                $("#dettagli").addClass("nascosto");
            }
        }else{

            $("#descrizione").removeClass("visibile");
            $("#descrizione").addClass("nascosto");
        }

    })
}

// EVIDENZIA NUMERO RIGA

function evidenzia() {
    $(".areaRiga").mouseover(function(){
        var idRiga=this.id;
        
        idRiga="#"+idRiga;

        if (idRiga == "#add_pag57_r3"){

            document.getElementById("#gr_pag57_r3").classList.add("evidenziata");
        }else{
            document.getElementById(idRiga).classList.add("evidenziata");
        }
        
        
    });

    
    $(".areaRiga").mouseout(function(){
        var idRiga=this.id;
        
        idRiga="#"+idRiga;

        if (idRiga == "#add_pag57_r3"){

            document.getElementById("#gr_pag57_r3").classList.remove("evidenziata");
        }else{
            document.getElementById(idRiga).classList.remove("evidenziata");
        }
        
    });
}

// RICERCA PAROLE NEL TESTO


function cercaParola(){

    var inserito = $("#cercaParola").val();

    window.find(inserito);

}


function pulsantiTesto (){

// BOTTONE PER EVIDENZIARE CANCELLATURE

    $(".cancellature").click(function(){

        if($(".cancellature").hasClass("attivato")){

            $(".del").addClass("nascosto");
            $(".del").removeClass("visibile2");
            $(".del").css("text-decoration", "none");
            $(".del").css("background-color", "#aaddff");


            $(".gap").removeClass("nascosto");
            $(".gap").addClass("visibile2");

        }else{

            $(".del").removeClass("nascosto");
            $(".del").addClass("visibile2");
            $(".del").css("text-decoration", "line-through");
            $(".del").css("background-color", "chocolate");


            $(".gap").removeClass("nascosto");
            $(".gap").addClass("visibile2");

        }

        $(".cancellature").toggleClass("attivato");
        
    });

// BOTTONE PER ESPANDERE ABBREVIAZIONI

    $(".abbreviazioni").click(function(){

        if($(".abbreviazioni").hasClass("attivato")){

            $(".abbr").removeClass("nascosto");

            $(".expan").addClass("nascosto");
            $(".expan").removeClass("visibile2");
            $(".expan").css("background-color", "#aaddff");

        }else{

            $(".abbr").addClass("nascosto");

            $(".expan").removeClass("nascosto");
            $(".expan").addClass("visibile2");
            $(".expan").css("background-color", "palevioletred");

        }

        

        $(".abbreviazioni").toggleClass("attivato");
        
    });

// BOTTONE PER EVIDENZIARE LE AGGIUNTE DELL'AUTORE

    $(".aggiunte").click(function(){

        if($(".aggiunte").hasClass("attivato")){

            $(".add").css("background-color", "#aaddff");

        }else{

            $(".add").css("background-color", "red");

        }

        

        $(".aggiunte").toggleClass("attivato");
        
    });

// BOTTONE PER MOSTRARE LE AGGIUNTE IN FASE DI CODIFICA

    $(".testoAgg").click(function(){

        if($(".testoAgg").hasClass("attivato")){

            $(".supplied").css("background-color", "#aaddff");

        }else{

            $(".supplied").css("background-color", "blueviolet");

        }

        $(".testoAgg").toggleClass("attivato");
    
    });

// BOTTONE PER MOSTRARE LA FORMA NON NORMALIZZATA

    $(".nonForm").click(function(){

        if($(".nonForm").hasClass("attivato")){

            $(".orig").addClass("nascosto");
            $(".orig").removeClass("visibile2");
            $(".orig").css("background-color", "#aaddff");

        $(".reg").removeClass("nascosto");

        }else{

            $(".orig").removeClass("nascosto");
            $(".orig").addClass("visibile2");
            $(".orig").css("background-color", "magenta");

        $(".reg").addClass("nascosto");

        }

        $(".nonForm").toggleClass("attivato");
    
    });

// BOTTONE PER MOSTRARE LA FORMA ERRATA

    $(".correzioni").click(function(){

        if($(".correzioni").hasClass("attivato")){

            $(".sic").addClass("nascosto");
            $(".sic").removeClass("visibile2");
            $(".sic").css("background-color", "#aaddff");

            $(".corr").addClass("visibile2");
            $(".corr").removeClass("nascosto");

        }else{

            $(".sic").removeClass("nascosto");
            $(".sic").addClass("visibile2");
            $(".sic").css("background-color", "yellow");

            $(".corr").removeClass("visibile2");
            $(".corr").addClass("nascosto");

        }      

        $(".correzioni").toggleClass("attivato");

    });

// BOTTONE PER EVIDENZIARE LE PERSONE

    $(".persone").click(function(){

        if($(".persone").hasClass("attivato")){

            $(".persName").css("background-color", "#aaddff");
            $(".persName").css("padding", "0px");

        }else{
            
            $(".persName").css("background-color", "green");
            $(".persName").css("padding", "4px");

        }

        $(".persone").toggleClass("attivato");

    });

// BOTTONE PER EVIDENZIARE I LUOGHI

    $(".luoghi").click(function(){

        if($(".luoghi").hasClass("attivato")){

            $(".placeName").css("background-color", "#aaddff");
            $(".placeName").css("padding", "0px");

        }else{

            $(".placeName").css("background-color", "blue");
            $(".placeName").css("padding", "4px");

        }

        $(".luoghi").toggleClass("attivato");

    });

}

    