resource "britive_tag_owner" "tag_owners" {
  for_each = var.tag_owners

  tag_id = each.value.tag_id

  dynamic "tag" {
    for_each = each.value.tag != null ? each.value.tag : []
    content {
      id   = tag.value.id
      name = tag.value.name
    }
  }

  dynamic "user" {
    for_each = each.value.user != null ? each.value.user : []
    content {
      id   = user.value.id
      name = user.value.name
    }
  }
}

