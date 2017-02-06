<body class="error-body no-top">
<div class = "container">
<div class="row login-container">  
        <div class="col-md-6 col-md-offset-1">
        <?php foreach($site_title as $sitetit);?>
          <h2><?php echo $sitetit->settingTitle?></h2>
          <p><?php echo $sitetit->settingSlogan?>
          <br><?php echo $sitetit->settingContact?>
      </p>
      <p><b><?php echo $sitetit->settingAddress1?></b>
      <br>
      <?php echo $sitetit->settingAddress2?></p>
          <br>
        </div>
        <div class="col-md-5 "> <br>
     
      <form action="<?php echo base_url();?>index.php/login/login_form" method="post" name="login" id="login">
     <div class="row">
     <div class="form-group col-md-10">
            <label class="form-label">Username</label>
            <div class="controls">
        <div class="input-with-icon  right">                                       
          <i class=""></i>
          <input type="text" size="40" name="username" value="<?php echo set_value('username');?>" class="form-control"> <?php echo form_error('username');?>                               
        </div>
            </div>
          </div>
          </div>
      <div class="row">
          <div class="form-group col-md-10">
            <label class="form-label">Password</label>
            <span class="help"></span>
            <div class="controls">
        <div class="input-with-icon  right">                                       
          <i class=""></i>
          <input type="password" size="40" name="password" value="<?php echo set_value('password');?>" class="form-control"> <?php echo form_error('password');?>                     
        </div>
            </div>
          </div>
          </div>
        <div class="row">
        <div class="form-group col-md-10">
        <label class="form-label">Login As</label> <i class=""></i>
        <select id="level" style="width:100%" name="level">
              <?php
                foreach($priv as $list){ ?>
                <option value="<?php echo $list->privilegeId?>"><?php echo $list->privilegeStatus?></option>
              <?php }?>
        </select>
        </div></div>
      <div class="row">
          <div class="control-group  col-md-10">
            </div>
          </div>
      </div>
          <div class="row">
            <div class="col-md-11">
              <button class="btn btn-primary btn-cons pull-right" name ="login" id="login" value="Login" type="submit">Login</button>
            </div>
          </div>
      </form>
        </div>
        </div>
        </div>