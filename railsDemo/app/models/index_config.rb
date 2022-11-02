class IndexConfig < ApplicationRecord
  self.table_name = 'tb_newbee_mall_index_config'
  self.primary_key = 'config_id'
  belongs_to :goods_info, foreign_key: 'goods_id', primary_key: 'goods_id'
end
