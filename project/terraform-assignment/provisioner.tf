resource "null_resource" "ansible_provisioner" {

  provisioner "local-exec" {
    command = "ansible-playbook -i ../ansible-assignment/hosts ../ansible-assignment/n01619463-playbook.yml"
  }

  depends_on = [ 
    module.rgroup-n01619463,
    module.datadisk-n01619463,
    module.vmlinux-n01619463
     ]

}