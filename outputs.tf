output "vm_names_uppercase" {
  value = [
    for vm in azurerm_linux_virtual_machine.vm :
    upper(vm.name)
  ]
}

output "joined_tags" {
  value = join(", ", values(local.tags))
}

output "vm_ids" {
  value = [
    for vm in azurerm_linux_virtual_machine.vm :
    vm.id
  ]
}
