<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    <?php echo 'Account Head Edit'; ?> <small></small>
                </h3>
                <ul class="page-breadcrumb breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <?php echo lang('home'); ?>
                    </li>
                    <li>
                        <?php echo 'Account Head Edit'; ?>
                    </li>
                </ul>
                <!-- END PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- END PAGE HEADER-->

        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <div class="portlet box green">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-gift"></i><?php echo 'Edit Account Head Below'; ?>
                        </div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse">
                            </a>
                            <a href="javascript:;" class="reload">
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <?php
                        echo form_open("account/edit_account_head");
                        ?>


                            <div class="form-body">
                                <div class="form-group">
                                    <label class="col-md-3 control-label"><?php echo 'Category Name'; ?> <span class="requiredStar"> * </span></label>
                                    <div class="col-md-4">
                                        <select name="category_id" class="form-control">
                                            <?php foreach ($category as $key => $value) {  ?> 
                                            <option <?php if($accHeadInfo[0]['category_id'] == $value['id']) { ?> Selected <?php } ?> value="<?php echo $value['id']; ?>"><?php echo $value['category_name'] ?></option>
                                            <?php } ?>
                                        </select>                                    
                                    </div>
                                </div>
                            </div><br>

                            <div class="form-body">
                                <div class="form-group">
                                    <label class="col-md-3 control-label"><?php echo 'Account Head Name'; ?> <span class="requiredStar"> * </span></label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" placeholder="<?php echo 'Account Head Name'; ?>"  value="<?php echo $accHeadInfo[0]['accounts_head_name']; ?>" name="accounts_head_name" data-validation="required" data-validation-error-msg="">
                                    </div>
                                </div>
                            </div> <br>
                            <div class="form-body">
                                <div class="form-group">
                                    <label class="col-md-3 control-label"><?php echo 'Note'; ?> <span class="requiredStar">  </span></label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" placeholder="<?php echo 'Note'; ?>"  value="<?php echo $accHeadInfo[0]['note']; ?>" name="note" data-validation-error-msg="">
                                    </div>
                                </div>
                            </div>

                            <input type="hidden" class="form-control"  value="<?php echo $accHeadInfo[0]['id']; ?>" name="id" data-validation="required" data-validation-error-msg="">
                        
                            <div class="form-actions fluid">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn blue" name="submit" value="Update"><?php echo 'Update Category'; ?></button>
                                    <button type="button" class="btn default" onclick="location.href = 'javascript:history.back()'"><?php echo "Back"; ?></button>
                                </div>
                            </div>


                        <?php echo form_close(); ?>
                        <!-- END FORM-->
                    </div>
                </div>
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
<!-- END CONTENT -->
<script src="assets/global/plugins/jquery.form-validator.min.js" type="text/javascript"></script>
<script> $.validate();</script>
<script>
    jQuery(document).ready(function () {
//here is auto reload after 1 second for time and date in the top
        jQuery(setInterval(function () {
            jQuery("#result").load("index.php/home/iceTime");
        }, 1000));
    });
</script>
