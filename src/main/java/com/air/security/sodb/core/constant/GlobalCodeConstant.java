package com.air.security.sodb.core.constant;

public class GlobalCodeConstant {
	
	public static final Integer BASE_ERROR_CODE = Integer.valueOf(10000);
	public static final String BASE_ERROR_CODE_NAME = "错误";
	
	public static final Integer LOGIN_ERROR_CODE = Integer.valueOf(11000);
	public static final String LOGIN_ERROR_CODE_NAME = "登录错误";
	
	public static final Integer SAVE_ERROR_CODE = Integer.valueOf(12001);
	public static final String SAVE_ERROR_CODE_NAME = "添加错误";
	
	public static final Integer UPDATE_ERROR_CODE = Integer.valueOf(12002);
	public static final String UPDATE_ERROR_CODE_NAME = "编辑错误";
	
	public static final Integer DELETE_ERROR_CODE = Integer.valueOf(12003);
	public static final String DELETE_ERROR_CODE_NAME = "删除错误";
	
	public static final Integer SEARCH_ERROR_CODE = Integer.valueOf(12004);
	public static final String SEARCH_ERROR_CODE_NAME = "查询错误";
	
	public static final Integer PARAMS_ERROR_CODE = Integer.valueOf(12005);
	public static final String PARAMS_ERROR_CODE_NAME = "参数错误";
	
	public static final Integer AUTH_ERROR_CODE = Integer.valueOf(22000);
	public static final String AUTH_ERROR_CODE_NAME = "权限错误";
}
