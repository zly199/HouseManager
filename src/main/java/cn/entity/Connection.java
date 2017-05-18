package cn.entity;

public class Connection extends ConnectionKey {
    /**
     * 绑定类型（手机，微信..）
     */
    private String style;

    /**
     * 绑定状态
     */
    private Long binding;

    /**
     * 绑定类型（手机，微信..）
     * @return style 绑定类型（手机，微信..）
     */
    public String getStyle() {
        return style;
    }

    /**
     * 绑定类型（手机，微信..）
     * @param style 绑定类型（手机，微信..）
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