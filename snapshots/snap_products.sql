{% snapshot snap_products %}

{{
    config(
      target_database='analytics',
      target_schema='dbt_paleti1990',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from RAW.JAFFLE_SHOP_EXT.PRODUCTS

{% endsnapshot %}
