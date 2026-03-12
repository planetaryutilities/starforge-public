# Jupyterlab Environment
<img alt="image" src="https://github.com/user-attachments/assets/cf8adb54-a968-4af3-bd9b-cc4ecc34b7e6" />

# AI Chat
* Open the AI chat in the upper left
* If the Chat icon is not visible, refresh the page
<img alt="image" src="https://github.com/user-attachments/assets/e7123eab-b363-4375-9027-cfc0960b6567" />

* A new chat interaction is opened
* You can create a new chats
* Inspect your chat history
* Add additional instructions that add to the preconfigured system prompt
* At the bottom you’ll find the input for your prompts
* Select your agent
<img alt="image" src="https://github.com/user-attachments/assets/e9f7e5dc-dcf5-48ae-9112-61c4ad5bcaca" />

# SysML v2 authoring and evaluation
* Create a new folder for your project
* Create your SysML v2 files with extension .sysml
<img alt="image" src="https://github.com/user-attachments/assets/8b391d2f-a80c-4d39-8ef4-3a92585f697b" />

## Create a SysML v2 project
1. Select “Create Local Flexo Project” from SysMLv2 menu
2. Pick your project name
3. Confirm the creation
4. Check the status bar on the bottom left

<img alt="image" src="https://github.com/user-attachments/assets/84984a46-fb62-41e5-bd98-1dc8cf7186b9" />

## Validation
`.sysml` files within the same package are validated together, when one of those files is open in a tab that is the currently active tab.
<img alt="image" src="https://github.com/user-attachments/assets/5944f02a-ef4e-49c8-8a41-7cd47ccc9a98" />

## Commit Model
* Commit SysML model to OpenMBEE Flexo repository
* Status bar shows “Committing”
* Confirmation dialog appears when completed
<img alt="image" src="https://github.com/user-attachments/assets/5b6c7001-8881-48f4-bb3b-0ccdd1e6715f" />

## Visualization
* Commit the model
* Open the SysML view on the right side
* Enter project name and fully qualified model element name
* Select View and Style
* Hit 'render`
<img alt="image" src="https://github.com/user-attachments/assets/1e6c5e36-5325-42e5-bd4a-959eebffe13d" />

## Visual Diffing
* Right-click into your sysml file and select “Set Diff Baseline”
<img alt="image" src="https://github.com/user-attachments/assets/7f7ecb9e-f012-4a75-8a6f-2e254c15911d" />

* Open a model from Flexo or make a manual or AI-assisted change in the textual model
* Right click into into your file and select “Toggle Diff View” to see what changed
<img alt="image" src="https://github.com/user-attachments/assets/aefd40bc-fa52-400b-869b-c59538cf33a1" />

## Model evaluation
* Expressions in the SysML model can be evaluated
<img alt="image" src="https://github.com/user-attachments/assets/863c9869-6e7f-4889-944b-19525c36099c" />
* The evaluation results are stored in a file
<img alt="image" src="https://github.com/user-attachments/assets/8fc5f507-0ab1-45e2-88b8-cbd7f004057a" />

# Collaborative Modeling
* Starforge supports git-flow like operations
* You clone projects from a remote Flexo server
* You work locally and commit locally
* You push your model to the remote Flexo server
* You can pull newer version from the remote Flexo server, after cloning
<img alt="image" src="https://github.com/user-attachments/assets/31e24889-03b9-4b17-b166-7171f0eb7597" />


# AI Agents
## Adding new instructions
* Select the an agent in the chat

<img alt="image" src="https://github.com/user-attachments/assets/90ab5335-beb4-4375-8aaa-64c7b71b25d9" />

* Add a new instruction for our agent
<img alt="image" src="https://github.com/user-attachments/assets/181a4c82-aa5d-4fc1-9206-c03c2c061243" />

# Starkit AI-assisted Spacecraft Design
* Select Starkit agent
<img alt="image" src="https://github.com/user-attachments/assets/991e6948-492c-43e5-a0c3-40b8b60213d1" />

* Open the engineering design view
<img alt="image" src="https://github.com/user-attachments/assets/eb91e261-1ad6-4ad5-bc2a-3b99ffd1b311" />

* Create your spacecraft in the AI chat
* Example prompts
`Create Nexus`
`Add Power module`
`Add Thermal unit`
`What's the total mass?`
`What's the total power?`
`Deploy the radiator halfway`

<img alt="image" src="https://github.com/user-attachments/assets/6f8f5c6d-7eaa-4179-a005-2add82314a8a" />

## Commit model and inspect SysML v2 model
* Prompt `Commit model`
<img alt="image" src="https://github.com/user-attachments/assets/a83fe30f-f277-4534-a0d7-94921474becd" />

* Inspect the model in the graphical SysMML view
* Open the textual model for
<img src="https://github.com/user-attachments/assets/a18330f8-66a1-4aaf-a3e0-8ab691dc66ef" />

* A new .sysml file is created ion your current folder
<img alt="image" src="https://github.com/user-attachments/assets/4bb55ab9-5412-4014-a18c-549f69aae4b0" />


# Starkit API access
Run ```starkit.ipynb```
<img alt="image" src="https://github.com/user-attachments/assets/2cfafef3-9420-4f08-86cd-0d35b7cbe09d" />

# SysML v2 python client
Copy the Flexo URL from Settings
<img alt="image" src="https://github.com/user-attachments/assets/cd0ab154-9920-4565-be9a-93d3ae957566" />

Run ```sysmlv2_python_client.ipynb```
Replace placerholder Flexo URL
<img alt="image" src="https://github.com/user-attachments/assets/4c532299-9635-4527-a5ba-3badf599c4f7" />


# SCXML Co-simulation
## Simulation in Notebook only
Run ```scxml_co_sim.ipynb```
<img alt="image" src="https://github.com/user-attachments/assets/62a812ab-0584-42c2-8ff7-e1e831d11854" />

## Simulation with graphical visualization
Open SCXML visualization panel
<img alt="image" src="https://github.com/user-attachments/assets/74a73808-5a23-415c-957c-739abd3f7b60" />

Run ```scxml_co_sim_viz.ipynb```
<img alt="image" src="https://github.com/user-attachments/assets/df2897af-8170-4010-82fc-2d18670005f4" />
