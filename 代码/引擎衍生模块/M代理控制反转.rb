﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
module M代理控制反转
  def 添加初始事件(事件)
    @初始事件 ||= []
    @初始事件 << 事件
  end
  def 初始事件;@初始事件 ||= [] end
  def 追加事件(事件)
    @追加事件 ||= []
    @追加事件 << 事件
  end
  def 获取追加事件
    @追加事件 ||= []
    追加事件, @追加事件 = @追加事件, []
    追加事件
  end
end
