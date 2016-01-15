Ansible playbook for fullstack applications with the small size server
=======================================================================

Playbooks
---------

So far, it has:

- `server base` which is `poor_mans_server.yml`
- `rails app` which is `rails_app.yml`

And I will add more playbooks for application environments in future.

How to use
-----------

    $ ansible-playbook -i hosts poor_mans_server.yml
    $ ansible-playbook -i hosts -e 'user=<new_username> vars_file=<variables_file>' rails_app.yml
    $ <deploy your rails app>

Structure of Servers
-----------------------

![Structure of Servers](https://docs.google.com/drawings/d/1pye8tDdhKZdEQzfWxW7npAtFGq8FjbiBX5aCC4-kx9E/pub?w=960&amp;h=720)
