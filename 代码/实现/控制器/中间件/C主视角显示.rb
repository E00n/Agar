﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C主视角显示
  def 初始化(宽 = 800, 高 = 500);@宽, @高, @对角线半径 = 宽, 高, (宽.平方 + 高.平方).开根 / 2 end
  def 窗口;@窗口 ||= C可视化窗口.新建('琼脂', @宽, @高).自己{|可视化窗口| 可视化窗口.可视化} end
  def 鼠标向量;窗口.鼠标向量 end
  def 进行调用(输入, 对象)
    带来源信能数组 = 输入.找出全部{|信能| 信能.属于?(C带来源信能)}
    缩放比例 = @对角线半径 / 对象.视野半径
    窗口.刷新页面(带来源信能数组, 缩放比例)
  end
end
