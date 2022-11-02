class GoodsInfo < ApplicationRecord
  self.table_name = 'tb_newbee_mall_goods_info'
  # self.primary_key = 'goods_id'
  has_many :index_configs
end
