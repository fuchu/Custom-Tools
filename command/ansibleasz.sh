#! /bin/bash
function layout-autocreate(){
    mkdir -p inventories/{production,staging}/{group_vars,host_vars}
    touch inventories/{production,staging}/hosts
    mkdir -p library module_utils filter_plugins
    mkdir -p roles/common/{tasks,handlers,templates,files,vars,defaults,meta,library,module_utils,lookup_plugins}
    touch site.yml roles/common/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml
    # echo '''
    #     inventories/
    #     production/
    #         hosts               # inventory file for production servers
    #         group_vars/
    #             group1.yml       # here we assign variables to particular groups
    #             group2.yml
    #         host_vars/
    #             hostname1.yml    # here we assign variables to particular systems
    #             hostname2.yml

    #     staging/
    #         hosts               # inventory file for staging environment
    #         group_vars/
    #             group1.yml       # here we assign variables to particular groups
    #             group2.yml
    #         host_vars/
    #             stagehost1.yml   # here we assign variables to particular systems
    #             stagehost2.yml

    #     library/
    #     module_utils/
    #     filter_plugins/

    #     site.yml
    #     webservers.yml
    #     dbservers.yml

    #     roles/
    #         common/
    #         webtier/
    #         monitoring/
    #         fooapp/
    # '''
}
layout-autocreate