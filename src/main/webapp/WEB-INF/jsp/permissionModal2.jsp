<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ZLY
  Date: 2017-05-23
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<form id = "permissionForm">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true"></span></button>
            <h3 class="modal-title" id="exampleModalLabel">设置权限</h3>
        </div>
        <div class="modal-body" style="height: 470px; width: 930px; ">
            <div class="tabbable tabbable-custom tabbable-full-width">

                <ul class="nav nav-tabs">
                    <li>
                        <a href="#tab_1_1" data-toggle="tab">房源1</a>
                    </li>
                    <li>
                        <a href="#tab_1_2" data-toggle="tab">房源2</a>
                    </li>
                    <li>
                        <a href="#tab_1_3" data-toggle="tab">房源3</a>
                    </li>
                    <li>
                        <a href="#tab_1_4" data-toggle="tab">客源</a>
                    </li>

                </ul>


                <div class="tab-content">
                    <div class="tab-pane row-fluid active tab-pane profile-classic row-fluid center1" id="tab_1_1">
                        <div class="cell c1">
                            <h5>公盘</h5>
                            列表/详情查看:
                            <select style="width: 60px;" name="permissionSet">
                                <option value="">无</option>
                                <option <c:if test="${permissionSet.contains('house:public:listOrDetailView:ourselves')}"> selected="selected"</c:if> value="house:public:listOrDetailView:ourselves">本人</option>
                                <option <c:if test="${permissionSet.contains('house:public:listOrDetailView:ourDepartment')}"> selected="selected"</c:if> value="house:public:listOrDetailView:ourDepartment">本部</option>
                                <option <c:if test="${permissionSet.contains('house:public:listOrDetailView:crossDepartment')}"> selected="selected"</c:if> value="house:public:listOrDetailView:crossDepartment">跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" <c:if test="${permissionSet.contains('house:public:followup')}"> checked="checked"</c:if>  value="house:public:followup"/>跟进查看
                            </br>
                            列表字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:public:list:address" <c:if test="${permissionSet.contains('house:public:list:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:public:list:houseNumber" <c:if test="${permissionSet.contains('house:public:list:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:public:list:floor" <c:if test="${permissionSet.contains('house:public:list:floor')}"> checked="checked"</c:if> />楼层
                            </div>
                            </br>
                            详细字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:public:detail:address" <c:if test="${permissionSet.contains('house:public:detail:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:public:detail:houseNumber" <c:if test="${permissionSet.contains('house:public:detail:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:public:detail:floor" <c:if test="${permissionSet.contains('house:public:detail:floor')}"> checked="checked"</c:if> />楼层
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:public:detail:lowPrice" <c:if test="${permissionSet.contains('house:public:detail:lowPrice')}"> checked="checked"</c:if> />底价
                            </div>
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:public:client" <c:if test="${permissionSet.contains('house:public:client')}"> checked="checked"</c:if> />业主查看

                        </div>
                        <div class="cell c1" style="margin-left: 7px;">
                            <h5>私盘</h5>
                            列表/详情查看:
                            <select style="width: 60px;" name="permissionSet">
                                <option value="">无</option>
                                <option <c:if test="${permissionSet.contains('house:private:listOrDetailView:ourselves')}"> selected="selected"</c:if> value="house:private:listOrDetailView:ourselves">本人</option>
                                <option <c:if test="${permissionSet.contains('house:private:listOrDetailView:ourDepartment')}"> selected="selected"</c:if> value="house:private:listOrDetailView:ourDepartment">本部</option>
                                <option <c:if test="${permissionSet.contains('house:private:listOrDetailView:crossDepartment')}"> selected="selected"</c:if> value="house:private:listOrDetailView:crossDepartment">跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" <c:if test="${permissionSet.contains('house:private:followup')}"> checked="checked"</c:if>  value="house:private:followup"/>跟进查看
                            </br>
                            列表字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:private:list:address" <c:if test="${permissionSet.contains('house:private:list:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:private:list:houseNumber" <c:if test="${permissionSet.contains('house:private:list:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:private:list:floor" <c:if test="${permissionSet.contains('house:private:list:floor')}"> checked="checked"</c:if> />楼层
                            </div>
                            </br>
                            详细字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:private:detail:address" <c:if test="${permissionSet.contains('house:private:detail:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:private:detail:houseNumber" <c:if test="${permissionSet.contains('house:private:detail:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:private:detail:floor" <c:if test="${permissionSet.contains('house:private:detail:floor')}"> checked="checked"</c:if> />楼层
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:private:detail:lowPrice" <c:if test="${permissionSet.contains('house:private:detail:lowPrice')}"> checked="checked"</c:if> />底价
                            </div>
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:private:client" <c:if test="${permissionSet.contains('house:private:client')}"> checked="checked"</c:if> />业主查看

                        </div>
                        <div class="cell c1" style="margin-left: 7px;">
                            <h5>特盘</h5>
                            列表/详情查看:
                            <select style="width: 60px;" name="permissionSet">
                                <option value="">无</option>
                                <option <c:if test="${permissionSet.contains('house:super:listOrDetailView:ourselves')}"> selected="selected"</c:if> value="house:super:listOrDetailView:ourselves">本人</option>
                                <option <c:if test="${permissionSet.contains('house:super:listOrDetailView:ourDepartment')}"> selected="selected"</c:if> value="house:super:listOrDetailView:ourDepartment">本部</option>
                                <option <c:if test="${permissionSet.contains('house:super:listOrDetailView:crossDepartment')}"> selected="selected"</c:if> value="house:super:listOrDetailView:crossDepartment">跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" <c:if test="${permissionSet.contains('house:super:followup')}"> checked="checked"</c:if>  value="house:super:followup"/>跟进查看
                            </br>
                            列表字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:super:list:address" <c:if test="${permissionSet.contains('house:super:list:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:super:list:houseNumber" <c:if test="${permissionSet.contains('house:super:list:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:super:list:floor" <c:if test="${permissionSet.contains('house:super:list:floor')}"> checked="checked"</c:if> />楼层
                            </div>
                            </br>
                            详细字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:super:detail:address" <c:if test="${permissionSet.contains('house:super:detail:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:super:detail:houseNumber" <c:if test="${permissionSet.contains('house:super:detail:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:super:detail:floor" <c:if test="${permissionSet.contains('house:super:detail:floor')}"> checked="checked"</c:if> />楼层
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:super:detail:lowPrice" <c:if test="${permissionSet.contains('house:super:detail:lowPrice')}"> checked="checked"</c:if> />底价
                            </div>
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:super:client" <c:if test="${permissionSet.contains('house:super:client')}"> checked="checked"</c:if> />业主查看

                        </div>
                        <div class="cell c2">
                            <h5>特盘</h5>
                            列表/详情查看:
                            <select style="width: 60px;" name="permissionSet">
                                <option value="">无</option>
                                <option <c:if test="${permissionSet.contains('house:dead:listOrDetailView:ourselves')}"> selected="selected"</c:if> value="house:dead:listOrDetailView:ourselves">本人</option>
                                <option <c:if test="${permissionSet.contains('house:dead:listOrDetailView:ourDepartment')}"> selected="selected"</c:if> value="house:dead:listOrDetailView:ourDepartment">本部</option>
                                <option <c:if test="${permissionSet.contains('house:dead:listOrDetailView:crossDepartment')}"> selected="selected"</c:if> value="house:dead:listOrDetailView:crossDepartment">跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" <c:if test="${permissionSet.contains('house:dead:followup')}"> checked="checked"</c:if>  value="house:dead:followup"/>跟进查看
                            </br>
                            列表字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:dead:list:address" <c:if test="${permissionSet.contains('house:dead:list:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:dead:list:houseNumber" <c:if test="${permissionSet.contains('house:dead:list:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:dead:list:floor" <c:if test="${permissionSet.contains('house:dead:list:floor')}"> checked="checked"</c:if> />楼层
                            </div>
                            </br>
                            详细字段可看:
                            <div style="padding-left: 40px;">
                                <input type="checkbox" name="permissionSet" value="house:dead:detail:address" <c:if test="${permissionSet.contains('house:dead:detail:address')}"> checked="checked"</c:if> />栋座位置
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:dead:detail:houseNumber" <c:if test="${permissionSet.contains('house:dead:detail:houseNumber')}"> checked="checked"</c:if> />房号
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:dead:detail:floor" <c:if test="${permissionSet.contains('house:dead:detail:floor')}"> checked="checked"</c:if> />楼层
                                </br>
                                <input type="checkbox" name="permissionSet" value="house:dead:detail:lowPrice" <c:if test="${permissionSet.contains('house:dead:detail:lowPrice')}"> checked="checked"</c:if> />底价
                            </div>
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:dead:client" <c:if test="${permissionSet.contains('house:dead:client')}"> checked="checked"</c:if> />业主查看

                        </div>
                    </div>

                    <div class="tab-pane row-fluid profile-account" id="tab_1_2">

                        <div class="cell c1" style="padding-left: 20px; width: 220px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />房源新增
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" id="" />房源删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />公共房源跟进可看
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />归属转移
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />看业主电话
                            <input type="text" name="" id="" style="width: 40px;" />次/天
                            </br>
                            <input type="text" name="" id="" placeholder="<999屏蔽电话且限制看的次数" disabled="disabled" style="width: 100px;" />
                            </br>
                            <input type="text" name="" id="" placeholder="=999明显显示电话" disabled="disabled" style="width: 100px;" />
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                            <h5>[用途]可查看</h5>
                            <input type="checkbox" name="permissionSet" id="" />住宅
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />商铺
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />商住
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />写字楼
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />铺厂
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />写厂
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />车位
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />地皮
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />仓库
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />厂房
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />委托日期修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[预定]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[已售/我售]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[已租/我租]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[其他状态]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[非有效]-[有效]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[预定]看业主电话
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />(禁用看业主)设置
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />看业主不必写审请
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />看业主不必写跟进
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />出售看业主<input type="text" name="" id="" style="width: 40px;" />次/天
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />出租看业主<input type="text" name="" id="" style="width: 40px;" />次/天
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />租售看业主<input type="text" name="" id="" style="width: 40px;" />次/天
                            </br>
                            <input type="text" name="" id="" placeholder=">999不限次+记日志" disabled="disabled" style="width: 100px;" />
                            </br>
                            <input type="text" name="" id="" placeholder="=999不限次+不记日志" disabled="disabled" style="width: 100px;" />

                        </div>
                        <div class="cell c2" style="padding-left: 20px; ">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />跟进新增【本人】
                            </div>
                            <input type="checkbox" name="permissionSet" id="" />跟进修改【本人】
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />跟进删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />房源激活
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />修改共享账号房源第一人

                            </br>
                            <input type="checkbox" name="permissionSet" id="" />优质房设置
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />聚焦房设置
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />速销房设置
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />不受(每房源看业主次数限制)

                            </br>
                            <input type="checkbox" name="permissionSet" id="" />房源审核
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />房源导出
                            </br>
                            <h5>钥匙管理</h5>
                            <input type="checkbox" name="permissionSet" id="" />新增
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />借出
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />归还
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />收回
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />查看密码
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                        </div>
                    </div>

                    <div class="tab-pane row-fluid profile-account" id="tab_1_3">

                        <div class="cell c1" style="padding-left: 20px; width: 220px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />全部修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" id="" />部分修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />交易人 &nbsp; &nbsp;<input type="checkbox" name="permissionSet" id="" />归属人1
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />房型 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />归属人2
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />面积 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />归属人3
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />业主 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />权益人
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />状态 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />总层 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />委托编号
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />价格 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />房产证
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />来源 <input type="checkbox" name="permissionSet" id="" style="margin-left: 24px;" />房源明细
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />备注
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />添加业主/联系人
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                            <h5>交易可查看</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />出售
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />出租
                            </div>
                            <h5>[委托]可保存</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />A委托方式
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />B委托方式
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />C委托方式
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />X委托方式
                            </div>
                            <h5>图片</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />新增
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />删除
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />下载
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>

                                </select>
                            </div>
                            <h5>全景看房</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />关联/取消关联
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <h5>协议附件</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />上传
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />下载
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />删除
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>

                                </select>
                            </div>
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                            <h5>房源描述</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />全部修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <h5>资料房源</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />资料房源查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />归属转移
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />查看业主
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />全部修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <h5>部分修改</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" id="" />交易
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />现状
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />来源
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />房型
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />面积
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />价格
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />资料房源新增
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />资料房源看更新
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />资料房源加备注
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />资料房源转正式
                                </br>
                                <input type="checkbox" name="permissionSet" id="" />资料房源删除
                            </div>
                        </div>

                    </div>

                    <div class="tab-pane row-fluid profile-account" id="tab_1_4">

                        <div class="cell c1" style="padding-left: 20px; width: 220px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />公客查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" id="" />私客查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />私客看客户
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />带看房源查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />客源新增
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>

                            </br>
                            <input type="checkbox" name="permissionSet" id="" />全部修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />部分修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />来源
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />等级
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />归属人1
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />归属人2
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />归属人3
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />交易
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                            <h5>[交易]可查看</h5>
                            <input type="checkbox" name="permissionSet" id="" />求购
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />求租
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />租购
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />客源删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />私客设置
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />归属转移
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />客源审核
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />委托日期修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[预定]

                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[已购/我购]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[已租/我租]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[有效]-[其他状态]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[非有效]-[有效]
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />[预定]看客户电话
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />看客户不必写跟进
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />看客户 <input type="text" name="" id="" style="width: 40px;" />次/天
                                </br>
                                <input type="text" name="" id="" placeholder=">=900不限次+记日志" style="width: 140px;" disabled="disabled" />
                                </br>
                                <input type="text" name="" id="" placeholder="=900不限次+不记日志" style="width: 140px;" disabled="disabled" />

                            </div>
                            <h5>[委托]可保存</h5>

                            <input type="checkbox" name="permissionSet" id="" />A委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />B委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />C委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />X委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />公客跟进查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />私客跟进查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />跟进新增【本人】

                            </br>
                            <input type="checkbox" name="permissionSet" id="" />跟进修改【本人】
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />跟进删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />不受[每客源跟进次数]限制
                        </div>
                        <div class="cell c2" style="padding-left: 20px; ">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" id="" />公共账户修改[归属]
                            </div>
                            <input type="checkbox" name="permissionSet" id="" />公共客源跟进可看
                            </br>
                            <input type="checkbox" name="permissionSet" id="" />看客户电话 <input type="text" name="" id="" value="999" style="width: 40px;" />次/天
                            </br>
                            <input type="text" name="" id="" placeholder="<999屏蔽电话且限制看的次数" disabled="disabled" style="width:140px ;" />
                            <input type="text" name="" id="" placeholder="=999明码显示电话" disabled="disabled" style="width:140px ;" />
                        </div>
                    </div>

                    <!--END TABS-->

                </div>

            </div>

        </div>

        <div class="modal-footer">
            <div style="float: left;">

                <a href="#" id="checkAll">全都选中</a>
                <a href="#" id="clear">全部清除</a>
                <a href="#" id="myTabDrop1" class="dropdown-toggle dropdown" data-toggle="dropdown">权限预设
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">普通业务员</a>
                    </li>
                    <li>
                        <a href="#">分店经理</a>
                    </li>
                    <li>
                        <a href="#">分店秘书</a>
                    </li>
                </ul>
                <a href="#">职务授权</a>
                <a href="#" data-toggle="modal" data-target="#save">保存权限到职务</a>


            </div>
            <div>
                <button type="button" class="btn green" onclick="saveFunc()">保存</button>
                <button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>
            </div>

        </div>
    </div>

</form>
<script>
    function saveFunc() {
        $.ajax({
            cache: true,
            type: "POST",
            url:"back/permission/ediPermission/${userId}",
            data:$('#permissionForm').serialize(),// 你的formid
            async: false,
            error: function(request) {
                alert("连接错误");
            },
            success: function(data) {
                if(data>0)
                {alert("成功!");}
                if(data==0){alert("未保存任何数据");}
            }
        });
    }

</script>
</body>
</html>
