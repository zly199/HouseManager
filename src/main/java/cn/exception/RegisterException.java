package cn.exception;

/**
 * Created by ZLY on 2017-04-14.
 */
public class RegisterException extends UserException {
    public RegisterException(String message) {
        super(message);
    }

    public RegisterException(String message, Throwable cause) {
        super(message, cause);
    }
}
