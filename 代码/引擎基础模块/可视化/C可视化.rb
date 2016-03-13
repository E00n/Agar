﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C可视化
  可读属性 :长, :宽
  def 初始化(标题, 长, 宽)
    @长, @宽 = 长, 宽
    @中点 = D二维点.新建(@长 / 2, @宽 / 2)
    @主界面 = Tk主界面.创建(标题, 长, 宽, 100, 80)
    @画布 = Tk画布.创建(@主界面, 长, 宽).打包
    @画布.背景色 = 'gray'
  end
  def 刷新页面(带来源信能数组)
    Tk.延迟显示 do
      @画布.全部删除
      带来源信能数组.每个 do |带来源信能|
        C可视化对象.新建(带来源信能).tk对象(@画布, @中点)
      end
    end
  end
  def 可视化;Tk.后台运行 end
end
