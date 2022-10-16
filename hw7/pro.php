<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->
<head>
    <title>rasdaman, the Big Data Analytics Server</title>
    <?php require_once("assets/html/secondary/head.php") ?>
</head>

<!--
The #page-top ID is part of the scrolling feature.
The data-spy and data-target are part of the built-in Bootstrap scrollspy function.
-->
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery dark">
<!--=== Header ===-->
<?php require_once("assets/html/secondary/header.php") ?>
<!--=== End Header ===-->


<!--  About Section -->
<section id="content" class="secondary-content-section section-first">
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">The World's Most Scalable Array Engine</h1>
        </div>
    </div>
    <!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row-fluid privacy">
            <p class="lead"><b>
              [ <a href="#features">Features</a> | <a href="#standards">Standards</a> | <a href="#benefit">Benefit Areas</a> | <a href="#support">Support</a> | <a href="#clients">Clients</a> | <a href="#awards">Awards</a> ]
            </b></p>
            <p class="lead"><b>
                Many of today's "Big Data" come as gridded data ("arrays", "raster data");
                typical representatives include spatio-temporal <span class="label label-default">sensor, image, simulation, and statistics data</span>.
                Through its SQL-embedded array query language, rasdaman is <span class="label label-default">pioneer and world technology leader</span>
                in flexible, fast, and scalable array analytics.
                The powerful paradigm of "<span class="label label-default">What You Get is What You Need</span>" maximises Quality of Service and minimizes latency.
            </b></p>

            <a name="#features"></a><h2>Key Features</h2>
            <p>
                With rasdaman community, a basic datacube engine is provided free and open. On top of this, rasdaman enterprise adds all aspects of scalability in a downwards compatible manner, such as:
            </p>
            <ul>
                <li>
                  <b><span class="label label-default">unlimited data scalability:</span></b>
                  proven on 100+ PB; using any existing archive "in-situ" (without data import, i.e., copying); fully automated, operatorless data import and maintenance; lossy and lossless data compression; and more.
                </li>
                <li>
                  <b><span class="label label-default">unlimited horizontal and vertical processing scalability:</span></b>
                  proven on 1,000+ Amazon cloud nodes; semantic caching; multi-core parallelization; distributed processing; planetary-scale location-transparent data center federation; hybrid edge/cloud processing; and more.
                </li>
                <li>
                  <b><span class="label label-default">unlimited functionality scalability:</span></b>
                  high-level datacube analytics language which needs no coding skills; link own code into the rasdaman server and make it available as part of the query language.
                </li>
                <li>
                  <b><span class="label label-default">security:</span></b>
                  access control down to single pixels; quota; billing; and more.
                </li>
                <li>
                  <b><span class="label label-default">clients, clients, clients:</span></b>
                  configurable dashboard, wide range of 3rd party clients for mapping, Web GIS, analytics, and visualization. 
                </li>

                <li>
                  <b><span class="label label-default">open standards:</span></b>
                  <a href="http://rasdaman.org/attachment/wiki/News/rasdaman-wcs-core-RI.png">OGC WCS Core Reference Implementation</a>;
                  official first <a href="https://inspire.ec.europa.eu/portfolio/good-practice-library">INSPIRE Good Practice</a> and most comprehensive INSPIRE coverage service implementation;
                  listed in the <a href="http://geossregistries.info/geosspub/resource_details_ns.jsp?compId=urn:geoss:csr:resource:urn:uuid:e8d4eb7b-4681-4f71-9e34-0f78cf10ce92">GEOSS Component and Service Registry</a>.
                </li>
                <li>
                  <b><span class="label label-default">free:</span></b>
                  available as open source in a lively, mature, and professionally managed
                  open-source project supervised by <a href="http://www.jacobs-unviersity.de/lsis">Jacobs University</a>,
                  adopted as <a href="http://www.osgeo.org">OSGeo foundation</a> community project.
                </li>
                <li>
                  <b><span class="label label-default">cost-efficient:</span></b>
                  through intelligent, economic resource utilization and free source code.
                </li>
            </ul>

            <h2>Scalable by Design</h2>
            <img src="assets/img/product/geo-architecture.png" height="300px">

            <a name="standards"></a><h2>Open Big Data Standards</h2>
            <p>
                <table class="pull-right"><tr><td>
                    <img src="assets/img/logo-INSPIRE.jpg" height="100">
                    &nbsp; &nbsp; &nbsp;
                    <a href="http://www.opengeospatial.org/resource/products/details/?pid=1058"><img src="assets/img/logo-OGC-cert-compliant.gif" height="100%"></a>
                </td></tr></table>
            </p>

            <p>
                rasdaman is official OGC and INSPIRE WCS Reference Implementation. It supports
            </p>
            <ul>
                <li>OGC WCS Core 2.0.1
                <li>OGC WCS GET/KVP, POST, SOAP (unofficially: REST)
                <li>OGC WCS Range Subsetting, Scaling, Interpolation, Processing, CRS, Transaction
                <li>OGC WCPS
            </ul>
            <p>
                rasdaman has passed all tests of the OGC WCS Core and Extensions.<br/>
                As such, it is the most comprehensive implementation of "Big Earth Datacube" standards worldwide.
            </p>

            <a name="benefit"></a><h2>Science, Engineering, and More: rasdaman Benefit Areas</h2>
            <p>
                Array data appear virtually everywhere in engineering, science, business, and administration, such as:
            </p>
            <ul>
                <li><span class="label label-default"><a href="geo.php">Geospatial data</a>:</span>
                    Web Mapping, oil/gas exploration, climate research, oceanography, disaster mitigation, etc.
                    Our experience is sought so much that we even <a href="standards.php">shape the Big Geo Data standards</a>.</li>
                <li><span class="label label-default">Life Sciences:</span> confocal microscopy, brain imaging, medical scanners such as X-ray, PET, fMRI, etc.</li>
                <li><span class="label label-default">Space Sciences:</span> optical and radio astronomy, cosmological simulation, etc.</li>
                <li><span class="label label-default">Statistics:</span> n-dimensional data cubes, as aka next-generation MOLAP system.</li>
            </ul>

            <p>
                The rasdaman technology is available in two compatible editions.
                Open-source <span class="label label-default">rasdaman community</span> is freely available as source code
                from <a href="http://www.rasdaman.org">rasdaman.org</a>;
                the performance boosters of prorietary <a href="commercial-free.php">rasdaman enterprise</a> edition overlay
                in a compatible way.
            </p>
            <p>
                On any of those alternatives, rasdaman offers highly effective hardware and software optimizations for best-of-breed performance.
            </p>

            <a name="support"></a><h2>Need Support?</h2>
            <p>
                Installation, maintenance for both rasdaman editions, as well as any further question -
                we gladly support with a tailored <a href="services.php">service portfolio</a>.
            </p>

            <a name="clients"></a><h2>Clients, clients, clients</h2>
            <p>
                It is common sense today that SQL is not a "natural" language for end users (except for those geeks).
                However, it remains an excellent client/server API to easily plug visual clients into databases.
                Same with rasdaman - and we have done this coupling already for many of the key tools users like to see, such as:
                <ul>
                    <li><span class="label label-default">Analytics tools:</span> R, python, Java, C++, ... </li>
                    <li><span class="label label-default">Visual geo clients:</span> OpenLayers, Leaflet, NASA WorldWind, ...  </li>
                    <li><span class="label label-default">Geo workbenches:</span> QGIS, MapServer, GeoServer, GDAL, OPeNDAP, Pyxis, ESRI ArcGIS, ...  </li>
                </ul>
            </p>

            <a name="awards"></a><h2>Awards</h2>
            <p>
                A series of high-ranking innovation awards is marking the path of rasdaman.
                Below a selection of recent awards acknowledging rasdaman's technological lead,
                <a href="http://kahlua.eecs.jacobs-university.de/~lsis/#awards">see the full list</a>.
            </p>

            <center>
                <div class="cube-awards cube-portfolio">

                    <div id="grid-container" class="cbp-l-grid-gallery">
                        <div class="cbp-item print motion" style="width:250px !important">
                            <a target="_blank"
                               href="https://techconnectworld.com/World2019/showcase/innovation.php?a=2064"
                               class="cbp-caption"
                               data-title="DIN Innovator Award 2019">
                                <div class="cbp-caption-defaultWrap">
                                    <img src="assets/img/awards/logo-din-2019.png" height="200" alt="DIN Innovator Award 2019">
                                </div>
                                <div class="cbp-caption-activeWrap">
                                    <div class="cbp-l-caption-alignCenter">
                                        <div class="cbp-l-caption-body">
                                            <div class="cbp-l-caption-title">
                                                DIN Innovator Award 2019
                                            </div>
                                            <div class="cbp-l-caption-desc"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="cbp-item print motion" style="width:250px !important">
                            <a target="_blank"
                               href="https://techconnectworld.com/World2019/showcase/innovation.php?a=2064"
                               class="cbp-caption"
                               data-title="US TechConnect World Innovation Award 2019">
                                <div class="cbp-caption-defaultWrap">
                                    <img src="assets/img/awards/logo-techconnect-2019.png" height="200" alt="TechConnect 2019 award">
                                </div>
                                <div class="cbp-caption-activeWrap">
                                    <div class="cbp-l-caption-alignCenter">
                                        <div class="cbp-l-caption-body">
                                            <div class="cbp-l-caption-title">
                                                US TechConnect World Innovation Award 2019
                                            </div>
                                            <div class="cbp-l-caption-desc"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="cbp-item print motion" style="width:250px !important">
                            <a target="_blank"
                               href="http://www.nitec.nato.int/defence-innovation-challenge/"
                               class="cbp-caption"
                               data-title="NATO NITEC 2018 Defence Innovation Challenge Winner 2018">
                                <div class="cbp-caption-defaultWrap">
                                    <img src="assets/img/awards/nitec18.png" height="200" alt="NITEC 2018 award">
                                </div>
                                <div class="cbp-caption-activeWrap">
                                    <div class="cbp-l-caption-alignCenter">
                                        <div class="cbp-l-caption-body">
                                            <div class="cbp-l-caption-title">
                                                NATO NITEC 2018 Defence Innovation Challenge Winner 2018
                                            </div>
                                            <div class="cbp-l-caption-desc"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="cbp-item print motion" style="width:250px !important">
                            <a target="_blank"
                               href="http://www.copernicus-masters.com/index.php?kat=winners.html&anzeige=winner_t-systems2014.html"
                               class="cbp-caption"
                               data-title="Sole Winner, T-Systems Big Data Challenge">
                                <div class="cbp-caption-defaultWrap">
                                    <img src="assets/img/awards/copernicus-masters-winner-emblem.png" height="200" alt="Copernicus Masters Winner 2014">
                                </div>
                                <div class="cbp-caption-activeWrap">
                                    <div class="cbp-l-caption-alignCenter">
                                        <div class="cbp-l-caption-body">
                                            <div class="cbp-l-caption-title">
                                                Sole winner, T-Systems Big Data Challenge at
                                                Copernicus Master Competition 2014
                                            </div>
                                            <div class="cbp-l-caption-desc"></div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </center>

        </div>
        <!--/row-fluid-->
    </div>
    <!--/container-->
    <!--=== End Content Part ===-->

</section>
<!--  Content Section -->

<!-- Imprint Section -->
<?php require_once("assets/html/secondary/imprint.php") ?>
<!-- End Imprint Section -->

<!-- Javascript include -->
<?php require_once("assets/html/secondary/js-footer.php") ?>
<!-- End Javascript include -->
</body>
</html>
