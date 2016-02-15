﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C不动代理对象'
class C时空代理对象 < C不动代理对象
  支持 :销毁, :移动, :形变
  def 移动(事件)#外部事件
    向量 = 事件.内容
    坐标 = @坐标.位移(向量)
    范围 = @对象.形体.转换为区域(坐标)
    return false unless @所在区域.包围?(范围)
    @坐标, @范围 = 坐标, 范围
    @所在区域.刷新元素(self)
  end
  def 形变(事件)#外部事件
    计算范围
    @所在区域.刷新元素(self)
  end
end
