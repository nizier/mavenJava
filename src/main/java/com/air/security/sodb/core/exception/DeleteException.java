package com.air.security.sodb.core.exception;

import com.air.security.sodb.core.constant.GlobalCodeConstant;

public class DeleteException extends SodbBaseException {

	private static final long serialVersionUID = -383040816404716572L;
	
	public Integer getErrorCode(){
		return GlobalCodeConstant.DELETE_ERROR_CODE;
	}

    public String getErrorMsg(){
        return GlobalCodeConstant.DELETE_ERROR_CODE_NAME;
    }

    public DeleteException(){
        super();
    }

    public DeleteException(String msg,Throwable e){
        super(msg,e);
    }

    public DeleteException(String msg){
        super(msg);
    }

    public DeleteException(Throwable e){
        super(e);
    }

}
