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
    
    Here you will select among a lot of types of elastic materials. Moreover, there are: "Uncoupled Elastic" options and "Others" (where rigid body option is). Once you have selected a material, you should set the properties corresponding to the selected material (below the option three), and add a body to this meterial by selecting the body of interest and pressing the "+" buttom at the right of the properties box. (To be able of select a body, make)
  
    
