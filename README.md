Sciunit as Part of Popperized Workflow
======================================

This is our example of how [Sciunit](https://sciunit.run) may be used as part of a ["Popperized"](http://falsifiable.us) scientific workflow.

An important characteristic of such a flow is that all the computations are both transparent to and reproducible by a reviewer.  While such notions of transparency and reproducibility are defining and cherished attributes of the scientific endeavor, they have often proven difficult to achieve in computational settings.

Employing Sciunit as part of the Popper convention can help both authors and reviewers of science publications understand and reproduce the computations performed in the production of a publication. 

How can Sciunit help?
---------------------

Two major hurdles which exist when attempting to reproduce a previously done computation in a different environment are:
1. Ensuring the installation of all the needed binaries and packages at the correct versions while negotiating any arising conflicts.
2. Ensuring that the inputs to the reproduced computation are identical to the original.

While there are techniques and tools which can be employed to address these challenges, it is often the case that an author or reviewer may encounter difficulty in predicting and understanding all the dependencies which must be captured and/or provided.  Additionally, tools and techniques often have a learning curve for both author and reviewer.

Sciunit provides simple automatic capture of all needed binaries and inputs for a particular execution as well as simple re-execution of the original computation on a different system.  These capabilities can be well utilized in the production of a transparent and reproducible scientific workflow.   

As a demonstration we've borrowed a predictive model from https://chicago.github.io/food-inspections-evaluation/ and integrated it with Sciunit into a workflow which follows the Popper convention.

Pre-Requisites
--------------

The execution of this flow requires a linux system with Python 2.7 and a pip installer refereable to as "pip2" which will install packages for your Python 2.7 environment.

Installing the [PopperCLI](https://github.com/systemslab/popper) is optional, but makes for easier execution.

Demonstation through the FIE Model
----------------------------------

The FIE ([food inspection evaluation](https://chicago.github.io/food-inspections-evaluation/)) model is a predictive model coded in R consisting of a preprocessing stage, the predictive model itself, and then an evaluation phase.  Knitr is utilized to transform the model outputs into publishable material.

Our Popperized workflow is set up such that a reviewer may execute a sequence of steps to perform repeat executions of the steps taken by the original author.  The repeat executions can be run without the need to reproduce the author's original environment.

<need to link "repeat ex" to exec step clearly>
First, if PopperCLI is installed, build the Sciunit environment by executing **popper run buildEnv** from the cloned repository directory.
If PopperCLI is not installed this can be run by executing **scripts/buildEnv/install-sciunit.sh**.  The layout of the project can be inferred from **.popper.yml**.

Once the Sciunit environment has been established a reviewer can perform a repeat run of the preprocessing, model execution, or evaluation steps by executing **popper run repeatPreprocess**, **popper run repeatModel**, and **popper run repeatEvaluation**.  These executions can be replayed in any order and multiple times, if desired, as Sciunit has captured the correct versions of inputs to every step.  If PopperCLI is not being used the necessary script executions can be derived by combining the path and stages tags from the pipelines specified in .popper.yml.

If a reviewer would like to see how each of the repeat steps was captured they could review backwards into the **executeModel** stage and from there find reference to the relevent source code if need be.

<need knitr code>
<need to adjust FIE scripts to place all package installs into 00 script>
