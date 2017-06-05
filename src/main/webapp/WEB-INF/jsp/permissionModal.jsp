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
                                房源新增:
                                <select style="width: 60px;" name="permissionSet">
                                    <option>无</option>
                                    <option <c:if test="${permissionSet.contains('house:add:ourselves')}"> selected="selected"</c:if> value="house:add:ourselves">本人</option>
                                    <option <c:if test="${permissionSet.contains('house:add:ourDepartment')}"> selected="selected"</c:if> value="house:add:ourDepartment">本部</option>
                                    <option <c:if test="${permissionSet.contains('house:add:crossDepartment')}"> selected="selected"</c:if> value="house:add:crossDepartment">跨部</option>
                                </select>
                            </div>
                            房源删除:
                            <select style="width: 60px;"  name="permissionSet">
                                <option>无</option>
                                <option <c:if test="${permissionSet.contains('house:delete:ourselves')}"> selected="selected"</c:if> value="house:delete:ourselves">本人</option>
                                <option <c:if test="${permissionSet.contains('house:delete:ourDepartment')}"> selected="selected"</c:if> value="house:delete:ourDepartment">本部</option>
                                <option <c:if test="${permissionSet.contains('house:delete:crossDepartment')}"> selected="selected"</c:if> value="house:delete:crossDepartment">跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:edi:userMove" <c:if test="${permissionSet.contains('house:edi:userMove')}"> checked="checked"</c:if>/>归属转移
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />看业主电话
                            <input type="text" name="" value="" style="width: 40px;" />次/天
                            </br>
                            <input type="text" name="" value="" placeholder="<999屏蔽电话且限制看的次数" disabled="disabled" style="width: 100px;" />
                            </br>
                            <input type="text" name="" value="" placeholder="=999明显显示电话" disabled="disabled" style="width: 100px;" />
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                            <h5>[用途]可查看</h5>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:residence" <c:if test="${permissionSet.contains('house:detail:userage:residence')}"> checked="checked"</c:if>/>住宅
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:shops" <c:if test="${permissionSet.contains('house:detail:userage:shops')}"> checked="checked"</c:if>/>商铺
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:commercial" <c:if test="${permissionSet.contains('house:detail:userage:commercial')}"> checked="checked"</c:if>/>商住
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:officeBuilding" <c:if test="${permissionSet.contains('house:detail:userage:officeBuilding')}"> checked="checked"</c:if>/>写字楼
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:factoryShop" <c:if test="${permissionSet.contains('house:detail:userage:factoryShop')}"> checked="checked"</c:if>/>铺厂
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:writeFactory" <c:if test="${permissionSet.contains('house:detail:userage:writeFactory')}"> checked="checked"</c:if>/>写厂
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:parkinLot" <c:if test="${permissionSet.contains('house:detail:userage:parkinLot')}"> checked="checked"</c:if>/>车位
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:land" <c:if test="${permissionSet.contains('house:detail:userage:land')}"> checked="checked"</c:if>/>地皮
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:warehouse" <c:if test="${permissionSet.contains('house:detail:userage:warehouse')}"> checked="checked"</c:if>/>仓库
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:userage:workshop" <c:if test="${permissionSet.contains('house:detail:userage:workshop')}"> checked="checked"</c:if>/>厂房
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                            <div style="margin-top: 10px;">
                                委托日期修改:
                                <select style="width: 60px;" name="permissionSet">
                                    <option>无</option>
                                    <option <c:if test="${permissionSet.contains('house:detail:commissionDate:edi:ourselves')}"> selected="selected"</c:if> value="house:detail:commissionDate:edi:ourselves">本人</option>
                                    <option <c:if test="${permissionSet.contains('house:detail:commissionDate:edi:ourDepartment')}"> selected="selected"</c:if> value="house:detail:commissionDate:edi:ourDepartment">本部</option>
                                    <option <c:if test="${permissionSet.contains('house:detail:commissionDate:edi:crossDepartment')}"> selected="selected"</c:if> value="house:detail:commissionDate:edi:crossDepartment">跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" value="house:detail:status:valid-book" <c:if test="${permissionSet.contains('house:detail:status:valid-book')}"> checked="checked"</c:if>/>[有效]-[预定]
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:status:valid-sold" <c:if test="${permissionSet.contains('house:detail:status:valid-sold')}"> checked="checked"</c:if>/>[有效]-[已售/我售]
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:status:valid-rent" <c:if test="${permissionSet.contains('house:detail:status:valid-rent')}"> checked="checked"</c:if>/>[有效]-[已租/我租]
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:status:valid-other" <c:if test="${permissionSet.contains('house:detail:status:valid-other')}"> checked="checked"</c:if>/>[有效]-[其他状态]
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:status:unvalid-valid" <c:if test="${permissionSet.contains('house:detail:status:unvalid-valid')}"> checked="checked"</c:if>/>[非有效]-[有效]
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />出售看业主<input type="text" name="" value="" style="width: 40px;" />次/天
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />出租看业主<input type="text" name="" value="" style="width: 40px;" />次/天
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />租售看业主<input type="text" name="" value="" style="width: 40px;" />次/天
                            </br>
                            <input type="text" name="" value="" placeholder=">999不限次+记日志" disabled="disabled" style="width: 100px;" />
                            </br>
                            <input type="text" name="" value="" placeholder="=999不限次+不记日志" disabled="disabled" style="width: 100px;" />

                        </div>
                        <div class="cell c2" style="padding-left: 20px; ">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" value="house:followup:add:ourselves" <c:if test="${permissionSet.contains('house:followup:add:ourselves')}"> checked="checked"</c:if>/>跟进新增【本人】
                            </div>

                            跟进删除:
                            <select style="width: 60px;" name="permissionSet">
                                <option>无</option>
                                <option <c:if test="${permissionSet.contains('house:followUp:delete:ourselves')}"> selected="selected"</c:if> value="house:followUp:delete:ourselves">本人</option>
                                <option <c:if test="${permissionSet.contains('house:followUp:delete:ourDepartment')}"> selected="selected"</c:if> value="house:followUp:delete:ourDepartment">本部</option>
                                <option <c:if test="${permissionSet.contains('house:followUp:delete:crossDepartment')}"> selected="selected"</c:if> value="house:followUp:delete:crossDepartment">跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:qualityRoom" <c:if test="${permissionSet.contains('house:detail:qualityRoom')}"> checked="checked"</c:if>/>优质房设置
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:focusingRoom" <c:if test="${permissionSet.contains('house:detail:focusingRoom')}"> checked="checked"</c:if>/>聚焦房设置
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:detail:soShopRoom" <c:if test="${permissionSet.contains('house:detail:soShopRoom')}"> checked="checked"</c:if>/>速销房设置
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:messageOutput" <c:if test="${permissionSet.contains('house:messageOutput')}"> checked="checked"</c:if>/>房源导出
                            </br>
                            <h5>钥匙管理</h5>
                            <input type="checkbox" name="permissionSet" value="house:key:add" <c:if test="${permissionSet.contains('house:key:add')}"> checked="checked"</c:if>/>新增
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:key:edi" <c:if test="${permissionSet.contains('house:key:edi')}"> checked="checked"</c:if> />修改
                            </br>
                            <input type="checkbox" name="permissionSet" value="house:key:delete" <c:if test="${permissionSet.contains('house:key:delete')}"> checked="checked"</c:if>/>删除
                            </br>
                        </div>
                    </div>

                    <div class="tab-pane row-fluid profile-account" id="tab_1_3">

                        <div class="cell c1" style="padding-left: 20px; width: 220px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" value="" />全部修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" value="" />部分修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />交易人 &nbsp; &nbsp;<input type="checkbox" name="permissionSet" value="" />归属人1
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />房型 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />归属人2
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />面积 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />归属人3
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />业主 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />权益人
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />状态 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />总层 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />委托编号
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />价格 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />房产证
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />来源 <input type="checkbox" name="permissionSet" value="" style="margin-left: 24px;" />房源明细
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />备注
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />添加业主/联系人
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
                                <input type="checkbox" name="permissionSet" value="" />出售
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />出租
                            </div>
                            <h5>[委托]可保存</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" value="" />A委托方式
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />B委托方式
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />C委托方式
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />X委托方式
                            </div>
                            <h5>图片</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" value="" />查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />新增
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />删除
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />下载
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>

                                </select>
                            </div>
                            <h5>全景看房</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" value="" />关联/取消关联
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <h5>协议附件</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" value="" />上传
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />下载
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />删除
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
                                <input type="checkbox" name="permissionSet" value="" />全部修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <h5>资料房源</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" value="" />资料房源查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />归属转移
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />查看业主
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />全部修改
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <h5>部分修改</h5>
                            <div style="padding-left: 20px;">
                                <input type="checkbox" name="permissionSet" value="" />交易
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />现状
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />来源
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />房型
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />面积
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />价格
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />资料房源新增
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />资料房源看更新
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />资料房源加备注
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />资料房源转正式
                                </br>
                                <input type="checkbox" name="permissionSet" value="" />资料房源删除
                            </div>
                        </div>

                    </div>

                    <div class="tab-pane row-fluid profile-account" id="tab_1_4">

                        <div class="cell c1" style="padding-left: 20px; width: 220px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" value="" />公客查看
                                <select style="width: 60px;">
                                    <option selected="selected">无</option>
                                    <option>本人</option>
                                    <option>本部</option>
                                    <option>跨部</option>
                                </select>
                            </div>
                            <input type="checkbox" name="permissionSet" value="" />私客查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />私客看客户
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />带看房源查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />客源新增
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>

                            </br>
                            <input type="checkbox" name="permissionSet" value="" />全部修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />部分修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />来源
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />等级
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />归属人1
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />归属人2
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />归属人3
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />交易
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                            <h5>[交易]可查看</h5>
                            <input type="checkbox" name="permissionSet" value="" />求购
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />求租
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />租购
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />客源删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />私客设置
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />归属转移
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />客源审核
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />委托日期修改
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />[有效]-[预定]

                            </br>
                            <input type="checkbox" name="permissionSet" value="" />[有效]-[已购/我购]
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />[有效]-[已租/我租]
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />[有效]-[其他状态]
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />[非有效]-[有效]
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />[预定]看客户电话
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />看客户不必写跟进
                        </div>
                        <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" value="" />看客户 <input type="text" name="" value="" style="width: 40px;" />次/天
                                </br>
                                <input type="text" name="" value="" placeholder=">=900不限次+记日志" style="width: 140px;" disabled="disabled" />
                                </br>
                                <input type="text" name="" value="" placeholder="=900不限次+不记日志" style="width: 140px;" disabled="disabled" />

                            </div>
                            <h5>[委托]可保存</h5>

                            <input type="checkbox" name="permissionSet" value="" />A委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />B委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />C委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />X委托方式
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />公客跟进查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />私客跟进查看
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />跟进新增【本人】

                            </br>
                            <input type="checkbox" name="permissionSet" value="" />跟进修改【本人】
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />跟进删除
                            <select style="width: 60px;">
                                <option selected="selected">无</option>
                                <option>本人</option>
                                <option>本部</option>
                                <option>跨部</option>
                            </select>
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />不受[每客源跟进次数]限制
                        </div>
                        <div class="cell c2" style="padding-left: 20px; ">
                            <div style="margin-top: 10px;">
                                <input type="checkbox" name="permissionSet" value="" />公共账户修改[归属]
                            </div>
                            <input type="checkbox" name="permissionSet" value="" />公共客源跟进可看
                            </br>
                            <input type="checkbox" name="permissionSet" value="" />看客户电话 <input type="text" name="" value="" value="999" style="width: 40px;" />次/天
                            </br>
                            <input type="text" name="" value="" placeholder="<999屏蔽电话且限制看的次数" disabled="disabled" style="width:140px ;" />
                            <input type="text" name="" value="" placeholder="=999明码显示电话" disabled="disabled" style="width:140px ;" />
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
