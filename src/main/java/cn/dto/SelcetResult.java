package cn.dto;

/**
 * Created by ZLY on 2017-04-14.
 */
public class SelcetResult<T> {
    private boolean success;

    private T data;

    private String error;


    public SelcetResult(boolean success, String error) {
        this.success = success;
        this.error = error;
    }

    public SelcetResult(boolean success, T data) {
        this.success = success;
        this.data = data;
    }

    public SelcetResult(boolean success, T data, String error) {
        this.success = success;
        this.data = data;
        this.error = error;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    @Override
    public String toString() {
        return "SelcetResult{" +
                "success=" + success +
                ", data=" + data +
                ", error='" + error + '\'' +
                '}';
    }
}
