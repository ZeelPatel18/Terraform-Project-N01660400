resource "null_resource" "ansible" {
  count = var.vm_count
  triggers = {
    always_run = "${timestamp()}"
  }
  depends_on = [ azurerm_linux_virtual_machine.vm-linux ]
  provisioner "local-exec" {
    command = "cd ../ansible && env /usr/bin/arch -arm64 ansible-playbook n01613688-playbook.yaml"
  }
}
