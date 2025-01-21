package com.entity.vo;

import com.entity.YuyuefenpeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 预约分配
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-03-25 23:35:50
 */
public class YuyuefenpeiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 疫苗种类
	 */
	
	private String yimiaozhonglei;
		
	/**
	 * 批次号
	 */
	
	private String picihao;
		
	/**
	 * 接种地点
	 */
	
	private String jiezhongdidian;
		
	/**
	 * 疫苗余量
	 */
	
	private Integer yimiaoyuliang;
		
	/**
	 * 疫苗图片
	 */
	
	private String yimiaotupian;
		
	/**
	 * 分配时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fenpeishijian;
		
	/**
	 * 分配说明
	 */
	
	private String fenpeishuoming;
		
	/**
	 * 账号
	 */
	
	private String zhanghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：疫苗种类
	 */
	 
	public void setYimiaozhonglei(String yimiaozhonglei) {
		this.yimiaozhonglei = yimiaozhonglei;
	}
	
	/**
	 * 获取：疫苗种类
	 */
	public String getYimiaozhonglei() {
		return yimiaozhonglei;
	}
				
	
	/**
	 * 设置：批次号
	 */
	 
	public void setPicihao(String picihao) {
		this.picihao = picihao;
	}
	
	/**
	 * 获取：批次号
	 */
	public String getPicihao() {
		return picihao;
	}
				
	
	/**
	 * 设置：接种地点
	 */
	 
	public void setJiezhongdidian(String jiezhongdidian) {
		this.jiezhongdidian = jiezhongdidian;
	}
	
	/**
	 * 获取：接种地点
	 */
	public String getJiezhongdidian() {
		return jiezhongdidian;
	}
				
	
	/**
	 * 设置：疫苗余量
	 */
	 
	public void setYimiaoyuliang(Integer yimiaoyuliang) {
		this.yimiaoyuliang = yimiaoyuliang;
	}
	
	/**
	 * 获取：疫苗余量
	 */
	public Integer getYimiaoyuliang() {
		return yimiaoyuliang;
	}
				
	
	/**
	 * 设置：疫苗图片
	 */
	 
	public void setYimiaotupian(String yimiaotupian) {
		this.yimiaotupian = yimiaotupian;
	}
	
	/**
	 * 获取：疫苗图片
	 */
	public String getYimiaotupian() {
		return yimiaotupian;
	}
				
	
	/**
	 * 设置：分配时间
	 */
	 
	public void setFenpeishijian(Date fenpeishijian) {
		this.fenpeishijian = fenpeishijian;
	}
	
	/**
	 * 获取：分配时间
	 */
	public Date getFenpeishijian() {
		return fenpeishijian;
	}
				
	
	/**
	 * 设置：分配说明
	 */
	 
	public void setFenpeishuoming(String fenpeishuoming) {
		this.fenpeishuoming = fenpeishuoming;
	}
	
	/**
	 * 获取：分配说明
	 */
	public String getFenpeishuoming() {
		return fenpeishuoming;
	}
				
	
	/**
	 * 设置：账号
	 */
	 
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
