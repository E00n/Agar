﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'
#需要 '性能分析'

忽略错误 do
  琼脂 = C琼脂.新建(3000, 3000)
  #~ 控制器 = C细胞鼠标控制器.新建
  控制器 = C细胞自动控制器.新建(C主视角显示.新建)
  琼脂.添加细胞(C细胞.新建('Shink', 200, 40, 'red', 控制器), D二维点.新建(200, 100))
  琼脂.卵刷新设置(0.8, 100000)
  琼脂.时间同步(0.001, 80)
  #~ 琼脂.效率计算
  琼脂.运行
  #~ R单元测试.运行#(['-v'])
end
