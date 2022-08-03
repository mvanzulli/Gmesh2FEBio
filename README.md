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
    
    
2. The GMsh mesh has to be exported as a <NAME>.msh file in the "VERSION 2 ASCII" format in order to be correctly loaded by FEBio Studio.
    
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

