﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'D矩形区域'
class D二维单域网格 < D矩形区域
  def 初始化(高点, x格数, y格数)
    super(D二维点.新建(0,0), 高点)
    @x格距, @y格距 = 长 / x格数, 宽 / y格数
    @元素_网格哈希 = R哈希.新建
    @二维数组 = R数组.新建(x格数){R数组.新建(y格数){R数组.新建()}}
  end
  def 添加元素(元素)
    相交网格 = 求相交网格(元素.范围)
    return false if 相交网格 == nil
    相交网格.每个{|网格| 网格 << 元素}
    @元素_网格哈希[元素] = 相交网格
  end
  def 刷新元素(元素)
    原相交网格 = @元素_网格哈希[元素]
    引发异常('网格移动元素异常','该元素不在网格中') unless 原相交网格
    现相交网格 = 求相交网格(元素.范围)
    (原相交网格 - 现相交网格).每个{|网格| 网格.删除(元素)}
    (现相交网格 - 原相交网格).每个{|网格| 网格 << 元素}
    @元素_网格哈希[元素] = 现相交网格
  end
  def 删除元素(元素)
    @元素_网格哈希[元素].每个{|网格| 网格.删除(元素)}
    @元素_网格哈希[元素] = nil
  end
  def 求相交网格(范围)
    return nil unless 包围?(范围)
    x起点 = 范围.低点.x / @x格距
    x终点 = 范围.高点.x / @x格距
    y起点 = 范围.低点.y / @y格距
    y终点 = 范围.高点.y / @y格距
    (x起点..x终点).注入([]) {|数组, x坐标| 数组 + @二维数组[x坐标][y起点..y终点]}
  end
  def 每个可能相交元素(范围);求相交网格(范围).重整.去重.每个{|元素| yield(元素)} end
end