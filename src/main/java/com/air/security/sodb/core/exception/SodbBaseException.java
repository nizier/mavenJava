package com.air.security.sodb.core.exception;

import com.air.security.sodb.core.constant.GlobalCodeConstant;

public class SodbBaseException extends RuntimeException {
	
	private static final long serialVersionUID = 1123243567654L;
	
	public Integer getErrorCode(){
		return GlobalCodeConstant.BASE_ERROR_CODE;
	}

    public String getErrorMsg(){
        return GlobalCodeConstant.BASE_ERROR_CODE_NAME;
    }

    public SodbBaseException(){
        super();
    }

    public SodbBaseException(String msg,Throwable e){
        super(msg,e);
    }

    public SodbBaseException(String msg){
        super(msg);
    }

    public SodbBaseException(Throwable e){
        super(e);
    }

}
