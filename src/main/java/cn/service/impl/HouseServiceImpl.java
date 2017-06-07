package cn.service.impl;

import cn.dao.*;
import cn.dto.*;
import cn.entity.*;
import cn.service.HouseService;
import cn.utils.DataTransferUtil;
import cn.utils.TinyUtilis;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by ZLY on 2017-05-19.
 */
@Service
public class HouseServiceImpl implements HouseService {
//房源信息dao
    @Autowired
    HousemsgMapper housemsgDao;
//    组织机构dao
    @Autowired
    OrganizationStructureMapper organizationStructureDao;
//    登录用户dao
    @Autowired
    UserMapper userDao;
//    房源跟进dao
    @Autowired
    FollowupHouseMapper followupHouseDao;
//    用户职务
    @Autowired
    UserDutiesMapper userDutiesDao;
    @Autowired
    KeyMapper keyDao;
    //楼盘字典dao
    @Autowired
    HousesDictionaryMapper housesDictionaryDao;
    @Autowired
    EnterpriseDutiesMapper enterpriseDutiesDao;
    @Autowired
    HouseOwnerMapper houseOwnerDao;



    /**
     * 根据当前登录用户权限查询房源信息
     *
     * @return
     */
    @Override
    public List<HouseList> findHouseByPermission() {
/*//查找两个合集

        //TODO 地域跨区的的部门权限的查询(可以使用aop)

//两个集合取交集(由于存储空间 不同所以不能用retainAll去重)
        //housemsgSetByAttribute.retainAll(DepartmenthouseSet);
        Set<Housemsg> result = DataTransferUtil.setRetainAll(housemsgSetByAttribute,DepartmenthouseSet);
        //格式转换

        return HousemsgToHouseListWithNameTransfer(DataTransferUtil.setToList(result));*/

        //根据房源查看权限得到查询参数
        Map<String,String> sqlParam = permissionToParam();
        //根据参数查询房源
        Set<Housemsg> housemegSet = findBySqlParam(sqlParam);
        //去重复
        housemegSet = DataTransferUtil.setRetainAll(housemegSet,housemegSet);
        //列表字段权限处理
        housemegSet =  dealHouseListPermission(housemegSet);


            return HousemsgToHouseListWithNameTransfer(DataTransferUtil.setToList(housemegSet));

    }


    /**
     * 返回增加房源的主键
     * @param houseMessageAvailable
     * @return
     */

    @Override
    public String add(HouseMessageAvailable houseMessageAvailable) {
        Housemsg housemsg = houseMessageAvailableToHousemsg(houseMessageAvailable);
        //生成主键
        housemsg = addHousePrimaryKey(housemsg);
        int i = housemsgDao.insertSelective(housemsg);
        //主键重复，重新生成
        if (i<=0){
            for(i=-1;i<=0;i=housemsgDao.insertSelective(housemsg)){
                housemsg = addHousePrimaryKey(housemsg);
            }
        }
        return housemsg.getId();
    }
    /**
     * 生成房源主键
     * @param housemsg
     * @return
     */
    private Housemsg addHousePrimaryKey(Housemsg housemsg) {
        String houseId;
        UserDuties userDuties = userDutiesDao.selectByUserId(Long.parseLong(housemsg.getUserId()));
        String departmentHouseIdPre = organizationStructureDao.selectByPrimaryKey(userDuties.getOrganizationId()).getNumberPre();
        String userHouseIdPre = userDuties.getUserHousePre();
            //公盘时 组织前缀+数字随机(9)
            if (housemsg.getAttribute().equals("公盘")) {
                houseId = departmentHouseIdPre + TinyUtilis.getNumberRandom(9);
            }
            //私盘时 组织前缀+个人前缀+数字随机(6)
            else {
                houseId = departmentHouseIdPre + userHouseIdPre + TinyUtilis.getNumberRandom(6);
            }
            housemsg.setId(houseId);

        //todo:封盘，特盘
        return housemsg;
    }

    private Housemsg houseMessageAvailableToHousemsg(HouseMessageAvailable houseMessageAvailable) {
        //解决tag数组过短的问题
        if (houseMessageAvailable.getTag()==null){
            houseMessageAvailable.setTag(new String[3]);
        }
       else if (houseMessageAvailable.getTag().length==1){
            String[] tags = new String[3];
            tags[0]=houseMessageAvailable.getTag()[0];
            houseMessageAvailable.setTag(tags);
        }
        else if (houseMessageAvailable.getTag().length==2){
            String[] tags = new String[3];
            tags[0]=houseMessageAvailable.getTag()[0];
            tags[1]=houseMessageAvailable.getTag()[1];
            houseMessageAvailable.setTag(tags);
        }
        return new Housemsg(
                houseMessageAvailable.getId(),
                houseMessageAvailable.getApplication(),
                houseMessageAvailable.getTransaction(),
                ((houseMessageAvailable.getAddress()[0]==null||houseMessageAvailable.getAddress()[0].equals(""))?"-":houseMessageAvailable.getAddress()[0])+"/"+
                        ((houseMessageAvailable.getAddress()[1]==null||houseMessageAvailable.getAddress()[1].equals(""))?"-":houseMessageAvailable.getAddress()[1])+"/"+
                        ((houseMessageAvailable.getAddress()[2]==null||houseMessageAvailable.getAddress()[2].equals(""))?"-":houseMessageAvailable.getAddress()[2])+"/"+
                        ((houseMessageAvailable.getAddress()[3]==null||houseMessageAvailable.getAddress()[3].equals(""))?"-":houseMessageAvailable.getAddress()[3])+"/"+
                        ((houseMessageAvailable.getAddress()[4]==null||houseMessageAvailable.getAddress()[4].equals(""))?"-":houseMessageAvailable.getAddress()[4])+"/"+
                        ((houseMessageAvailable.getAddress()[5]==null||houseMessageAvailable.getAddress()[5].equals(""))?"-":houseMessageAvailable.getAddress()[5])+"/"+
                        ((houseMessageAvailable.getAddress()[6]==null||houseMessageAvailable.getAddress()[6].equals(""))?"-":houseMessageAvailable.getAddress()[6])+"/"+
                        ((houseMessageAvailable.getAddress()[7]==null||houseMessageAvailable.getAddress()[7].equals(""))?"-":houseMessageAvailable.getAddress()[7]),
                        houseMessageAvailable.getArea()[0]+"/"+
                        houseMessageAvailable.getArea()[1],
                houseMessageAvailable.getType(),
                houseMessageAvailable.getHouseType()[0]+"/"+
                        houseMessageAvailable.getHouseType()[1]+"/"+
                        houseMessageAvailable.getHouseType()[2]+"/"+
                        houseMessageAvailable.getHouseType()[3],
                houseMessageAvailable.getDecoration(),
                houseMessageAvailable.getOrientation(),
                houseMessageAvailable.getStatus(),
                houseMessageAvailable.getSellPrice(),
                houseMessageAvailable.getAttribute(),
                houseMessageAvailable.getSellLowprice(),
                houseMessageAvailable.getPurchasingDate(),
                houseMessageAvailable.getRentPrice(),
                houseMessageAvailable.getUniquehouse(),
                houseMessageAvailable.getRentLowprice(),
                houseMessageAvailable.getPrecatoryDate(),
                houseMessageAvailable.getLoan(),
                houseMessageAvailable.getPrecatoryMethod(),
                houseMessageAvailable.getResource(),
                houseMessageAvailable.getPrecatoryNumber(),
                houseMessageAvailable.getLunchTime(),
                houseMessageAvailable.getRecordNumber(),
                houseMessageAvailable.getTag()[0]+"/"+
                        houseMessageAvailable.getTag()[1]+"/"+
                        houseMessageAvailable.getTag()[2],
                houseMessageAvailable.getRemark(),
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                houseMessageAvailable.getClientId(),
                houseMessageAvailable.getUserId()==null?null:userDao.selectByUserName(houseMessageAvailable.getUserId()).getUserId().toString(),
                houseMessageAvailable.getUserId()==null?null:userDutiesDao.selectByName(houseMessageAvailable.getUserId()).getOrganizationId()

        );
    }

    /**
     * 列表字段权限处理
     * @param housemegSet
     * @return
     */
    private Set<Housemsg> dealHouseListPermission(Set<Housemsg> housemegSet) {
        Subject currentUser = SecurityUtils.getSubject();

        Set<Housemsg> result = new HashSet<>();
        //房源列表字段查看权限数组（不用多次验证权限）4*3 公，私，特，封*楼栋位置，房号，总楼层!!!!!!!
        boolean[][] houseListPermission = new boolean[4][3];
        houseListPermission[0][0]=currentUser.isPermitted("house:public:list:address");
        houseListPermission[0][1]=currentUser.isPermitted("house:public:list:houseNumber");
        houseListPermission[0][2]=currentUser.isPermitted("house:public:list:floor");

        houseListPermission[1][0]=currentUser.isPermitted("house:private:list:address");
        houseListPermission[1][1]=currentUser.isPermitted("house:private:list:houseNumber");
        houseListPermission[1][2]=currentUser.isPermitted("house:private:list:floor");

        houseListPermission[2][0]=currentUser.isPermitted("house:super:list:address");
        houseListPermission[2][1]=currentUser.isPermitted("house:super:list:houseNumber");
        houseListPermission[2][2]=currentUser.isPermitted("house:super:list:floor");

        houseListPermission[3][0]=currentUser.isPermitted("house:dead:list:address");
        houseListPermission[3][1]=currentUser.isPermitted("house:dead:list:houseNumber");
        houseListPermission[3][2]=currentUser.isPermitted("house:dead:list:floor");

        for (Housemsg housemsg:housemegSet){
            String[] houseAddress = housemsg.getAddress().split("/");
            if (housemsg.getAttribute().equals("公盘")){
                if (houseListPermission[0][0]==false) houseAddress[3]="***";//栋座位置
                if (houseListPermission[0][1]==false) houseAddress[5]="***";//房号
                if (houseListPermission[0][2]==false) houseAddress[7]="***";//楼层
            }
            else if (housemsg.getAttribute().equals("私盘")){
                if (houseListPermission[1][0]==false) houseAddress[3]="***";
                if (houseListPermission[1][1]==false) houseAddress[5]="***";
                if (houseListPermission[1][2]==false) houseAddress[7]="***";
            }
            else if (housemsg.getAttribute().equals("特盘")){
                if (houseListPermission[2][0]==false) houseAddress[3]="***";
                if (houseListPermission[2][1]==false) houseAddress[5]="***";
                if (houseListPermission[2][2]==false) houseAddress[7]="***";
            }
            else if (housemsg.getAttribute().equals("封盘")){
                if (houseListPermission[3][0]==false) houseAddress[3]="***";
                if (houseListPermission[3][1]==false) houseAddress[5]="***";
                if (houseListPermission[3][2]==false) houseAddress[7]="***";
            }
            StringBuilder houseAddressSB = new StringBuilder();
            for (int i = 0;i<houseAddress.length;i++){
                if (i!=houseAddress.length-1) houseAddressSB.append(houseAddress[i]+"/");
                else houseAddressSB.append(houseAddress[i]);
            }
            housemsg.setAddress(houseAddressSB.toString());
            result.add(housemsg);
        }
        return result;
    }


    /**
     * 根据参数查询房源
     * @param sqlParam
     * @return
     */
    private Set<Housemsg> findBySqlParam(Map<String, String> sqlParam) {
        Set<Housemsg> result = new HashSet<>();
        //用于封装mybatis需要的参数Map
        Map param = new HashMap();

        if (sqlParam.containsKey("公盘")){
            param.put("attribute","公盘");
            param.put("departmentPre",sqlParam.get("公盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        param.clear();
        if (sqlParam.containsKey("私盘")){
            param.put("attribute","私盘");
            param.put("departmentPre",sqlParam.get("私盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        param.clear();
        if (sqlParam.containsKey("特盘")){
            param.put("attribute","特盘");
            param.put("departmentPre",sqlParam.get("特盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        param.clear();
        if (sqlParam.containsKey("封盘")){
            param.put("attribute","封盘");
            param.put("departmentPre",sqlParam.get("封盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        return result;
    }

    /**
     * 根据房源查看权限返回房源查询sql片段 String-List<String> 如：'公盘'-"'本部房源前缀','本人','跨部'"
     * @return
     */
    private Map<String, String> permissionToParam() {
        Subject currentUser = SecurityUtils.getSubject();
        Map<String,String> sqlParam = new HashMap<>(); //如：'公盘'-"'本部房源前缀','本人','跨部'"

        //获取部门的房源前缀
        UserDuties user = userDutiesDao.selectByName(currentUser.getPrincipal().toString());
        String departmentPre = organizationStructureDao.selectByPrimaryKey(user.getOrganizationId()).getNumberPre();
        //获取个人房源前缀
        String userPre = user.getUserHousePre();
        //部门加个人前缀
        String housePre = departmentPre+userPre;


        /*公盘*/
//        公盘跨部
        if (currentUser.isPermitted("house:public:listOrDetailView:crossDepartment")) sqlParam.put("公盘","");
//        公盘本部
        else if (currentUser.isPermitted("house:public:listOrDetailView:ourDepartment")) sqlParam.put("公盘",departmentPre);
//        公盘本人
        else if (currentUser.isPermitted("house:public:listOrDetailView:ourselves")) sqlParam.put("公盘",housePre);

        /*私盘*/
//        私盘跨部
        if (currentUser.isPermitted("house:private:listOrDetailView:crossDepartment"))sqlParam.put("私盘","");
//        私盘本部
        else if (currentUser.isPermitted("house:private:listOrDetailView:ourDepartment"))sqlParam.put("私盘",departmentPre);
//        私盘本人
        else if (currentUser.isPermitted("house:private:listOrDetailView:ourselves"))sqlParam.put("私盘",housePre);

        /*特盘*/
//        特盘跨部
        if (currentUser.isPermitted("house:super:listOrDetailView:crossDepartment"))sqlParam.put("特盘","");
//        特盘本部
        else if (currentUser.isPermitted("house:super:listOrDetailView:ourDepartment"))sqlParam.put("特盘",departmentPre);
//        特盘本人
        else if (currentUser.isPermitted("house:super:listOrDetailView:ourselves"))sqlParam.put("特盘",housePre);

        /*封盘*/
//        封盘跨部
        if (currentUser.isPermitted("house:dead:listOrDetailView:crossDepartment"))sqlParam.put("封盘","");
//        封盘本部
        else if (currentUser.isPermitted("house:dead:listOrDetailView:ourDepartment"))sqlParam.put("封盘",departmentPre);
//       封盘本人
        else if (currentUser.isPermitted("house:dead:listOrDetailView:ourselves"))sqlParam.put("封盘",housePre);

        return sqlParam;
    }



    /**
     * 查找全部房源到房源列表
     * @return
     */
    @Override
    public List<HouseList> findAll() {

        List<Housemsg> housemsgList = housemsgDao.selectAll();
        //数据源到列表数据的转换

            return HousemsgToHouseListWithNameTransfer(housemsgList);

    }


    @Override
    public HouseMessageAvailable findById(String houseId) {
        Housemsg result = housemsgDao.selectByPrimaryKey(houseId);
        HouseMessageAvailable houseMessageAvailable = DataTransferUtil.HousemsgToHouseMessageAvailable(result);
        //员工和组织id转名称
        houseMessageAvailable.setUserId(userDutiesDao.selectByUserId(Long.parseLong(houseMessageAvailable.getUserId())).getUserName());
        houseMessageAvailable.setOrganizationId(organizationStructureDao.selectByPrimaryKey(houseMessageAvailable.getOrganizationId()).getOrganizationName());
        return houseMessageAvailable;
    }

    /**
     * 通过houseId查找所有跟进记录
     * @param houseId
     * @return
     */
    @Override
    public List<FollowupHouse> findFollowupByHouseId(String houseId) {

        return followupHouseDao.selectByHouseId(houseId);
    }

    /**
     * 跟进字段的处理 id-》名称
     * @param followupHouses
     * @return
     */
    @Override
    public List<FollowUpHouseAvailable> followupHouseToFollowUpHouseAvailable(List<FollowupHouse> followupHouses) {
        List<FollowUpHouseAvailable> result = new ArrayList<>();
        for (FollowupHouse followupHouse:followupHouses){
            result.add(
                    new FollowUpHouseAvailable(
                            followupHouse.getId(),
                            followupHouse.getContent(),
                            userDao.selectByPrimaryKey(followupHouse.getUserid()).getUserName(),
                            enterpriseDutiesDao.selectByPrimaryKey(userDutiesDao.selectByUserId(followupHouse.getUserid()).getDutiesId()).getDutiesName(),
                            organizationStructureDao.selectByPrimaryKey(userDutiesDao.selectByUserId(followupHouse.getUserid()).getOrganizationId()).getOrganizationName(),
                            followupHouse.getTime(),
                            followupHouse.getMethod()
                            )
            );

        }
        return result;
    }


    /**
     * 根据房号查询业主
     * @param houseId
     * @return
     */
    @Override
    public HouseOwner findHouseOwner(String houseId) {

        return houseOwnerDao.selectByPrimaryKey(housemsgDao.selectByPrimaryKey(houseId).getClientId());
    }

    /**
     * 增加业主信息
     * @param houseOwner
     * @return 业主id
     */
    @Override
    public int addHouseOwner(HouseOwner houseOwner) {
        Long time = System.currentTimeMillis() / 1000;
        int id = time.intValue();
        houseOwner.setId(id);
        int i=houseOwnerDao.insertSelective(houseOwner);
        if (i<=0){
            for(i=-1;i<=0;i = houseOwnerDao.insertSelective(houseOwner)){
                time = System.currentTimeMillis() / 1000;
                id = time.intValue();
                houseOwner.setId(id);
            }
        }


        return id;
    }

    /**
     * 删除房源信息
     * @param houseId
     * @return
     */
    @Override
    @Transactional
    public ResultData<Integer> deleteHouse(String houseId) {
        Subject subject = SecurityUtils.getSubject();
        //判断房源类型，本人，本部，跨部
        Housemsg housemsg = housemsgDao.selectByPrimaryKey(houseId);
        if (housemsg==null) return new ResultData<Integer>(false,"未找到房源信息，请刷新重试");
        UserDuties user = userDutiesDao.selectByName(subject.getPrincipal().toString());
        //本人房源
        if (housemsg.getAttribute().equals("私盘")&&housemsg.getUserId().equals(user.getUserId().toString())){
            if (subject.isPermitted("house:delete:ourselves")||subject.isPermitted("house:delete:ourDepartment")||subject.isPermitted("house:delete:crossDepartment")){
               int result = housemsgDao.deleteByPrimaryKey(houseId);
               if (result>0) return new ResultData<Integer>(true,"删除成功");
               else return new ResultData<Integer>(false,"数据库操作错误，请检查您的网络连接");
            }else
                return new ResultData<Integer>(false,"您没有相关权限，请联系管理员");
        }
//        本部房源
        else if (housemsg.getOrganizationId().equals(user.getOrganizationId())){
            if (subject.isPermitted("house:delete:ourDepartment")||subject.isPermitted("house:delete:crossDepartment")){
                int result = housemsgDao.deleteByPrimaryKey(houseId);
                if (result>0) return new ResultData<Integer>(true,"删除成功");
                else return new ResultData<Integer>(false,"数据库操作错误，请检查您的网络连接");
            }else
                return new ResultData<Integer>(false,"您没有相关权限，请联系管理员");
        }

//        跨部房源
        else if (!housemsg.getOrganizationId().equals(user.getOrganizationId())){
            if (subject.isPermitted("house:delete:crossDepartment")){
                int result = housemsgDao.deleteByPrimaryKey(houseId);
                if (result>0) return new ResultData<Integer>(true,"删除成功");
                else return new ResultData<Integer>(false,"数据库操作错误，请检查您的网络连接");
            }else
                return new ResultData<Integer>(false,"您没有相关权限，请联系管理员");
        }
        else
            return new ResultData<Integer>(false,"未识别的房源信息，请联系系统管理员");


    }
    /**
     * 修改房源的归属人（员工）
     * @param houseId
     * @param houseUserName1
     * @return 修改数据条数
     */
    @Override
    public int editHouseUser(String houseId, String houseUserName1) {
        //获取归属人id和归属人的组织id
        UserDuties userDuties = userDutiesDao.selectByName(houseUserName1);
        //获取房源信息
        Housemsg housemsg = housemsgDao.selectByPrimaryKey(houseId);
        //修改数据
        housemsg.setUserId(userDuties.getUserId().toString());
        housemsg.setOrganizationId(userDuties.getOrganizationId());
        //返回插入信息
        return housemsgDao.updateByPrimaryKeySelective(housemsg);
    }

    /**
     * 新增房源信息
     * @param houseId
     * @param followupHouse
     * @return
     */
    @Override
    @Transactional
    public int addHouseFollowup(String houseId, FollowupHouse followupHouse) {

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.CHINA);
        //获取时间
        try {
            followupHouse.setTime(simpleDateFormat.parse(simpleDateFormat.format(new Date())));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //获取员工id
        followupHouse.setUserid(userDao.selectByUserName(SecurityUtils.getSubject().getPrincipal().toString()).getUserId());
        //存入房源id
        followupHouse.setHouseid(houseId);
        return followupHouseDao.insertSelective(followupHouse);
    }
    /**
     * 删除房源跟进
     * @param followUpId
     * @return
     */
    @Override
    public int delFollowHouse(Long followUpId) {
        return followupHouseDao.deleteByPrimaryKey(followUpId);
    }
    /**
     * 增加钥匙
     * @param keyForm
     * @param houseId
     * @return
     */
    @Override
    public int addHouseKey(KeyForm keyForm, String houseId) {
        //组织名转换

        //用户名转换
       Key key = new Key(
                null,
                keyForm.getKeyNumber(),
                houseId,
                keyForm.getKeyType(),
                organizationStructureDao.selectByName(keyForm.getKeyOrganazation()),
                userDao.selectByUserName(keyForm.getKeyUser()).getUserId(),
                null,
                keyForm.getKeyRemark()
        );

        return keyDao.insert(key);
    }
    /**
     * 根据房源查找房源钥匙
     * @param houseId
     * @return
     */
    @Override
    public List<KeyForm> findKeyByHouseId(String houseId) {
        //查找房源的所有钥匙
        List<Key> keyList = keyDao.selectByHouseId(houseId);

        //转换格式
        return keyListToKeyForm(keyList);
    }

    /**
     * 删除钥匙
     * @param keyId
     * @return
     */
    @Override
    public int delHouseKey(String keyId) {
        return keyDao.deleteByPrimaryKey(Integer.parseInt(keyId));
    }
    /**
     * 编辑业主
     * @param houseOwner
     * @return
     */
    @Override
    public int editHouseOwener(HouseOwner houseOwner) {
        return houseOwnerDao.updateByPrimaryKey(houseOwner);
    }

    /**
     * 房源编辑
     * @param
     * @param
     * @return
     */
    @Override
    public int editHouse(HouseMessageAvailable houseMessageAvailable) {

        return housemsgDao.updateByPrimaryKeySelective(houseMessageAvailableToHousemsg(houseMessageAvailable));
    }

    private List<KeyForm> keyListToKeyForm(List<Key> keyList) {
        List<KeyForm> keyFormList = new ArrayList<>();

        for (Key key:keyList){
            KeyForm keyForm = new KeyForm();
            keyForm.setKeyId(key.getId().toString());
            keyForm.setHouseId(key.getName());
            keyForm.setKeyNumber(key.getNumber());
            keyForm.setKeyOrganazation(organizationStructureDao.selectByPrimaryKey(key.getOrganizationid()).getOrganizationName());
            keyForm.setKeyRemark((key.getRemark()==null)?"":key.getRemark());
            keyForm.setKeyType(key.getType());
            keyForm.setKeyUser(userDao.selectByPrimaryKey(key.getUserid()).getUserName());
            keyFormList.add(keyForm);

        }
        return keyFormList;
    }

    private List<HouseList> HousemsgToHouseListWithNameTransfer( List<Housemsg> housemsgList) {

        //        从数据源到列表格式转换
        List<HouseList> houseListList = new ArrayList<>();
        SimpleDateFormat  dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
        Date lastFollowDate=new Date();
        for (Housemsg housemsg:housemsgList){
            HouseList houseList=DataTransferUtil.HouseMsgToHouseList(housemsg);
//一些id到名称的转换
            //组织id-》组织名
            houseList.setOrganization(
                    organizationStructureDao.selectByPrimaryKey(
                            houseList.getOrganization()
                    ).getOrganizationName());
            //员工ID-》员工名
            houseList.setUserName(
                    userDao.selectByPrimaryKey(Long.parseLong(houseList.getUserName())).getUserName()
            );
//  确定最后跟进日
            List<FollowupHouse> followupHouses=followupHouseDao.selectByHouseId(houseList.getId());
            try {
                lastFollowDate = dateFormat2.parse("1980-01-01");
            } catch (ParseException e) {
                e.printStackTrace();
            }

            for (FollowupHouse followupHouse:followupHouses){
                lastFollowDate=
                        (lastFollowDate.before(followupHouse.getTime()))?
                                followupHouse.getTime():lastFollowDate;
            }

            houseList.setLastFollowDate(lastFollowDate);

            houseListList.add(houseList);
        }

        return houseListList;
    }


}
