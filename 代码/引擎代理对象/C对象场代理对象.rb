﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C场代理对象'
class C对象场代理对象 < C场代理对象
  可读属性 :时间戳
  
  初始化执行 do
    刷新形象信息
  end
  
  def 刷新形象信息
    @形象信息 = @对象.形象信息
    设置时间戳
  end
  def 生成形象(接收对象坐标)
    来源信息 = C来源信息.新建(@坐标 - 接收对象坐标, self, @时间戳)
    @形象信息.带来源信能化(C能量.新建(:辐射能, 10), 来源信息)
  end
  def 移动(事件)
    super(事件)
    设置时间戳
  end
  def 形变(事件)
    super(事件)
    设置时间戳
  end
  def 设置时间戳;@时间戳 = R进程.单调时钟时间 end
end
