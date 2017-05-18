package cn.entity;

public class HousesDictionary {
    /**
     * 
     */
    private Integer id;

    /**
     * 城区
     */
    private String urban;

    /**
     * 用途
     */
    private String property;

    /**
     * 商圈
     */
    private String tradArea;

    /**
     * 类型
     */
    private String type;

    /**
     * 楼盘名称
     */
    private String name;

    /**
     * 建房产权
     */
    private String propertyRight;

    /**
     * 拼音缩写
     */
    private String spellingAbbreviation;

    /**
     * 售均价
     */
    private Integer sellAveragePrice;

    /**
     * 别名
     */
    private String alias;

    /**
     * 建筑面积
     */
    private Integer buildingArea;

    /**
     * 英文名称
     */
    private String englishName;

    /**
     * 总户数
     */
    private Integer wholeClients;

    /**
     * 概要地址
     */
    private String briefAddress;

    /**
     * 结构
     */
    private String structure;

    /**
     * 详细地址
     */
    private String detailAddress;

    /**
     * 
     */
    private String outerWall;

    /**
     * 英文地址
     */
    private String englishAddress;

    /**
     * 土地土地号
     */
    private Integer landNumber;

    /**
     * 物业主
     */
    private String houseOwner;

    /**
     * 备注
     */
    private String remark;

    /**
     * 物业主电话
     */
    private Integer ownerTelephone;

    /**
     * 物业公司
     */
    private String propertyManagment;

    /**
     * 物业公司电话
     */
    private Integer managementTelephone;

    /**
     * 物业费
     */
    private Integer managementCost;

    /**
     * 
     * @return id 
     */
    public Integer getId() {
        return id;
    }

    /**
     * 
     * @param id 
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 城区
     * @return urban 城区
     */
    public String getUrban() {
        return urban;
    }

    /**
     * 城区
     * @param urban 城区
     */
    public void setUrban(String urban) {
        this.urban = urban == null ? null : urban.trim();
    }

    /**
     * 用途
     * @return property 用途
     */
    public String getProperty() {
        return property;
    }

    /**
     * 用途
     * @param property 用途
     */
    public void setProperty(String property) {
        this.property = property == null ? null : property.trim();
    }

    /**
     * 商圈
     * @return trad_area 商圈
     */
    public String getTradArea() {
        return tradArea;
    }

    /**
     * 商圈
     * @param tradArea 商圈
     */
    public void setTradArea(String tradArea) {
        this.tradArea = tradArea == null ? null : tradArea.trim();
    }

    /**
     * 类型
     * @return type 类型
     */
    public String getType() {
        return type;
    }

    /**
     * 类型
     * @param type 类型
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * 楼盘名称
     * @return name 楼盘名称
     */
    public String getName() {
        return name;
    }

    /**
     * 楼盘名称
     * @param name 楼盘名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 建房产权
     * @return property_right 建房产权
     */
    public String getPropertyRight() {
        return propertyRight;
    }

    /**
     * 建房产权
     * @param propertyRight 建房产权
     */
    public void setPropertyRight(String propertyRight) {
        this.propertyRight = propertyRight == null ? null : propertyRight.trim();
    }

    /**
     * 拼音缩写
     * @return spelling_abbreviation 拼音缩写
     */
    public String getSpellingAbbreviation() {
        return spellingAbbreviation;
    }

    /**
     * 拼音缩写
     * @param spellingAbbreviation 拼音缩写
     */
    public void setSpellingAbbreviation(String spellingAbbreviation) {
        this.spellingAbbreviation = spellingAbbreviation == null ? null : spellingAbbreviation.trim();
    }

    /**
     * 售均价
     * @return sell_average_price 售均价
     */
    public Integer getSellAveragePrice() {
        return sellAveragePrice;
    }

    /**
     * 售均价
     * @param sellAveragePrice 售均价
     */
    public void setSellAveragePrice(Integer sellAveragePrice) {
        this.sellAveragePrice = sellAveragePrice;
    }

    /**
     * 别名
     * @return alias 别名
     */
    public String getAlias() {
        return alias;
    }

    /**
     * 别名
     * @param alias 别名
     */
    public void setAlias(String alias) {
        this.alias = alias == null ? null : alias.trim();
    }

    /**
     * 建筑面积
     * @return building_area 建筑面积
     */
    public Integer getBuildingArea() {
        return buildingArea;
    }

    /**
     * 建筑面积
     * @param buildingArea 建筑面积
     */
    public void setBuildingArea(Integer buildingArea) {
        this.buildingArea = buildingArea;
    }

    /**
     * 英文名称
     * @return english_name 英文名称
     */
    public String getEnglishName() {
        return englishName;
    }

    /**
     * 英文名称
     * @param englishName 英文名称
     */
    public void setEnglishName(String englishName) {
        this.englishName = englishName == null ? null : englishName.trim();
    }

    /**
     * 总户数
     * @return whole_clients 总户数
     */
    public Integer getWholeClients() {
        return wholeClients;
    }

    /**
     * 总户数
     * @param wholeClients 总户数
     */
    public void setWholeClients(Integer wholeClients) {
        this.wholeClients = wholeClients;
    }

    /**
     * 概要地址
     * @return brief_address 概要地址
     */
    public String getBriefAddress() {
        return briefAddress;
    }

    /**
     * 概要地址
     * @param briefAddress 概要地址
     */
    public void setBriefAddress(String briefAddress) {
        this.briefAddress = briefAddress == null ? null : briefAddress.trim();
    }

    /**
     * 结构
     * @return structure 结构
     */
    public String getStructure() {
        return structure;
    }

    /**
     * 结构
     * @param structure 结构
     */
    public void setStructure(String structure) {
        this.structure = structure == null ? null : structure.trim();
    }

    /**
     * 详细地址
     * @return detail_address 详细地址
     */
    public String getDetailAddress() {
        return detailAddress;
    }

    /**
     * 详细地址
     * @param detailAddress 详细地址
     */
    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress == null ? null : detailAddress.trim();
    }

    /**
     * 
     * @return outer_wall 
     */
    public String getOuterWall() {
        return outerWall;
    }

    /**
     * 
     * @param outerWall 
     */
    public void setOuterWall(String outerWall) {
        this.outerWall = outerWall == null ? null : outerWall.trim();
    }

    /**
     * 英文地址
     * @return english_address 英文地址
     */
    public String getEnglishAddress() {
        return englishAddress;
    }

    /**
     * 英文地址
     * @param englishAddress 英文地址
     */
    public void setEnglishAddress(String englishAddress) {
        this.englishAddress = englishAddress == null ? null : englishAddress.trim();
    }

    /**
     * 土地土地号
     * @return land_number 土地土地号
     */
    public Integer getLandNumber() {
        return landNumber;
    }

    /**
     * 土地土地号
     * @param landNumber 土地土地号
     */
    public void setLandNumber(Integer landNumber) {
        this.landNumber = landNumber;
    }

    /**
     * 物业主
     * @return house_owner 物业主
     */
    public String getHouseOwner() {
        return houseOwner;
    }

    /**
     * 物业主
     * @param houseOwner 物业主
     */
    public void setHouseOwner(String houseOwner) {
        this.houseOwner = houseOwner == null ? null : houseOwner.trim();
    }

    /**
     * 备注
     * @return remark 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    /**
     * 物业主电话
     * @return owner_telephone 物业主电话
     */
    public Integer getOwnerTelephone() {
        return ownerTelephone;
    }

    /**
     * 物业主电话
     * @param ownerTelephone 物业主电话
     */
    public void setOwnerTelephone(Integer ownerTelephone) {
        this.ownerTelephone = ownerTelephone;
    }

    /**
     * 物业公司
     * @return property_managment 物业公司
     */
    public String getPropertyManagment() {
        return propertyManagment;
    }

    /**
     * 物业公司
     * @param propertyManagment 物业公司
     */
    public void setPropertyManagment(String propertyManagment) {
        this.propertyManagment = propertyManagment == null ? null : propertyManagment.trim();
    }

    /**
     * 物业公司电话
     * @return management_telephone 物业公司电话
     */
    public Integer getManagementTelephone() {
        return managementTelephone;
    }

    /**
     * 物业公司电话
     * @param managementTelephone 物业公司电话
     */
    public void setManagementTelephone(Integer managementTelephone) {
        this.managementTelephone = managementTelephone;
    }

    /**
     * 物业费
     * @return management_cost 物业费
     */
    public Integer getManagementCost() {
        return managementCost;
    }

    /**
     * 物业费
     * @param managementCost 物业费
     */
    public void setManagementCost(Integer managementCost) {
        this.managementCost = managementCost;
    }
}