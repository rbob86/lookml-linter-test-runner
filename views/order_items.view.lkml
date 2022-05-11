view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: reference {
    type: number
    sql: ${order_id} ;;
  }

  dimension: concatenated {
    type: string
    sql: CONCAT(CAST(${TABLE}.inventory_item_id as CHAR),"This is a looooooooooooooooong chatacter testing for render errors.jdlaskdlkashdkjlashdkjlahsdkljhsklajshfkasheliwuehrliuewqyriluwegfdsbjknaskjdhiluwegruygfsdajhbjasbdn.wakhewlirugwekyufagsdjbjksankdjwehfgkeruygfekyasdkjbacskj.xcna;oishdiweguahrfsa;odp;k;aslkdpwa0isdulaewisfgdkcyhjgalsiuhsliqwytewuqyiuroaljsd.nhkasbfnc.kabwvekusydiluhlwaejshfbkndmnlaweufslygiudkhjbafwjhesdbfkndzlwweargilusdhlkjbfansddkjbhjvakeufslGIDbkjcnaelgfveuwglaisdhjkbfavgfilus>bjlcnx") ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
}
