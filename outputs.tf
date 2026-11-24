output "tag_owners_id" {
  description = "Map of id values across all tag_owners, keyed the same as var.tag_owners"
  value       = { for k, v in britive_tag_owner.tag_owners : k => v.id }
}
output "tag_owners_tag" {
  description = "Map of tag values across all tag_owners, keyed the same as var.tag_owners"
  value       = { for k, v in britive_tag_owner.tag_owners : k => v.tag }
}
output "tag_owners_tag_id" {
  description = "Map of tag_id values across all tag_owners, keyed the same as var.tag_owners"
  value       = { for k, v in britive_tag_owner.tag_owners : k => v.tag_id }
}
output "tag_owners_user" {
  description = "Map of user values across all tag_owners, keyed the same as var.tag_owners"
  value       = { for k, v in britive_tag_owner.tag_owners : k => v.user }
}

