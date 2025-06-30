---
title: "From single-cell modeling to large-scale network dynamics with NEST Simulator"
---

<!-- HEADER -->
<div id="header_wrap" class="outer">
<header class="inner">
<h1 id="project_title"><span style="font-size:90% !important">From single-cell modeling to large-scale network dynamics with NEST Simulator</span></h1>
<!-- <h2 id="project_tagline">No tagline here</h2> -->
</header>
</div>

<!-- MAIN CONTENT -->
<div id="main_content_wrap" class="outer">
<section id="main_content" class="inner">

<link rel="stylesheet" type="text/css" media="screen" href="https://pages-themes.github.io/slate/assets/css/style.css?v=dd924ed8bde9d034c169c8f6d051bf93723eabbd">
<link rel="stylesheet" type="text/css" media="screen" href="stylesheet.css">
<script src="moment.js"></script>
<script src="moment-timezone-with-data.js"></script>

<p style="margin-top: -1em; text-align: center; font-style: italic !important">An on-site tutorial at the [34th Annual Computational Neuroscience Meeting (CNS*2025)](https://www.cnsorg.org/cns-2025)<br>July 5-9th, 2025</p>

## Description

<img class="side_img" src="img/nest_desktop_screenshot.png" align="right">NEST is an established, open-source simulator for spiking neuronal networks, which can
capture a high degree of detail of biological network structures while retaining high
performance and scalability from laptops to HPC [1]. This tutorial offers a hands-on
experience in building and simulating neuron, synapse, and network models. It introduces
several tools and front-ends to implement modeling ideas most effectively. Participants do
not have to install software as all tools are accessible via the cloud. All parts of the tutorial are hands-on, and take place via Jupyter notebooks.

The tutorial consists of four independent parts.

<img class="side_img" src="img/astrocyte.png" align="right">We demonstrate how a tripartite connection can be included in neural simulations. We investigate the calcium dynamics in astrocytes and the effects of slow inward current on neural activity. Different connection rules are explored in order to account for spatial properties of astrocytes.

<img class="side_img" src="img/eprop_supervised_regression_schematic_handwriting.png" align="right">We develop a functional spiking network that can be trained to solve various tasks using an online, bio-inspired learning rule that approximates backpropagation through time: eligibility propagation (e-prop). Specifically, we use e-prop for training a network to solve a supervised classification task in which evidence needs to be accumulated over time, and generate arbitrary temporal patterns in a supervised regression task.

<img class="side_img" src="img/nestml_figure2.png" align="right">A neuron and synapse model are defined in NESTML that are subsequently used in a network to perform learning, prediction and replay of sequences of items, such as letters, images or sounds. The architecture learns sequences in a continuous manner: the network is exposed to repeated presentations of a given ensemble of sequences (e.g., {A,D,B,E} and {F,D,B,C}). At the beginning of the learning process, all presented sequence elements are unanticipated and do not lead to a prediction. As a consequence, the network generates mismatch signals and adjusts its synaptic strengths to minimise the prediction error.

<img class="side_img" src="img/cm_neurons_layers.png" align="right">We investigate how dendritic properties of neurons can be captured by constructing compartmental models in NEST, and using the [NEAT toolbox](https://neatdend.readthedocs.io/en/latest/). NEAT is a python library for the study, simulation and simplification of morphological neuron models. NEAT implements a new and powerful method to simplify morphological neuron models into compartmental models with few compartments.

### Citations

[1] [https://nest-simulator.readthedocs.org/](https://nest-simulator.readthedocs.org/)

[2] [https://nest-desktop.readthedocs.org/](https://nest-desktop.readthedocs.org/)

[3] [https://nestml.readthedocs.org/](https://nestml.readthedocs.org/)

[4] Potjans W, Morrison A, Diesmann M (2010). Enabling functional neural circuit
simulations with distributed computing of neuromodulated plasticity.
Frontiers in Computational Neuroscience, 4:141. DOI:
<a href="https://doi.org/10.3389/fncom.2010.00141">https://doi.org/10.3389/fncom.2010.00141</a>


## Schedule (on-site tutorial)

<script>
var default_tz = 'Europe/Rome';

var start_time = moment.tz("2025-07-05 09:00", "Europe/Rome"); // !!! also update start time in the <noscript> table in plain HTML

s = "<label for=\"tz-selector\">Timezone:&nbsp;</label>";
s += "<select class=\"select-css\" name=\"tz-selector\" id=\"tz-selector\" onChange=\"printTable(document.getElementById('schedule'), document.getElementById('tz-selector').value);\">";

moment.tz.names().forEach(function (item, index) {
	s += "<option value=\"" + item + "\"";
	if (item.localeCompare(default_tz) == 0) {
		s += " selected=\"selected\"";
	}
	s += ">" + item + "</option>";
});

s += "</select>";
document.write(s);

document.getElementById('tz-selector').value = default_tz;

function printTable(el, in_tz) {
	//alert(in_tz);
	for (var i = 0; i < document.getElementsByClassName('timecell').length; ++i) {
		item = document.getElementsByClassName('timecell')[i];
		orig_time = item.querySelector('noscript').innerHTML.replace(/^\s+|\s+$/g, '');
		//alert('orig time: ' + orig_time);
		//alert('attempted new time: ' + start_time.format("YYYY-MM-DD HH:mm:ss").slice(0, -8) + orig_time + ":00");
		//alert('new time with date: ' + moment.tz(start_time.format("YYYY-MM-DD HH:mm:ss"), "Europe/Berlin").tz(in_tz).format("YYYY-MM-DD HH:mm:ss"));
		new_time = moment.tz(start_time.format("YYYY-MM-DD HH:mm:ss").slice(0, -8) + orig_time + ":00", default_tz).tz(in_tz);
		if (i == 0) {
			//alert('new time: ' + new_time.format("dddd MMMM Do, HH:mm"));
			document.getElementById('start_date_time').innerHTML = new_time.format("dddd MMMM Do, HH:mm");
		}
		//alert('new time: ' + new_time.format());
		item.innerHTML = "<noscript>" + orig_time + "</noscript>" + new_time.format('HH:mm');
	}
}

window.addEventListener('load', (event) => {
	printTable(document.getElementById('schedule'), document.getElementById('tz-selector').value);
});

</script>

The tutorial will start on <span id="start_date_time">Saturday, July 5th, 09:00</span>. <!-- !!! also update start time in the JavaScript code, and in the <noscript> table in plain HTML -->

<div id="schedule" name="schedule">
<table>
<tr>
<th>Time <noscript>(Florence<br>timezone)</noscript></th>
<th>Description</th>
</tr>
<tr>
<td class="timecell"><noscript>09:00</noscript></td>
<td>Overview and introduction to NEST Simulator<br><span style="font-style:italic">Agnes Korcsak-Gorzo</span></td>
</tr>
<tr>
<td class="timecell"><noscript>09:10</noscript></td>
<td>Pattern generation and classification using eligibility propagation (e-prop)<br><span style="font-style:italic">Agnes Korcsak-Gorzo</span></td>
</tr>
<tr>
<td class="timecell"><noscript>09:40</noscript></td>
<td>Sequence learning with third-factor plasticity in NESTML<br><span style="font-style:italic">Leander Ewert</span></td>
</tr>
<tr>
<td class="timecell"><noscript>10:10</noscript></td>
<td>Coffee break</td>
</tr>
<tr>
<td class="timecell"><noscript>10:40</noscript></td>
<td>Simulating compartmental models using NEST and NESTML<br><span style="font-style:italic">Leander Ewert</span></td>
</tr>
<tr>
<td class="timecell"><noscript>11:25</noscript></td>
<td>Creating neuron-astrocyte networks<br><span style="font-style:italic">Saana Seppälä</span></td>
</tr>
<tr>
<td class="timecell"><noscript>12:10</noscript></td>
<td>Lunch break</td>
</tr>
</table>
</div>


## Materials

Course materials (presentations and notebooks) are available in our repository.

For presentations:

[https://github.com/clinssen/NEST-workshop/tree/master/presentations](https://github.com/clinssen/NEST-workshop/tree/master/presentations)

For the tutorial notebooks:

[https://github.com/clinssen/NEST-workshop/tree/master/materials](https://github.com/clinssen/NEST-workshop/tree/master/materials)


## Links

<div style="text-align:center">[<img src="https://raw.githubusercontent.com/clinssen/NEST-workshop/master/img/nest_logo.png" border="0">](https://nest-simulator.readthedocs.io/)<br>[<span style="font-size:120%; font-weight: 120%">NEST Simulator</span>](https://nest-simulator.readthedocs.io/)</div>

<p>NEST Simulator is a spiking neuron simulator which specialises in point neurons and neurons with few comparments. It can simulate synaptic plasticity, structural plasticity, gap junctions and countless other features on machines ranging from home PCs to high-performance computing systems.</p>

<div style="text-align:center">[<img src="https://raw.githubusercontent.com/clinssen/NEST-workshop/master/img/nest-desktop-logo.png" border="0" width="240" height="222">](https://nest-desktop.readthedocs.io/)<br>[<span style="font-size:120%; font-weight: 120%">NEST Desktop</span>](https://nest-desktop.readthedocs.io/)</div>

<p>NEST Desktop is a web-based GUI application for NEST Simulator. It enables the rapid construction, parametrization, and instrumentation of neuronal network models.</p>

<div style="text-align:center">[<img src="https://raw.githubusercontent.com/clinssen/NEST-workshop/master/img/nestml-logo.png" border="0" width="240" height="73">](https://nestml.readthedocs.io/)<br>[<span style="font-size:120%; font-weight: 120%">NESTML</span>](https://nestml.readthedocs.io/)</div>

<p>NESTML is a domain-specific modeling language and code-generation toolchain. It supports the specification of neuron models in an intuitive and concise syntax. Optimised code generation for the target simulation platform couples a highly accessible language with good simulation performance.</p>


## Registration

Please don't forget to [register](https://ocns.memberclicks.net/cns-2025-registration) for the on-site meeting in Florence. Registration is required.

Tutorials are not recorded and are not livestreamed events on YouTube. Please note that this is an on-site event only.

<!-- ## Connection details

To allow for interactive sessions, tutorials will run as “virtual rooms” (i.e. video calls) in CNS*2022. The platform is [Zoom](https://zoom.us/). It can run in your browser, and no account or installation is required. In some cases, installing the software on your local computer can improve the quality of the video and audio.

**The link for the tutorial video stream will been announced on the [Sched instance for CNS*2021](https://cns2021online.sched.com)**

-->

## Software requirements

<!--

We will provide login details for virtual machines running on Jülich Supercomputer Centre infrastructure to registered participants. You will be able to access the required software directly from your browser, without requiring any installation. Access is provided to a NEST Desktop instance, as well as a [JupyterLab](https://jupyterlab.readthedocs.io/) environment that includes NEST Simulator and NESTML.

Please register your account beforehand! See [HPC account registration](hpc_registration.html) for mode details.
-->

You will be able to access the required software directly from your browser, without requiring any installation via the EBRAINS JupyterLab platform at [https://lab.ebrains.eu/](lab.ebrains.eu/). Please make sure to [create an account](https://www.ebrains.eu/page/sign-up) before the start of the tutorial!

You can also run the software on a local computer. We suggest using two Docker images that we provide:

* [JupyterLab server with NEST and NESTML support](https://github.com/clinssen/NEST-workshop/tree/master/docker_containers/nest-nestml-tutorial)

  Launches a Jupyter Notebook server on localhost at port 7003. The password is: **nest25years**

  The image is available via DockerHub. To install:

  ```
  docker pull clifzju/nest-nestml-jupyterlab-ocns-tutorial
  ```

  Then run the image while forwarding the port:

  ```
  docker run -i -d -p 7003:7003 -t clifzju/nest-nestml-jupyterlab-ocns-tutorial
  ```

  You can then access the server in your browser by navigating to the URL [http://localhost:7003](http://localhost:7003).

  The Docker container can be started in interactive mode (giving you a shell prompt) by omitting the ``-d`` parameter.

* [NEST Desktop Docker image](https://github.com/nest-desktop/nest-desktop/tree/dev/docker)

  For local installation, we recommend to use the official NEST Desktop Docker image and instructions. Full instructions can be found at: [https://nest-desktop.readthedocs.io/en/latest/deployer/deploy-docker-compose.html](https://nest-desktop.readthedocs.io/en/latest/deployer/deploy-docker-compose.html).


## Feedback

If you participated in (any part) of this tutorial, we value your feedback! Please take a moment to fill in our short feedback form at [https://www.surveymonkey.com/r/MBMWN26](https://www.surveymonkey.com/r/MBMWN26).


## Organisation

This tutorial is organised by (in alphabetical order):

Agnes Korcsak-Gorzo (Jülich Research Centre, Germany), Iiro Ahokainen (Tampere University, Finland), Pooja Babu (Jülich Research Centre, Germany), Leander Ewert (Jülich Research Centre, Germany), Charl Linssen (Jülich Research Centre, Germany), Saana Seppälä (TAU, Finland), Sebastian Spreizer (Jülich Research Centre, Germany) and Willem Wybo (Jülich Research Centre, Germany)

For general inquiries, please contact Charl at <a href="mailto:c.linssen@fz-juelich.de">c.linssen@fz-juelich.de</a>.


## Acknowledgements

<!--

We gratefully acknowledge the use of [Fenix Infrastructure](https://fenix-ri.eu) resources as part of the Human Brain Project, funded from the European Union’s Horizon 2020 Framework Programme for Research and Innovation under Specific Grant Agreements No. 720270, No. 785907 and No. 945539 (Human Brain Project SGA1, SGA2 and SGA3), as well as the resources, expertise and support of the [Jülich Supercomputing Centre (JSC)](https://www.fz-juelich.de/en/ias/jsc) at [Jülich Research Centre, Jülich, Germany](https://fz-juelich.de).

-->

EBRAINS 2.0 has received funding from the European Union's Research and Innovation Program Horizon Europe under Grant Agreement No. 101147319.
</section>
</div>

<!-- FOOTER  -->
<div id="footer_wrap" class="outer">
<footer class="inner">

<p style="text-align: center; vertical-align: middle"><a href="https://www.ebrains.eu/" target="_blank"><img src="img/ebrains_logo.png" style="width: 400px" class="footer_img"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/co-funded-eu.png" class="footer_img" style="width: 150px"></p>

<p class="copyright" style="color: #cccccc">Slate theme maintained by <a href="https://github.com/pages-themes">pages-themes</a> &bullet; Published with <a href="https://pages.github.com">GitHub Pages</a> &bullet; Timezone magic thanks to <a href="https://momentjs.com/">moment.js</a></p>
</footer>
</div>
