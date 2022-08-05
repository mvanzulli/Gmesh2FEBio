# Gmesh2FEBio
An under construction API to use FEBio with Gmesh meshes 

1. Create virtual environment and install necessary modules with `pip`:

    Create venv:

    ```
    python3 -m venv .venv
    ```

    Activate it:

    ```
    . .venv/bin/activate
    ```

    ```
    pip install -r requirements-dev.txt
    ```
    
       
    2. The GMsh mesh has to be exported as a <NAME>.msh file in the "VERSION 2 ASCII" format in order to be correctly loaded by FEBio Studio. To do so you should click on:

> Click on: ```File``` select ```Export``` and save it with .MSH file format. 

Then automatically a Box dialog will come up and we select:

> VERSION 2 ASCII and we tick ```Save all elements``` 
    
3. In FEBio Studio.
    
    3.1. To import mesh:
    ```
    File >> Import geometry >> <NAME>.msh
    ```
    3.2. To run a simulation, at least you must make the following settings [all in the lateral options three]:
    > Rigth click on: ```Material``` and select: ```Add material``` 
    
    Here you will select among a lot of types of elastic materials. Moreover, there are: "Uncoupled Elastic" options and "Others" (where rigid body option is). Once you have selected a material, you should set the properties corresponding to the selected material (below the option three), and add a body to this meterial by selecting the body of interest and pressing the "+" buttom at the right of the properties box. (To be able of select a body, make sure you have selected the "body" buttom on top menu bar).
    
    Then, continue applying the boundary conditions:
    
     > Rigth click on: ```Boundary conditions``` and select: ```Add boundary condition``` 
    
    Here you have six options. Fixed or Prescribed: displacements, shell displacements and shell rotations. Also, you can set inf the boundary conditions are for all directions or some of them, and if they are applied during all the time or just the initial. Once you have determined the boundary conditions, you will need to specify which faces have to accomplish with these restrictions. In order to do that, select "surface" (or "face") buttom on top menu bar, select the corresponding sector an press the "+" buttom at the right of the properties box.
    
    Next, it is the time of the external loads. These can be selected among three types: Nodal load, Surface load or Body load. So, to select one of them:
    
    > Rigth click on: ```Loads``` and select: ```Add <selected> force```
    
    Here the dialog box will depend on the selected force. Each of them has his own parameters to set, for instance: type of load, value, direction. Again, once you have determined the correct load, you will be able to add the corresponding structure that recieve this load. In this case, depending on the structure that you want to select the buttom you should have activated in the top menu bar (make sure to have selected "surface" to select a whole surface in one try, or "face" to select specific element faces one by one, or "body" if you are interesting in select a whole body.)
    
    The last step before you be able to run your own simulation is to add at least one step (one more that the default step (initial)). The explanation of what is a step, and what is for is not quite straightforward, so I left here a extract of the original User's Manual of PrevIew (the previsualizator of FEBio):
    
    _"...You’ll see that PreView by default creates a single step, named the Initial step. The initial step serves a special purpose since it collects all the constraints, such as boundary conditions, loads, contact interfaces, etc. that do not depend on a particular step. In other words, all the constraints that are defined for this step will be applied during the initialization phase of the analysis and will remain active throughout all the steps. This is different from constraints defined in an analysis step, since those constraints will only remain active during that particular step..."_
    
    So, to add a step, you should do:
    
    > Rigth click on: `Step` and select: `Add step`
    
    In the dialog box that appears select the type of analysis you want to do, and set all the corresponding parameters to meet with your necessities.
    
    Now, you only have to save you model and pressing F5 to run, or throught GUI:
    
    > Click on: ` FEBio` >> ` run `
    
    After the solver finish to work (if yoyu are lucky), FEBio Studio will ask you if you want to open the results. Press ok, and analyze the displacements, stresses, Safety Factors, etc of you model!
    
    If you are not so lucky, do not be discouraged!
        
    - Analyze where the simulation broked, that could give you a hint about what happened
    - Make sure that your model is not overconstrained nor underconstrained.
    - Take a look at the shape of elements, FEBio has sume tools to analyze the sharpness and size homogenity of elements (among others)
    - Do a check in forums for similar problems, it is likely that someone already had to deal with similar issues.
    - Try it again!

