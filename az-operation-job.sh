job('Azure VM Operations') {
     description('This Job Creates VMs')
     parameters {
        stringParam('LOCATION', 'eastus2', 'Azure Region resources are located')
        stringParam('RESOURCE_GROUP', 'capstone_project_2', 'Azure Resource group resources are located')
        choiceParam('VM_SIZE', [' (default)', 'Standard_B1s', 'Standard_DS2_v2', ' Standard_F1s'])
        choiceParam('ACTION', [' (default)', '1', '2', '3'], 'Choose action to perform=1-START,2-RESTART,3-STOP') 
       }
    scm {
        github('bashirusuleman/automate-azure-script-capstone')
    }
     steps {
        shell('./automate-vm.sh')
    }
        
}
