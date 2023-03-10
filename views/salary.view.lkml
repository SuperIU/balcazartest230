view: salary {
  sql_table_name: demo_db.Salary ;;

  dimension: dept_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DeptID ;;
  }

  dimension: dept_name {
    type: string
    # hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }

  measure: count {
    type: count
    drill_fields: [dept.dept_id, dept.dept_name]
  }
}
