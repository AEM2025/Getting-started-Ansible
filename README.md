# Getting-started-Ansible

### Tasks to practice with Ansible.

<details>
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

<details>
  <summary>Task2</summary>
  <ul>
    <li> Create the inventory file.</li>
    <li> Put the IP of host 1 in the inventory file.</li>
    <li> Use the inventory file path in your ad-hoc command instead of using the IP hard-coded.</li>
    <li> Example: `ansible all -i inventory --private-key ~/.ssh/devops -u ubuntu -m ping`.</li>
  </ul>
</details>

<details>
  <summary>Task3</summary>
  <ul>
    <li>Create the configuration file.</li>
    <li>Insert some values in the configuration file.</li>
    <li>Run the minimized ad-hoc command</li>
    <li>Example: `ansible all -m ping`</li>
  </ul>
</details>

<details>
  <summary>Task4</summary>
  <ul>
    <li> Insert the correct values in the configuration file.</li>
    <li> Example: `ansible all -m command -a "whoami"`</li>
    <li> What is the output of the command ?  </li>
 </ul>
</details>

<details>
  <summary>Task5</summary>
  <ul> 
    <li>Write your first playbook file.</li>
    <li>Stop gather_facts and update cache</li>
  </ul>
</details>

<details>
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
