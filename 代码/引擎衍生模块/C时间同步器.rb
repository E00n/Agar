﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'C间隔'
需要类 'M代理控制反转'
class C时间同步器
  包含模块 M代理控制反转
  可读属性 :同步比例, :同步频率
  def 初始化(同步比例 = 0.001, 同步频率 = 10)
    @同步比例, @同步频率 = 同步比例, 同步频率
    @现实时差, @时间轴时差 = (1.0 / 同步频率), (1.0 / 同步比例 / 同步频率).整数化
  end
  
  初始化执行 do
    添加初始事件(C时间轴事件.新建(:开始同步))
  end
  
  def 开始同步
    @间隔 = C间隔.新建
    追加事件(C时间轴事件.新建(:同步, @时间轴时差))
  end
  def 同步
    @间隔.间隔 do |间隔时间|
      if 间隔时间 < @现实时差
        暂停(@现实时差 - 间隔时间)
      else
        #考虑补偿
      end
    end
    追加事件(C时间轴事件.新建(:同步, @时间轴时差))
  end
end
