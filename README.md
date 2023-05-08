# Getting-started-Ansible

### Tasks to practice with Ansible.

<details open>
  <summary>Task1</summary>
  <ul>
    <li>Install ansible</li>
    <li>Create a new user on control machine and new user on host 1</li>
    <li>Make sure you can ssh into host 1 (using password)</li>
    <li>Generate SSH key pair on control machine</li>
    <li>Copy the public key to host 1</li>
    <li>Make sure you can ssh into host 1 (using prv/pub)</li>
  </ul>
</details>

<details open>
  <summary>Task2</summary>
  <ul>
    <li> Create the inventory file.</li>
    <li> Put the IP of host 1 in the inventory file.</li>
    <li> Use the inventory file path in your ad-hoc command instead of using the IP hard-coded.</li>
    <li> Example: `ansible all -i inventory --private-key ~/.ssh/devops -u ubuntu -m ping`.</li>
  </ul>
</details>

<details open>
  <summary>Task3</summary>
  <ul>
    <li>Create the configuration file.</li>
    <li>Insert some values in the configuration file.</li>
    <li>Run the minimized ad-hoc command</li>
    <li>Example: `ansible all -m ping`</li>
  </ul>
</details>

<details open>
  <summary>Task4</summary>
  <ul>
    <li> Insert the correct values in the configuration file.</li>
    <li> Example: `ansible all -m command -a "whoami"`</li>
    <li> What is the output of the command ?  </li>
 </ul>
</details>

<details open>
  <summary>Task5</summary>
  <ul> 
    <li>Write your first playbook file.</li>
    <li>Stop gather_facts and update cache</li>
  </ul>
</details>

<details open>
  <summary>Task6</summary>
  <ul> 
     <li>Explore some <a href="https://docs.ansible.com/ansible/latest/collections/index_module.html#ansible-builtin">ansible-builtin modules</a> like: (apt, dnf, package, service, command, copy, user, group, lineinfile, authorized_key, etc.)<br>
     </li>
    <li>Update cache.</li>
    <li>Install latest nginx.</li>
    <li>Copy index.html from controller to host 1.</li>
    <li>Restart nginx service.</li>
    <li>Can you see your index.html file when you hit host 1 on port 80 ?</li> 
  </ul>
</details>

<details open>
  <summary>Task7_Roles</summary>
  <ul>
    <li> Create your first role with name (web)</li>
    <li> The task book will include:
       <ol type="1">   
      <li> installing a package </li>
             - (get the package name from vars)
      <li> copying a list of files from controller to host using loop </li>
            - (get the list of file names from vars)
             <br>- (the actual files will be stored in ./roles/web/files)
             <br>- (will be executed using Handlers)
    </li>
      </ol>
<li>Restart the service of the installed package</li>
    - (will be executed using Handlers chaining)
  </ul>
</details>
