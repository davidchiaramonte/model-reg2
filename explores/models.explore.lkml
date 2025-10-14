include: "/views/*.view"

explore: models {
  # access_filter: {
  #   field: models.model_gcp_project_id
  #   user_attribute: gcp_projects
  # }
  join: most_recent_update {
    type: inner
    relationship: many_to_one
    sql_on: ${models.model_global_id} = ${most_recent_update.model_global_id} ;;
  }
}
