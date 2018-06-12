package com.air.security.sodb.core.exception;

import com.air.security.sodb.core.constant.GlobalCodeConstant;

public class LoginException extends SodbBaseException {

	private static final long serialVersionUID = -4769990757157532351L;
	
	public Integer getErrorCode(){
		return GlobalCodeConstant.LOGIN_ERROR_CODE;
	}

    public String getErrorMsg(){
        return GlobalCodeConstant.LOGIN_ERROR_CODE_NAME;
    }

    public LoginException(){
        super();
    }

    public LoginException(String msg,Throwable e){
        super(msg,e);
    }

    public LoginException(String msg){
        super(msg);
    }

    public LoginException(Throwable e){
        super(e);
    }
}
