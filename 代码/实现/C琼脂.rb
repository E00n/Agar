﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C琼脂
  可读属性 :宽, :高
  def 初始化(长, 宽)
    @时间轴 = C时间轴.新建('琼脂')
    @区域 = C区域.新建('琼脂', 长, 宽, 50)
    @细胞数组 = []
  end
  def 添加(细胞, 坐标 = 随机坐标)
    C代理对象.新建(细胞, @时间轴, @区域, 坐标)
  end
  def 细胞数量;@细胞数组.数量 end
  def 运行
    @时间轴.运行 do |当前对象|
      break if S键盘.ESC?
    end
  end
end
