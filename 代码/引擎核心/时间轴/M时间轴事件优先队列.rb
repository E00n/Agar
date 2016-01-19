﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'D优先队列'
module M时间轴事件优先队列
  def 挂载时间轴(时间轴)
    @时间轴 = 时间轴
    @事件优先队列 = D优先队列.新建(:发生时间)
  end
  def 脱离时间轴;@时间轴.删除对象(self) end
  def 下滤;@时间轴.下滤对象(self) end
  def 没有事件?;@事件优先队列.为空? end
  def 最早事件时间;@事件优先队列.最高优先级元素.发生时间 end
  def 添加事件(事件)
    引发异常('时间轴事件优先队列异常','时间轴未挂载') unless @时间轴
    事件.设置时间(@时间轴.当前时间)
    引发异常('时间轴事件优先队列异常','添加事件时间小于时间轴时间') if 事件.发生时间 < @时间轴.当前时间
    @事件优先队列.添加元素(事件)
    @时间轴.存在对象?(self) ? @时间轴.上滤对象(self) : @时间轴.添加对象(self)
  end
  def 添加多个事件(事件数组);事件数组.每个{|事件| 添加事件(事件)} end
  def 获得当前事件;@事件优先队列.取出最高优先级元素 end
end
