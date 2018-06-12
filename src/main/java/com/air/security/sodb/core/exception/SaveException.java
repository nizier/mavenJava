package com.air.security.sodb.core.exception;

import com.air.security.sodb.core.constant.GlobalCodeConstant;

public class SaveException extends SodbBaseException {

	private static final long serialVersionUID = -1415009329192592920L;
	
	public Integer getErrorCode(){
		return GlobalCodeConstant.SAVE_ERROR_CODE;
	}

    public String getErrorMsg(){
        return GlobalCodeConstant.SAVE_ERROR_CODE_NAME;
    }

    public SaveException(){
        super();
    }

    public SaveException(String msg,Throwable e){
        super(msg,e);
    }

    public SaveException(String msg){
        super(msg);
    }

    public SaveException(Throwable e){
        super(e);
    }
}
