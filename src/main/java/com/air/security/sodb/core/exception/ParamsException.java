package com.air.security.sodb.core.exception;

import com.air.security.sodb.core.constant.GlobalCodeConstant;

public class ParamsException extends SodbBaseException {

	private static final long serialVersionUID = 9134128643228136798L;
	
	public Integer getErrorCode(){
		return GlobalCodeConstant.PARAMS_ERROR_CODE;
	}

    public String getErrorMsg(){
        return GlobalCodeConstant.PARAMS_ERROR_CODE_NAME;
    }

    public ParamsException(){
        super();
    }

    public ParamsException(String msg,Throwable e){
        super(msg,e);
    }

    public ParamsException(String msg){
        super(msg);
    }

    public ParamsException(Throwable e){
        super(e);
    }

}
