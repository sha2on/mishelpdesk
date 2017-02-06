<!-- BEGIN PAGE CONTAINER-->
  <div class="page-content"> 
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="portlet-config" class="modal hide">
      <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
      </div>
    </div>
    <div class="clearfix"></div>

    <!--START CONTENT-->
    <div class="content">  
		<div class="page-title">	
			<h3>Work Site & Client</h3>
		</div><br>
    <!--START TABLE-->
    <div class="col-md-12">
		<!--<div class="row">-->
                    <div class="col-md-6">
                        <div class="grid simple ">
                            <div class="grid-title no-border">
                                <h4><span class="semi-bold">Site </span>Panel</h4>
                                <div class="tools">	<a href="javascript:;" class="collapse"></a>
									<a href="#grid-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a>
                                </div>
                            </div>
                            <div class="grid-body no-border">
                            <button type="button" class="btn btn-primary btn-cons" data-target="#addSite" data-toggle="modal"><i class="fa fa-check"></i>&nbsp;ADD SITE</button>
                                    <table class="table no-more-tables">
                                        <thead>
                                            <tr>
													</div> 
                                                <th style="width:70%">Registered Site Name</th>
                                                <th style="width:25%">Client</th>
                                                <th style="width:5%">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            foreach($getsitetotalclient as $site){ ?>
                                            <tr>
                                              <td><?php echo $site->siteName?></td>
                                              <td><?php echo $site->TotalClientSite?></td>
                                              <td><button class="btn btn-mini btn-success dropdown-toggle btn-demo-space" data-toggle="dropdown">
                                                  <span class="caret"></span></button>
                                                  <ul class="dropdown-menu">
                                                      <li><a href="#upCet" class="ambil" data-toggle="modal" data-id="<?php echo $site->siteId;?>">Update</a></li>
                                                      <li><a href="<?php echo base_url(); ?>admin/deletesite/<?php echo $site->siteId;?>">Delete</a></li>
                                                  </ul>
                                              </td>
                                            </tr>
                                           <?php }?>
                                        </tbody>
                                    </table>
                            </div>
                        </div>
                    <!--</div>-->
                </div>
                <!--END TABLE-->

                <!--START SECOND TABLE-->
                <!--<div class="row">-->
                    <div class="col-md-6">
                        <div class="grid simple ">
                            <div class="grid-title no-border">
                            	<h4><span class="semi-bold">Client </span>Panel</h4>
                                <div class="tools">	<a href="javascript:;" class="collapse"></a>
									<a href="#grid-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a>
                                </div>
                            </div>
                            <div class="grid-body no-border">
                                  <button type="button" class="btn btn-primary btn-cons" data-target="#addClient" data-toggle="modal"><i class="fa fa-check"></i>&nbsp;ADD CLIENT</button>
                                    <table class="table no-more-tables">
                                        <thead>
                                            <tr>
                                                <th style="width:50%">Client Name</th>
                                                <th style="width:30%">Client Site</th>
                                                <th style="width:10%">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            foreach($client_list as $cli){ ?>
                                            <tr>
                                              <td><?php echo $cli->clientSiteName?></td>
                                              <td><?php echo $cli->siteName?></td>
                                              <td><button class="btn btn-mini btn-success dropdown-toggle btn-demo-space" data-toggle="dropdown">
                                                  <span class="caret"></span></button>
                                                  <ul class="dropdown-menu">
                                                      <li><a href="#updClient" class="ambil" data-toggle="modal" data-id="<?php echo $cli->clientSiteId;?>">Update</a></li>
                                                      <li><a href="<?php echo base_url(); ?>admin/deleteclient/<?php echo $cli->clientSiteId;?>">Delete</a></li>
                                                  </ul>
                                                  </td>
                                            </tr>

                                           <?php }?>
                                           
                                        </tbody>
                                    </table>
                            </div>
                        </div>
                    </div>
                <!--</div>-->
                <!--END SECOND TABLE -->
                </div>

    </div>
    <!--END CONTENT-->

    
                  <!-- START MODALS -->
    <div class="modal fade" id="addClient" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <br>
                          <i class="icon-credit-card icon-7x"></i>
                          <h4 id="myModalLabel" class="semi-bold">Add New Client</h4>
                          <p class="no-margin">Make sure, you insert the right data</p>
                          <br>
                        </div>
                        <div class="modal-body">
                        <form action="<?php echo base_url();?>admin/addclient_to_db" method="POST" name="addclient" id="addclient">
                          <div class="row form-row">
                            <div class="col-md-12">
                              <input type="text" class="form-control" placeholder="New client name" name="clientname">
                              <select id="siteid" style="width:100%" name="siteid">
                                <?php
                                    foreach($site_list as $each){ ?>
                                    <option value="<?= $each['siteId'] ?>"><?= $each['siteName'] ?></option>
                                <?php }?>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary" name="addsite" id="addsite" value="addsite">Save changes</button>
                        </div>
                        </form>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div> <!-- ENDS MODALS -->


                  <!-- START MODALS -->
    <div class="modal fade" id="updClient" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <br>
                          <i class="icon-credit-card icon-7x"></i>
                          <h4 id="myModalLabel" class="semi-bold">Update Client</h4>
                          <p class="no-margin">Make sure, you insert the right data</p>
                          <br>
                        </div>
                        <div class="modal-body">
                        <form action="<?php echo base_url();?>admin/updateclient" method="POST" name="addclient" id="addclient">
                          <div class="row form-row">
                            <div class="col-md-12">
                              <input type="text" class="form-control" placeholder="New client name" name="categ" >
                            </div>
                            <input type="text" id="nilai" name="nilai" hidden/>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary" name="addsite" id="addsite" value="addsite">Save changes</button>
                        </div>
                        </form>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div> <!-- ENDS MODALS -->


                  <div class="modal fade" id="upCet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <br>
                          <i class="icon-credit-card icon-7x"></i>
                          <h4 id="myModalLabel" class="semi-bold">Update Site Name</h4>
                          <p class="no-margin">Make sure, you insert the right data</p>
                          <br>
                        </div>
                        <div class="modal-body">
                        <form action="<?php echo base_url();?>admin/updatesitename" method="POST" name="updatecategory" id="updatecategory">
                          <div class="row form-row">
                            <div class="col-md-12">
                              <input type="text" class="form-control" name="categ" placeholder="New Site Name">
                            </div>
                            <input type="text" id="nilai" name="nilai" hidden/>
                          </div>
                          </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary" name="addcategory" id="addcategory">Update</button>
                        </div>
                        </form>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div> <!-- ENDS MODALS -->

    <!-- START MODALS -->
    <div class="modal fade" id="addSite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <br>
                          <i class="icon-credit-card icon-7x"></i>
                          <h4 id="myModalLabel" class="semi-bold">Add New Work Site</h4>
                          <p class="no-margin">Make sure, you insert the right data</p>
                          <br>
                        </div>
                        <div class="modal-body">
                        <div class="form-group">
                        <form action="<?php echo base_url();?>admin/addsite_to_db" method="POST" name="addsite" id="addsite">
                          <div class="row form-row">
                            <div class="col-md-12">
                            <div class="input-with-icon  right">                                       
                            <i class=""></i>
                              <input type="text" class="form-control" placeholder="New Work Site name" name="sitename"><span class="error">
                            </div>
                            </div>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary" name="addsite" id="addsite" value="addsite"> <i class="icon-ok"></i>Save changes</button>
                        </div>
                        </form>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div> <!-- ENDS MODALS -->

  </div>
 </div>
<!-- END CONTAINER --> 