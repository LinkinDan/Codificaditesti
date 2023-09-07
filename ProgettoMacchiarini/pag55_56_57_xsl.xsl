<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- template che definisce l'intero documento -->
    <xsl:template match="/">

        <!-- inizio pagina html -->
        <html lang="it">
            
            <head>
                <meta charset="UTF-8"/>
				<meta name="author" content="Daniele Macchiarini"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="css/style.css"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="js/imageMapResizer.min.js"></script>
                <script src="js/funzioniTesto.js"></script>
                
                <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
            </head>

            <!-- corpo della pagina -->
            <body>

                <header>

                    <ul id="menu">
                        <li><a href="">DIARI DI ARTOM</a></li>
                        <li><a href="#fonte">FONTE</a></li>
                        <li><a href="#pag55">PAGINA 55</a></li>
                        <li><a href="#pag56">PAGINA 56</a></li>
                        <li><a href="#pag57">PAGINA 57</a></li>
                        <li><input type="text" id="cercaParola" placeholder="Cerca Nel Testo"/><button id="btnCerca" onclick="cercaParola()">CERCA</button></li>
                    </ul>
                </header>

                <main id="content">
                    <div id="boxIniziale">
                    
                        <div id="imgArtom1">
                            <img src="imgs/artom3.jpg"/>
                        </div>
                        
                        <div id="testoArtom">
                            <h1 id="titoloMain"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='full']"/></h1>
                            <h2 id="titoloSub"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
                            <h2 id="autore"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/></h2>

                        </div>

                        <div id="imgArtom2">
                            <img src="imgs/artom.jpg"/>
                        </div>

                    </div>

                    <div id="fonte">
                        <br/>
                        <div id="infoFonte" class="infoFonte">

                            <div id="spazioBottoni">
                                <button id="btnDettagli" class="bottone">DETTAGLI</button>
                                <button id="btnConservazione" class="bottone">CONSERVAZIONE</button>
                                <button id="btnDescrizione" class="bottone">DESCRIZIONE FISICA</button><br/>

                            </div>
                            <br/>
                        
                            <div id="testoBottoni">
                                <p id="dettagli" class="nascosto">
                                    Titolo: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:title"/><br/>
                                    Autore: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author"/><br/>
                                    Data: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:docDate/tei:date"/><br/>
                                    Lingua: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:textLang"/><br/>
                                    Storia editoriale: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history"/><br/>
                                    <br/>

                                </p>

                                
                                <p id="conservazione" class="nascosto">    
                                    Conservazione: <a id="cdec" href="https://digital-library.cdec.it/cdec-web/"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:institution"/></a><br/>
                                    Fondo: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:collection"/><br/>
                                    Codice di riconoscimento: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/><br/>
                                    Luogo: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/><br/>
                                    <br/>

                                </p>

                                
                                <p id="descrizione" class="nascosto">    
                                    Supporto: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"/><br/>
                                    Pagine: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc//tei:extent/tei:measure"/><br/>
                                    Condizioni: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/><br/>
                                    Autore: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:handDesc/tei:handNote"/><br/>
                                    Layout: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:layoutDesc"/><br/>
                                    Nota: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:typeDesc/tei:p"/><br/>
                                    <br/>

                                </p>
                                <br/>
                            </div>

                        </div>

                        <div id="corpoFonte" class="infoFonte">

                            <h1>Pagina 55</h1>
                            <br/>
                            <div id="pag55" class="pagina">

                                <div id="img55" class="immagine">
                                    <xsl:apply-templates select="//tei:surface[@n='1']"/>
                                </div>

                                <div id="testo55" class="testo">
                                   
                                    <xsl:apply-templates select="//tei:ab[@n='155']"/>
                                   
                                </div>
                            
                            </div>
                            
                            <div id="bottoni55" class="btnFunzioni">

                                <button type="button" class="funzioni abbreviazioni">ESPANDI ABBREVIAZIONI</button>
								<button type="button" class="funzioni cancellature">MOSTRA CANCELLATURE</button>
								<button type="button" class="funzioni correzioni">MOSTRA ERRORE</button>
								<button type="button" class="funzioni aggiunte">AGGIUNTE AUTORE</button>
								<button type="button" class="funzioni nonForm">FORMA NON NORMALIZZATA</button>
								<button type="button" class="funzioni testoAgg">AGGIUNTE CODIFICATORE</button>
								<button type="button" class="funzioni persone">SEGNALA PERSONE</button>
								<button type="button" class="funzioni luoghi">SEGNALA LUOGHI</button>


                            </div>

                            <h1>Pagina 56</h1>
                            <br/>
                            <div id="pag56" class="pagina">

                                <div id="img56" class="immagine">
                                    <xsl:apply-templates select="//tei:surface[@n='2']"/>
                                </div>

                                <div id="testo56" class="testo">
                                    
                                    <xsl:apply-templates select="//tei:ab[@n='256']"/>
                                </div>
                            
                            
                            </div>

                            <div id="bottoni56" class="btnFunzioni">

                                <button type="button" class="funzioni abbreviazioni">ESPANDI ABBREVIAZIONI</button>
								<button type="button" class="funzioni cancellature">MOSTRA CANCELLATURE</button>
								<button type="button" class="funzioni correzioni">MOSTRA ERRORE</button>
								<button type="button" class="funzioni aggiunte">AGGIUNTE AUTORE</button>
								<button type="button" class="funzioni nonForm">FORMA NON NORMALIZZATA</button>
								<button type="button" class="funzioni testoAgg">AGGIUNTE CODIFICATORE</button>
								<button type="button" class="funzioni persone">SEGNALA PERSONE</button>
								<button type="button" class="funzioni luoghi">SEGNALA LUOGHI</button>


                            </div>

                            <h1>Pagina 57</h1>
                            <br/>
                            <div id="pag57" class="pagina">

                                <div id="img57" class="immagine">
                                    <xsl:apply-templates select="//tei:surface[@n='3']"/>
                                        
                                </div>

                                <div id="testo57" class="testo">
                                    
                                    <xsl:apply-templates select="//tei:ab[@n='357']"/>
                                </div>
                            
                            
                            </div>

                            <div id="bottoni57" class="btnFunzioni">

                                <button type="button" class="funzioni abbreviazioni">ESPANDI ABBREVIAZIONI</button>
								<button type="button" class="funzioni cancellature">MOSTRA CANCELLATURE</button>
								<button type="button" class="funzioni correzioni">MOSTRA ERRORE</button>
								<button type="button" class="funzioni aggiunte">AGGIUNTE AUTORE</button>
								<button type="button" class="funzioni nonForm">FORMA NON NORMALIZZATA</button>
								<button type="button" class="funzioni testoAgg">AGGIUNTE CODIFICATORE</button>
								<button type="button" class="funzioni persone">SEGNALA PERSONE</button>
								<button type="button" class="funzioni luoghi">SEGNALA LUOGHI</button>


                            </div>

                            <br/>

                        </div>
                    <br/>
                    </div>
                </main>
                
                <footer>
                    <p><xsl:value-of select="//tei:edition"/></p>
						<xsl:for-each select="//tei:respStmt"> 
							<p>
								<span><xsl:value-of select="tei:resp"/></span>
								<span><xsl:value-of select="tei:name"/></span>
                                <span>&#160;<xsl:value-of select="tei:note"/></span>
							</p>
						</xsl:for-each>
                </footer>
            
            </body>

            <script>

                            <!-- MAP RESIZER -->

                        $(document).ready(function() {

                            $('map').imageMapResize();
                        
                            evidenzia();

                            bottoniInfo();      

                            pulsantiTesto();                     

                        });

                        

                            
            </script>

        </html>


        
    </xsl:template>

    <!-- TEMPLATE XSL -->

    <!-- IMMAGINI DELLA FONTE -->

    <xsl:template match="tei:surface">
	
		<xsl:element name="img">
			<xsl:attribute name="class">immag</xsl:attribute>
            <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
			<xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
        </xsl:element>
		
		<xsl:element name="map">
            <xsl:attribute name="name"><xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:for-each select="tei:zone">
                <xsl:element name="area">
                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
					<xsl:attribute name="class">areaRiga</xsl:attribute>
                    <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
		
    </xsl:template>

    <!-- INIZIO RIGA -->
	<xsl:template match="tei:lb">
		
		<xsl:if test="@n != 1">

			<br/>
			
		</xsl:if>
		
		<xsl:element name="span">
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
            <xsl:value-of select="@n"/>
        </xsl:element>
		
	</xsl:template>

    <!-- CANCELLATURE COMPRENSIBILI -->
	<xsl:template match="tei:del">
	
        <span class="del nascosto">
            <xsl:apply-templates/>
		</span>

    </xsl:template>

    <!-- ELEMENTI INCOMPRENSIBILI -->
	<xsl:template match="tei:gap">
	
    	<span class="gap nascosto">
					???
        </span>
		
    </xsl:template>

    <!-- ABBREVIAZIONI -->
	<xsl:template match="tei:abbr">
	
		<span class="abbr">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>

    <!-- ESPANSIONI ABBREVIAZIONI -->
	<xsl:template match="tei:expan">
	
		<span class="expan nascosto">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>

    <!-- AGGIUNTE AUTORE DELLA CODIFICA -->
	<xsl:template match="tei:supplied">
	
		<span class="supplied">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>

    <!-- ORIGINALE (orig) -->
	<xsl:template match="tei:orig">
	
		<span class="orig nascosto">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>
	
	<!-- NORMALIZZAZIONE (reg) -->
	<xsl:template match="tei:reg">
	
		<span class="reg">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>
	
	<!-- ERRORE (sic) -->
	<xsl:template match="tei:sic">
		<span class="sic nascosto">
			<xsl:value-of select="."/>
		</span>
    </xsl:template>
	
	<!-- CORREZIONE (corr) -->
	<xsl:template match="tei:corr">
		<span class="corr">
			<xsl:value-of select="."/>
		</span>
    </xsl:template>
	
	<!-- AGGIUNTE -->
	<xsl:template match="tei:add">
		<span class="add">
			<xsl:apply-templates/>
		</span>
    </xsl:template>
	
	<!-- NOMI DI PERSONA -->
    <xsl:template match ="tei:persName">
	
        <span class = "persName">
            <xsl:apply-templates/>
        </span>
		
    </xsl:template>
	
	<!-- LUOGHI -->
    <xsl:template match ="tei:placeName">
	
        <span class = "placeName">
            <xsl:apply-templates/>
        </span>
		
    </xsl:template>

</xsl:stylesheet>