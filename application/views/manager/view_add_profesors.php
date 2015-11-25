<div id="page-wrapper">
<div class="container-fluid">

<?php if (!$this->session->flashdata('message') == null): ?>
    <div class="alert alert-success" role="alert">
        <a href="#" class="alert-link"><?php echo $_SESSION['message']; ?></a>
    </div>
<?php endif; ?>
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Tables
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href=<?php echo site_url('manager');?>>მთავარი</a>
                            </li>
                            <li>
                                <i class="fa fa-table"></i><a href=<?php echo site_url('manager/profesors');?>> ლექტორები</a>
                            </li>
                            <li class="active">
                             <i class="fa fa-table"></i> ლექტორის დამატება
                            </li>
                        </ol>
                    </div>
                </div>

<div class="row">
<h2>ლექტორის დამატება</h2>   
    <div class="col-md-5">
         <?php echo form_open_multipart('manager/add_profesors');?>
            <div class="form-group">
                <label>სახელი და გვარი</label>
                <input class="form-control" value="<?php set_value('name'); ?>" name="name" required title"შეავსეთ ველი">
                <p class="help-block">ლექტორის სახელი და გვარი</p>
            </div>
            <div class="form-group">
                <label>მიმართულება</label>
                <p>
                <select class="selectpicker" name="direction">
                <?php foreach ($direction as $item): ?>
                    <option><?php echo $item['title']; ?></option>
                <?php endforeach; ?>
                </select>
                </p>
                <p class="help-block">დაბადების თარიღი</p>
            </div>
            <div class="form-group">
                <label>ბიოგრაფია</label>
                <textarea class="form-control" value="<?php set_value('bio'); ?>" name="bio" title"შეავსეთ ველი"></textarea>
                <p class="help-block">ბიოგრაფია</p>
            </div>
            <div class="form-group">
                <label>ლექტორის სურათი</label>
                <input type="file" name="userfile" size="20" />
                <p class="help-block">აირჩიეთ სურათი</p>
            </div>
            <div class="form-group">
            <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
              <i class="fa fa-fw fa-plus"></i> სოციალური ლინკები
            </a>
            <div class="collapse" id="collapseExample">
              <div class="well">
                <label>სოციალური ქსელი</label>
                <input class="form-control" value="<?php set_value('social'); ?>" name="social" title"შეავსეთ ველი">
                <p class="help-block">სოციალური ქსელი</p>
                <label>სოციალური ქსელი</label>
                <input class="form-control" value="<?php set_value('social'); ?>" name="social" title"შეავსეთ ველი">
                <p class="help-block">სოციალური ქსელი</p>
                <label>სოციალური ქსელი</label>
                <input class="form-control" value="<?php set_value('social'); ?>" name="social" title"შეავსეთ ველი">
                <p class="help-block">სოციალური ქსელი</p>
                <label>სოციალური ქსელი</label>
                <input class="form-control" value="<?php set_value('social'); ?>" name="social" title"შეავსეთ ველი">
                <p class="help-block">სოციალური ქსელი</p>
              </div>
            </div>
                
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-chevron-right"> დამახსოვრება</span></button>
            </div>
    </div>
    <div class="col-md-5">
            <div class="form-group">
                <label>ელ.მისამართი</label>
                <input class="form-control" value="<?php set_value('email'); ?>" name="email" title"შეავსეთ ველი">
                <p class="help-block">საკონტაქტო ელ.მისამრთი</p>
            </div>
            <div class="form-group">
                <label>ელ.მისამართი</label>
                <input class="form-control" value="<?php set_value('phone'); ?>" name="phone" title"შეავსეთ ველი">
                <p class="help-block">საკონტაქტო ელ.მისამრთი</p>
            </div>

        </form>
    </div>
</div>
<!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->