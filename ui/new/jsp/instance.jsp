<%@ page import="java.util.*" %>

<%@ page import="com.cloud.utils.*" %>

<%
    Locale browserLocale = request.getLocale();
    CloudResourceBundle t = CloudResourceBundle.getBundle("resources/resource", browserLocale);
%>
<!-- VM detail panel (begin) -->
<div class="main_title" id="right_panel_header">
    <div class="main_titleicon">
        <img src="images/title_instanceicons.gif" alt="Instance" /></div>
    <h1 id="vm_name">
        Instance
    </h1>
</div>
<div class="contentbox" id="right_panel_content">
    <div class="info_detailbox errorbox" id="after_action_info_container" style="display: none">
        <p id="after_action_info">
        </p>
    </div>
    <div class="tabbox" style="margin-top: 15px;">
        <div class="content_tabs on" id="tab_details">
            <%=t.t("Details")%></div>
        <div class="content_tabs off" id="tab_volume">
            <%=t.t("Volume")%></div>
        <div class="content_tabs off" id="tab_statistics">
            <%=t.t("Statistics")%></div>
    </div>
    <!--Details tab (start)-->
    <div class="grid_container" style="display: block;" id="tab_content_details">
        <div class="grid_rows odd">
            <div class="vm_statusbox">
                <div id="vm_action_view_console">                
                    <div class="vm_consolebox" id="box0">
                    </div>
                    <div class="vm_consolebox" id="box1" style="display: none">
                    </div>                
                </div>
                <div class="vm_status_textbox">
                    <div class="vm_status_textline green" id="state">
                    </div>
                    <br />
                    <p id="ipAddress">
                    </p>
                </div>
            </div>
        </div>
        <div class="grid_rows even">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Zone")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="zoneName">
                </div>
            </div>
        </div>        
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Name")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="vmname">
                </div>
            </div>
        </div>
        <div class="grid_rows even">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("IP")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="ipaddress">
                </div>
            </div>
        </div>        
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Template")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="templateName">
                </div>
            </div>
        </div>
        <div class="grid_rows even">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Service")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="serviceOfferingName">
                </div>
            </div>
        </div>
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("HA.Enabled")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="haenable">                   
                </div>
            </div>
        </div>
        <div class="grid_rows even">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Created")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="created">
                </div>
            </div>
        </div>
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Account")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="account">
                </div>
            </div>
        </div>
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Domain")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="domain">
                </div>
            </div>
        </div>
        <div class="grid_rows even">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Host")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="hostName">
                </div>
            </div>
        </div>
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("ISO.attached")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="iso">                    
                </div>
            </div>
        </div>
        <div class="grid_rows odd">
            <div class="grid_row_cell" style="width: 20%;">
                <div class="row_celltitles">
                    <%=t.t("Group")%>:</div>
            </div>
            <div class="grid_row_cell" style="width: 79%;">
                <div class="row_celltitles" id="group">
                </div>
            </div>
        </div>
    </div>
    <!--Details tab (end)-->
    <!--Volume tab (start)-->
    <div style="display: none;" id="tab_content_volume">
        <div class="grid_container" id="volume_tab_template" style="display: none">
            <div class="grid_header">
                <div class="grid_header_title" id="name">
                </div>
                <div class="grid_actionbox" id="volume_action_link" style="display: block;">
                    <div class="grid_actionsdropdown_box" id="volume_action_menu" style="display: none;">
                        <ul class="actionsdropdown_boxlist" id="action_list">
                            <li><a href="#">Delete </a></li>
                            <li><a href="#">Attach Disk </a></li>
                        </ul>
                    </div>
                </div>
                <div class="gridheader_loaderbox" style="height: 18px;">
                    <div class="gridheader_loader">
                    </div>
                    <p>
                        Creating Template &hellip;
                    </p>
                </div>
            </div>
            
            <div class="grid_rows success">
                <div class="grid_row_cell" style="width: 90%; border:none;">
                    <div class="row_celltitles"><strong>Message will appear here</strong></div>
                </div>
            </div>
            
            <div class="grid_rows error">
                <div class="grid_row_cell" style="width: 90%; border:none;">
                    <div class="row_celltitles alert" style="margin-left:10px;"><strong>Error Message will appear here</strong></div>
                </div>
            </div>
            <div class="grid_rows even">
                <div class="grid_row_cell" style="width: 20%;">
                    <div class="row_celltitles">
                        ID:</div>
                </div>
                <div class="grid_row_cell" style="width: 79%;">
                    <div class="row_celltitles" id="id">
                    </div>
                </div>
            </div>
            <div class="grid_rows odd">
                <div class="grid_row_cell" style="width: 20%;">
                    <div class="row_celltitles">
                        Type:</div>
                </div>
                <div class="grid_row_cell" style="width: 79%;">
                    <div class="row_celltitles" id="type">
                    </div>
                </div>
            </div>
            <div class="grid_rows even">
                <div class="grid_row_cell" style="width: 20%;">
                    <div class="row_celltitles">
                        Size:</div>
                </div>
                <div class="grid_row_cell" style="width: 79%;">
                    <div class="row_celltitles" id="size">
                    </div>
                </div>
            </div>
            <div class="grid_rows odd">
                <div class="grid_row_cell" style="width: 20%;">
                    <div class="row_celltitles">
                        Created:</div>
                </div>
                <div class="grid_row_cell" style="width: 79%;">
                    <div class="row_celltitles" id="created">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Volume tab (end)-->
    <!--Statistics tab (start)-->
    <div class="grid_container" style="display: none;" id="tab_content_statistics">
        statistics....
    </div>
    <!--Statistics tab (start)-->
</div>
<!-- VM detail panel (end) -->
<!-- VM wizard (begin)-->
<div id="vm_popup" class="vmpopup_container" style="display: none">
    <div id="step1" style="display: block;">
        <div class="vmpopup_container_top">
            <div class="vmpopup_steps" style="color: #FFF; background: url(images/step1_bg.png) no-repeat top left">
                Step 1</div>
            <div class="vmpopup_steps" style="background: url(images/step2_bg.gif) no-repeat top left">
                Step 2</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 3</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 4</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 5</div>
            <div class="vmpopup_steps" style="background: url(images/laststep_bg.gif) no-repeat top left">
            </div>
            <div class="vmpopup_container_closebutton" id="close_button">
            </div>
        </div>
        <div class="vmpopup_container_mid">
            <div class="vmpopup_maincontentarea">
                <div class="vmpopup_titlebox">
                    <h2>
                        Step 1: <strong>Select a Template</strong></h2>
                    <p>
                        Please select a template for your new virtual instance. You can also choose to select
                        a blank template from which an ISO image can be installed onto.
                    </p>
                </div>
                <div class="vmpopup_contentpanel">
                    <div class="rev_tempsearchpanel">
                        <label for="wizard_zone">
                            Availability Zone:</label>
                        <select class="select" id="wizard_zone" name="zone">
                        </select>
                        <div class="rev_tempsearchbox">
                            <form method="post" action="#">
                            <ol>
                                <li>
                                    <input id="search_input" class="text" type="text" name="search_input" />
                            </ol>
                            </form>
                            <div id="search_button" class="rev_searchbutton">
                                Search</div>
                        </div>
                    </div>
                    <div class="rev_wizformarea">
                        <div class="revwiz_message_container" style="display: none;" id="wiz_message">
                            <div class="revwiz_message_top">
                                <p id="wiz_message_text">
                                    Please select a template or ISO to continue</p>
                            </div>
                            <div class="revwiz_message_bottom">
                                <div class="revwizcontinue_button" id="wiz_message_continue">
                                </div>
                            </div>
                        </div>
                        <div class="rev_wizmid_tempbox">
                            <div class="revwiz_loadingbox" id="wiz_template_loading" style="display: none">
                                <div class="loading_gridanimation">
                                </div>
                                <p>
                                    Loading...</p>
                            </div>
                            <div class="rev_wizmid_tempbox_left" id="wiz_template_filter">
                                <div class="rev_wizmid_selectedtempbut" id="wiz_featured">
                                    Featured Template</div>
                                <div class="rev_wizmid_nonselectedtempbut" id="wiz_my">
                                    My Template</div>
                                <div class="rev_wizmid_nonselectedtempbut" id="wiz_community">
                                    Community Template</div>
                                <div class="rev_wizmid_nonselectedtempbut" id="wiz_blank">
                                    Blank Template</div>
                            </div>
                            <div class="rev_wizmid_tempbox_right">
                                <div class="rev_wiztemplistpanel" id="template_container">
                                    <!--
                                    <div class="rev_wiztemplistbox_selected">
                                        <div class="rev_wiztemo_centosicons">
                                        </div>
                                        <div class="rev_wiztemp_listtext">
                                            CentOS 5.4 64-bit Web Server (Apache)</div>
                                        <div class="rev_wiztemp_ownertext">
                                            System</div>
                                    </div>
                                    <div class="rev_wiztemplistbox">
                                        <div class="rev_wiztemo_centosicons">
                                        </div>
                                        <div class="rev_wiztemp_listtext">
                                            CentOS 5.4 64-bit Web Server (Apache)</div>
                                        <div class="rev_wiztemp_ownertext">
                                            System</div>
                                    </div>
                                    -->
                                </div>
                                <div class="rev_wiztemplistactions">
                                    <div class="rev_wiztemplist_actionsbox">
                                        <a href="#" id="prev_page">Prev</a> <a href="#" id="next_page">Next</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vmpopup_navigationpanel">
                    <div class="vmpop_prevbutton" id="prev_step" style="display: none;">
                    </div>
                    <div class="vmpop_nextbutton" id="next_step">
                        Go to Step 2</div>
                </div>
            </div>
        </div>
        <div class="vmpopup_container_bot">
        </div>
    </div>
    <div id="step2" style="display: none;">
        <div class="vmpopup_container_top">
            <div class="vmpopup_steps" style="background: url(images/step1_bg_unselected.png) no-repeat top left">
                Step 1</div>
            <div class="vmpopup_steps" style="color: #FFF; background: url(images/step2_selected.gif) no-repeat top left">
                Step 2</div>
            <div class="vmpopup_steps" style="background: url(images/step2_bg.gif) no-repeat top left">
                Step 3</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 4</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 5</div>
            <div class="vmpopup_steps" style="background: url(images/laststep_bg.gif) no-repeat top left">
            </div>
            <div class="vmpopup_container_closebutton" id="close_button">
            </div>
        </div>
        <div class="vmpopup_container_mid">
            <div class="vmpopup_maincontentarea">
                <div class="vmpopup_titlebox">
                    <h2>
                        Step 2: <strong>Service Offering</strong></h2>
                    <p>
                        <!--  
                        Please select the CPU, Memory and Storage requirement you need for your new Virtual
                        Instance-->
                    </p>
                </div>
                <div class="vmpopup_contentpanel">
                    <h3>
                        <!--Service Offering-->
                    </h3>
                    <div class="vmpopup_offeringpanel" id="service_offering_container">
                        <!--
                        <div class="vmpopup_offeringbox">
                            <input type="radio" name="radiogroup" class="radio" />
                            <label class="label">
                                X-Large Instance</label>
                            <div class="vmpopup_offdescriptionbox">
                                <div class="vmpopup_offdescriptionbox_top">
                                </div>
                                <div class="vmpopup_offdescriptionbox_bot">
                                    <p>
                                        4 x 2.00 Ghz CPU, 16.00 GB of Memory, High Availability Enabled</p>
                                </div>
                            </div>
                        </div>
                        <div class="vmpopup_offeringbox">
                            <input type="radio" name="radiogroup" class="radio" />
                            <label class="label">
                                Large Instance</label>
                            <div class="vmpopup_offdescriptionbox">
                                <div class="vmpopup_offdescriptionbox_top">
                                </div>
                                <div class="vmpopup_offdescriptionbox_bot">
                                    <p>
                                        4 x 2.00 Ghz CPU, 16.00 GB of Memory, High Availability Enabled</p>
                                </div>
                            </div>
                        </div>
                        <div class="vmpopup_offeringbox">
                            <input type="radio" name="radiogroup" class="radio" />
                            <label class="label">
                                Medium Instance</label>
                            <div class="vmpopup_offdescriptionbox">
                                <div class="vmpopup_offdescriptionbox_top">
                                </div>
                                <div class="vmpopup_offdescriptionbox_bot">
                                    <p>
                                        4 x 2.00 Ghz CPU, 16.00 GB of Memory, High Availability Enabled</p>
                                </div>
                            </div>
                        </div>
                        <div class="vmpopup_offeringbox">
                            <input type="radio" name="radiogroup" class="radio" />
                            <label class="label">
                                Small Instance</label>
                            <div class="vmpopup_offdescriptionbox">
                                <div class="vmpopup_offdescriptionbox_top">
                                </div>
                                <div class="vmpopup_offdescriptionbox_bot">
                                    <p>
                                        4 x 2.00 Ghz CPU, 16.00 GB of Memory, High Availability Enabled</p>
                                </div>
                            </div>
                        </div>
                        -->
                    </div>
                </div>
                <div class="vmpopup_navigationpanel">
                    <div class="vmpop_prevbutton" id="prev_step">
                        Back</div>
                    <div class="vmpop_nextbutton" id="next_step">
                        Go to Step 3</div>
                </div>
            </div>
        </div>
        <div class="vmpopup_container_bot">
        </div>
    </div>
    <div id="step3" style="display: none;">
        <div class="vmpopup_container_top">
            <div class="vmpopup_steps" style="background: url(images/step1_bg_unselected.png) no-repeat top left">
                Step 1</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 2</div>
            <div class="vmpopup_steps" style="color: #FFF; background: url(images/step2_selected.gif) no-repeat top left">
                Step 3</div>
            <div class="vmpopup_steps" style="background: url(images/step2_bg.gif) no-repeat top left">
                Step 4</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 5</div>
            <div class="vmpopup_steps" style="background: url(images/laststep_bg.gif) no-repeat top left">
            </div>
            <div class="vmpopup_container_closebutton" id="close_button">
            </div>
        </div>
        <div class="vmpopup_container_mid">
            <div class="vmpopup_maincontentarea">
                <div class="vmpopup_titlebox">
                    <h2>
                        Step 3: <strong id="step3_label">Select a Disk Offering</strong></h2>
                    <p>
                    </p>
                </div>
                <div class="vmpopup_contentpanel">
                    <h3>
                    </h3>
                    <div class="vmpopup_offeringpanel" id="data_disk_offering_container" style="display: none">
                    </div>
                    <div class="vmpopup_offeringpanel" id="root_disk_offering_container" style="display: none">
                    </div>
                </div>
                <div class="vmpopup_navigationpanel">
                    <div class="vmpop_prevbutton" id="prev_step">
                        Back</div>
                    <div class="vmpop_nextbutton" id="next_step">
                        Go to Step 4</div>
                </div>
            </div>
        </div>
        <div class="vmpopup_container_bot">
        </div>
    </div>
    <div id="step4" style="display: none;">
        <div class="vmpopup_container_top">
            <div class="vmpopup_steps" style="background: url(images/step1_bg_unselected.png) no-repeat top left">
                Step 1</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 2</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 3</div>
            <div class="vmpopup_steps" style="color: #FFF; background: url(images/step2_selected.gif) no-repeat top left">
                Step 4</div>
            <div class="vmpopup_steps" style="background: url(images/step2_bg.gif) no-repeat top left">
                Step 5</div>
            <div class="vmpopup_steps" style="background: url(images/laststep_bg.gif) no-repeat top left">
            </div>
            <div class="vmpopup_container_closebutton" id="close_button">
            </div>
        </div>
        <div class="vmpopup_container_mid">
            <div class="vmpopup_maincontentarea">
                <div class="vmpopup_titlebox">
                    <h2>
                        Step 4: <strong>Network</strong></h2>
                    <p>
                    </p>
                </div>
                <div class="vmpopup_contentpanel">
                    <h3>
                    </h3>
                    <div class="vmpopup_offeringpanel">
                        <div class="vmpopup_offeringbox">
                            <input type="radio" name="radiogroup" class="radio" />
                            <label class="label">
                                Virtual Network</label>
                            <div class="vmpopup_offdescriptionbox">
                                <div class="vmpopup_offdescriptionbox_top">
                                </div>
                                <div class="vmpopup_offdescriptionbox_bot">
                                    <p>
                                        Some info about virtual network will appear here..Some info about virtual network
                                        will appear here..Some info about virtual network will appear here..Some info about
                                        virtual network will appear here..Some info about virtual network will appear here..Some
                                        info about virtual network will appear here..
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="vmpopup_offeringbox" style="margin-top: 15px;">
                            <input type="radio" name="radiogroup" class="radio" />
                            <label class="label">
                                Shared Network:</label>
                            <input type="text" name="disksize" class="text" />
                            <div class="vmpopup_offdescriptionbox">
                                <div class="vmpopup_offdescriptionbox_top">
                                </div>
                                <div class="vmpopup_offdescriptionbox_bot">
                                    <p>
                                        Some info about virtual network will appear here..Some info about virtual network
                                        will appear here..Some info about virtual network will appear here..Some info about
                                        virtual network will appear here..Some info about virtual network will appear here..Some
                                        info about virtual network will appear here.. Some info about virtual network will
                                        appear here..Some info about virtual network will appear here..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vmpopup_navigationpanel">
                    <div class="vmpop_prevbutton" id="prev_step">
                        Back</div>
                    <div class="vmpop_nextbutton" id="next_step">
                        Go to Step 5</div>
                </div>
            </div>
        </div>
        <div class="vmpopup_container_bot">
        </div>
    </div>
    <div id="step5" style="display: none;">
        <div class="vmpopup_container_top">
            <div class="vmpopup_steps" style="background: url(images/step1_bg_unselected.png) no-repeat top left">
                Step 1</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 2</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 3</div>
            <div class="vmpopup_steps" style="background: url(images/othersteps_bg.gif) no-repeat top left">
                Step 4</div>
            <div class="vmpopup_steps" style="color: #FFF; background: url(images/step2_selected.gif) no-repeat top left">
                Step 5</div>
            <div class="vmpopup_steps" style="background: url(images/laststep_slectedbg.gif) no-repeat top left">
            </div>
            <div class="vmpopup_container_closebutton" id="close_button">
            </div>
        </div>
        <div class="vmpopup_container_mid">
            <div class="vmpopup_maincontentarea">
                <div class="vmpopup_titlebox">
                    <h2>
                        Step 5: <strong>Last Step</strong></h2>
                    <p>
                    </p>
                </div>
                <div class="vmpopup_contentpanel">
                    <h3>
                    </h3>
                    <div class="vmpopup_offeringpanel" style="margin-top: 10px;">
                        <div class="vmpopup_reviewbox_odd">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label">
                                    Zone:</div>
                                <span id="wizard_review_zone"></span>
                            </div>
                        </div>
                        <div class="vmpopup_reviewbox_even">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label">
                                    Template:
                                </div>
                                <span id="wizard_review_template"></span>
                            </div>
                        </div>
                        <div class="vmpopup_reviewbox_odd">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label">
                                    Service Offering:</div>
                                <span id="wizard_review_service_offering"></span>
                            </div>
                        </div>
                        <div class="vmpopup_reviewbox_even">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label" id="wizard_review_disk_offering_label">
                                    Disk Offering:
                                </div>
                                <span id="wizard_review_disk_offering"></span>
                            </div>
                        </div>
                        <div class="vmpopup_reviewbox_odd">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label">
                                    Network:</div>
                                <span id="wizard_review_network"></span>
                            </div>
                        </div>
                        <div class="vmpopup_reviewbox_even">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label">
                                    Name (optional):
                                </div>
                                <input class="text" type="text" id="wizard_vm_name" />
                                <div id="wizard_vm_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                                </div>
                            </div>
                        </div>
                        <div class="vmpopup_reviewbox_odd">
                            <div class="vmopopup_reviewtextbox">
                                <div class="vmpopup_reviewtick">
                                </div>
                                <div class="vmopopup_review_label">
                                    Group (optional):</div>
                                <input class="text" type="text" id="wizard_vm_group" />
                                <div id="wizard_vm_group_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vmpopup_navigationpanel">
                    <div class="vmpop_prevbutton" id="prev_step">
                        Back</div>
                    <div class="vmpop_nextbutton" id="next_step">
                        Submit</div>
                </div>
            </div>
        </div>
        <div class="vmpopup_container_bot">
        </div>
    </div>
</div>
<!-- VM wizard (end)-->
<!-- VM Wizard - Service Offering template (begin) -->
<div class="vmpopup_offeringbox" id="vm_popup_service_offering_template" style="display: none">
    <input type="radio" name="service_offering_radio" class="radio" checked />
    <label class="label" id="name">
    </label>
    <div class="vmpopup_offdescriptionbox">
        <div class="vmpopup_offdescriptionbox_top">
        </div>
        <div class="vmpopup_offdescriptionbox_bot">
            <p id="description">
            </p>
        </div>
    </div>
</div>
<!-- VM Wizard - Service Offering template (end) -->
<!-- VM Wizard - disk Offering template (begin)-->
<div class="vmpopup_offeringbox" id="vm_popup_disk_offering_template_no" style="display: none">
    <input type="radio" class="radio" value="no" checked />
    <label class="label">
        No Thanks</label>
</div>
<div class="vmpopup_offeringbox" id="vm_popup_disk_offering_template_custom" style="display: none">
    <input type="radio" class="radio" value="custom" checked />
    <label class="label">
        Custom:</label>
    <label class="label1">
        Disk Size:</label>
    <input type="text" id="custom_disk_size" class="text" />
    <span>MB</span>
    <div id="custom_disk_size_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
    </div>
</div>
<div class="vmpopup_offeringbox" id="vm_popup_disk_offering_template_existing" style="display: none">
    <input type="radio" class="radio" checked />
    <label class="label" id="name">
    </label>
    <div class="vmpopup_offdescriptionbox">
        <div class="vmpopup_offdescriptionbox_top">
        </div>
        <div class="vmpopup_offdescriptionbox_bot">
            <p id="description">
            </p>
        </div>
    </div>
</div>
<!-- VM Wizard - disk Offering template (end)-->
<!-- Attach ISO Dialog -->
<div id="dialog_attach_iso" title="Attach ISO" style="display: none">
    <p>
        Please specify the ISO you wish to attach to virtual instance.
    </p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
                <label for="user_name">
                    Available ISO:</label>
                <select class="select" name="attach_iso_select" id="attach_iso_select">
                    <option value="none">No Available ISO</option>
                </select>
            </li>
        </ol>
        </form>
    </div>
</div>
<!-- Change Name Dialog -->
<div id="dialog_change_name" title="Change Name" style="display: none">
    <p>
        Please specify the new name you want to change for virtual instance.
    </p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
                <label for="user_name">
                    Instance Name:</label>
                <input class="text" type="text" name="change_instance_name" id="change_instance_name" />
                <div id="change_instance_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
        </ol>
        </form>
    </div>
</div>
<!-- Change Service Offering Dialog -->
<div id="dialog_change_service_offering" title="Change Service Offering" style="display: none">
    <p>
        After changing service offering, you must restart virtual instance for the new service
        offering to take effect.
    </p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
                <label for="user_name">
                    Service Offering:</label>
                <select class="select" name="change_service_offerings" id="change_service_offerings">
                </select>
            </li>
        </ol>
        </form>
    </div>
</div>
<!-- Change Group Dialog -->
<div id="dialog_change_group" title="Change Group" style="display: none">
    <p>
        Please specify the new group you want to assign to your Virtual Instance. If no
        such group exists, a new one will be created for you.</p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
                <label for="change_group_name">
                    Group Name:</label>
                <input class="text" type="text" name="change_group_name" id="change_group_name" />
                <div id="change_group_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
        </ol>
        </form>
    </div>
</div>
<!--  volume tab template -->
<div class="grid_container" id="volume_tab_template" style="display: none">
    <div class="grid_header">
        <div class="grid_header_title" id="title">
        </div>
        <div class="grid_actionbox" id="volume_action_link">
            <div class="grid_actionsdropdown_box" id="volume_action_menu" style="display: none;">
                <ul class="actionsdropdown_boxlist" id="action_list">
                </ul>
            </div>
        </div>
        <div class="gridheader_loaderbox" id="spinning_wheel" style="display: none; height: 18px;">
            <div class="gridheader_loader" id="icon">
            </div>
            <p id="description">
                Waiting &hellip;
            </p>
        </div>       
    </div>
    
    <div class="grid_rows" id="after_action_info_container" style="display:none">
        <div class="grid_row_cell" style="width: 90%; border: none;">
            <div class="row_celltitles">
                <strong id="after_action_info">Message will appear here</strong></div>
        </div>
    </div>
        
    <div class="grid_rows even">
        <div class="grid_row_cell" style="width: 20%;">
            <div class="row_celltitles">
                ID:</div>
        </div>
        <div class="grid_row_cell" style="width: 79%;">
            <div class="row_celltitles" id="id">
            </div>
        </div>
    </div>
     <div class="grid_rows odd">
        <div class="grid_row_cell" style="width: 20%;">
            <div class="row_celltitles">
                Name:</div>
        </div>
        <div class="grid_row_cell" style="width: 79%;">
            <div class="row_celltitles" id="name">
            </div>
        </div>
    </div>
    <div class="grid_rows even">
        <div class="grid_row_cell" style="width: 20%;">
            <div class="row_celltitles">
                Type:</div>
        </div>
        <div class="grid_row_cell" style="width: 79%;">
            <div class="row_celltitles" id="type">
            </div>
        </div>
    </div>
    <div class="grid_rows odd">
        <div class="grid_row_cell" style="width: 20%;">
            <div class="row_celltitles">
                Size:</div>
        </div>
        <div class="grid_row_cell" style="width: 79%;">
            <div class="row_celltitles" id="size">
            </div>
        </div>
    </div>
    <div class="grid_rows even">
        <div class="grid_row_cell" style="width: 20%;">
            <div class="row_celltitles">
                Created:</div>
        </div>
        <div class="grid_row_cell" style="width: 79%;">
            <div class="row_celltitles" id="created">
            </div>
        </div>
    </div>
</div>
<!-- Create Template Dialog -->
<div id="dialog_create_template" title="Create Template" style="display: none">
    <p>
        Please specify the following information before creating a template of your disk
        volume: <b><span id="volume_name"></span></b>. Creating a template could take up
        to several hours depending on the size of your disk volume.</p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
                <label for="user_name">
                    Name:</label>
                <input class="text" type="text" name="create_template_name" id="create_template_name" />
                <div id="create_template_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="user_name">
                    Display Text:</label>
                <input class="text" type="text" name="create_template_desc" id="create_template_desc" />
                <div id="create_template_desc_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="create_template_os_type">
                    OS Type:</label>
                <select class="select" name="create_template_os_type" id="create_template_os_type">
                </select>
            </li>
            <li>
                <label for="create_template_public">
                    Public:</label>
                <select class="select" name="create_template_public" id="create_template_public">
                    <option value="false">No</option>
                    <option value="true">Yes</option>
                </select>
            </li>
            <li>
                <label for="user_name">
                    Password Enabled?:</label>
                <select class="select" name="create_template_password" id="create_template_password">
                    <option value="false">No</option>
                    <option value="true">Yes</option>
                </select>
            </li>
        </ol>
        </form>
    </div>
</div>
