package cn.entity;

public class Connection extends ConnectionKey {
    /**
     * 电话类型（固话，手机，移动端等）
     */
    private String style;

    /**
     * 绑定状态
     */
    private Long binding;

    /**
     * 电话类型（固话，手机，移动端等）
     * @return style 电话类型（固话，手机，移动端等）
     */
    public String getStyle() {
        return style;
    }

    /**
     * 电话类型（固话，手机，移动端等）
     * @param style 电话类型（固话，手机，移动端等）
     */
    public void setStyle(String style) {
        this.style = style == null ? null : style.trim();
    }

    /**
     * 绑定状态
     * @return binding 绑定状态
     */
    public Long getBinding() {
        return binding;
    }

    /**
     * 绑定状态
     * @param binding 绑定状态
     */
    public void setBinding(Long binding) {
        this.binding = binding;
    }
}