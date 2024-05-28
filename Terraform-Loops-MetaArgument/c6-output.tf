# List
output "for_output_list"{
    description = "list loop"
    value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

# Map
output "for_output_map"{
    description = "map loop"
    value = {for instance in aws_instance.myec2vm.public_dns: instance.id => instance.public_dns}
}

# Advanced Map
output "for_output_map2"{
    description = "Output Map advanced"
    value = {for c, instance in aws_instance.aws_instance.myec2vm: c => instance.public_dns}
}

# Output Legacy
output "legacy_split_instance"{
    description = "Legacy splat operator"
    value = aws_instance.myec2vm.*.public_dns
}

# Generalized Legacy
output "legacy_split_general"{
    description = "General splat operator"
    value = aws_instance.myec2vm[*].public_dns
}