package cn.dto;

import java.io.Serializable;

/**
 * Created by ZLY on 2017-05-18.
 */
public class ResultData<T> implements Serializable {
    private boolean isSuccess;
    private T date;
    private String errorMessage;

    public ResultData(boolean isSuccess, T date) {
        this.isSuccess = isSuccess;
        this.date = date;
    }

    public ResultData(boolean isSuccess, String errorMessage) {
        this.isSuccess = isSuccess;
        this.errorMessage = errorMessage;
    }

    public boolean isSuccess() {
        return isSuccess;
    }

    public T getDate() {
        return date;
    }

    public String getErrorMessage() {
        return errorMessage;
    }
}
