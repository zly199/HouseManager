package cn.utils;

import cn.dto.HouseList;
import cn.dto.HouseMessageAvailable;
import cn.entity.Housemsg;

import java.util.Date;

/**
 * 用户数据库的字段到可用实体的转换工具
 * Created by ZLY on 2017-05-19.
 */
public class DataTransferUtil {

    /**
     * 数据库房源实体转可用房源实体
     * @param housemsg
     * @return
     */
    public static HouseMessageAvailable HousemsgToHouseMessageAvailable(Housemsg housemsg){
        HouseMessageAvailable houseMessageAvailable = new HouseMessageAvailable();
        houseMessageAvailable.setId(housemsg.getId());
        houseMessageAvailable.setApplication(housemsg.getApplication());
        houseMessageAvailable.setTransaction(housemsg.getTransaction());
        houseMessageAvailable.setAddress(StringToStringList(housemsg.getAddress()));
        houseMessageAvailable.setArea(StringToDoubleList(housemsg.getArea()));
        houseMessageAvailable.setType(housemsg.getType());
        houseMessageAvailable.setHouseType(StringToIntList(housemsg.getHouseType()));
        houseMessageAvailable.setDecoration(housemsg.getDecoration());
        houseMessageAvailable.setOrientation(housemsg.getOrientation());
        houseMessageAvailable.setStatus(housemsg.getStatus());
        houseMessageAvailable.setSellPrice(housemsg.getSellPrice());
        houseMessageAvailable.setAttribute(housemsg.getAttribute());
        houseMessageAvailable.setSellLowprice(housemsg.getSellLowprice());
        houseMessageAvailable.setPurchasingDate(housemsg.getPurchasingDate());
        houseMessageAvailable.setRentPrice(housemsg.getRentPrice());
        houseMessageAvailable.setUniquehouse(housemsg.getUniquehouse());
        houseMessageAvailable.setRentLowprice(housemsg.getRentLowprice());
        houseMessageAvailable.setPrecatoryDate(housemsg.getPrecatoryDate());
        houseMessageAvailable.setLoan(housemsg.getLoan());
        houseMessageAvailable.setPrecatoryMethod(housemsg.getPrecatoryMethod());
        houseMessageAvailable.setResource(housemsg.getResource());
        houseMessageAvailable.setPrecatoryNumber(housemsg.getPrecatoryNumber());
        houseMessageAvailable.setLunchTime(housemsg.getLunchTime());
        houseMessageAvailable.setRecordNumber(housemsg.getRecordNumber());
        houseMessageAvailable.setTag(StringToStringList(housemsg.getTag()));
        houseMessageAvailable.setRemark(housemsg.getRemark());
        houseMessageAvailable.setBuildYear(housemsg.getBuildYear());
        houseMessageAvailable.setStatusQuo(housemsg.getStatusQuo());
        houseMessageAvailable.setPropertyright(housemsg.getPropertyright());
        houseMessageAvailable.setDevelopment(housemsg.getDevelopment());
        houseMessageAvailable.setIncluding(housemsg.getIncluding());
        houseMessageAvailable.setFurniture(housemsg.getFurniture());
        houseMessageAvailable.setOriginalyPurchasingPrice(housemsg.getOriginalyPurchasingPrice());
        houseMessageAvailable.setManagementCost(housemsg.getManagementCost());
        houseMessageAvailable.setHouseholdApplicances(housemsg.getHouseholdApplicances());
        houseMessageAvailable.setPaymentHas(housemsg.getPaymentHas());
        houseMessageAvailable.setParkingPlot(housemsg.getParkingPlot());
        houseMessageAvailable.setPaymentMethod(housemsg.getPaymentMethod());
        houseMessageAvailable.setSeeTheHouse(housemsg.getSeeTheHouse());
        houseMessageAvailable.setProductionLicenseNumber(housemsg.getProductionLicenseNumber());
        houseMessageAvailable.setYearOfPropertyRight(housemsg.getYearOfPropertyRight());
        houseMessageAvailable.setCertificateOfHouseProperty(housemsg.getCertificateOfHouseProperty());
        houseMessageAvailable.setIdCard(housemsg.getIdCard());
        houseMessageAvailable.setPrecatoryBook(housemsg.getPrecatoryBook());
        houseMessageAvailable.setClientId(housemsg.getClientId());
        houseMessageAvailable.setUserId(housemsg.getUserId());
        houseMessageAvailable.setOrganizationId(housemsg.getOrganizationId());
        return houseMessageAvailable;
    }

    /**
     * 根据可用房源实体庄欢成列表实体
     * @param houseMessageAvailable
     * @return
     */
    public static HouseList HouseMessageAvailableToHouseList(HouseMessageAvailable houseMessageAvailable){
        //地址处理
        String[] adresss=houseMessageAvailable.getAddress();
//         类型处理
        int[] houseType = houseMessageAvailable.getHouseType();
        String housets = houseType[0]+"-"+houseType[1]+"-"+houseType[2]+"-"+houseType[3];
//        标签处理
        String[] tags = houseMessageAvailable.getTag();
        StringBuilder stringBuilder = new StringBuilder();
        if (tags!=null){
            for (String s:tags){
                if (s.equals("优质房")) stringBuilder.append("'优'");
                if (s.equals("聚焦房")) stringBuilder.append("'聚'");
                if (s.equals("速销房")) stringBuilder.append("'速'");
            }
        }else  stringBuilder.append("-");

        HouseList houseList = new HouseList(
                stringBuilder.toString(),
                houseMessageAvailable.getId(),
                houseMessageAvailable.getTransaction(),
                houseMessageAvailable.getStatus(),
                adresss[0],
                adresss[1],
                adresss[2],
                adresss[3],
                adresss[5],
                adresss[7],
                housets,
                houseMessageAvailable.getSellPrice(),
                houseMessageAvailable.getRentPrice(),
                houseMessageAvailable.getSeeTheHouse(),
                houseMessageAvailable.getOrganizationId(),
                houseMessageAvailable.getUserId(),
                houseMessageAvailable.getAttribute(),
                new Date(),
                0
        );
//todo:1.date 2.userId->userName 3.organiztionId->organiztion 4.phonecount
        return houseList;
    }

    /**
     * 数据库实体转房源列表实体
     * @param housemsg
     * @return
     */
    public static HouseList HouseMsgToHouseList(Housemsg housemsg){
        return HouseMessageAvailableToHouseList(HousemsgToHouseMessageAvailable(housemsg));
    }

    public static String[] StringToStringList(String data){
        String[] strings=new String[1];
        if(data!=null){
            strings =data.split("/");
        }else strings[0]=" ";

        return strings;
    }

    public static double[] StringToDoubleList(String data){

        String[] strings=data.split("/");
        double[] results = new double[strings.length];
        for (int i = 0;i<results.length;i++){
            results[i]=Double.parseDouble(strings[i]);
        }
        return results;
    }

    private static int[] StringToIntList(String data) {
        String[] strings=data.split("/");
        int[] results = new int[strings.length];
        for (int i = 0;i<results.length;i++){
            results[i]=Integer.parseInt(strings[i]);
        }
        return results;

    }

    public static void main(String[] args) {
        String[] strings=StringToStringList("嘉定区/江桥/嘉秀新苑/06号/0/0601/0/7");
        System.out.println(strings);
    }
}
