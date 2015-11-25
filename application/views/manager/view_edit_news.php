<div id="page-wrapper">
<div class="container-fluid">

<?php if (!$this->session->flashdata('message') == null): ?>
    <div class="alert alert-info" role="alert">
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
                                <i class="fa fa-table"></i><a href=<?php echo site_url('manager/news');?>> სიახლეები</a>
                            </li>
                            <li class="active">
                             <i class="fa fa-table"></i> სიახლის რედაქტირება
                            </li>
                        </ol>
                    </div>
                </div>

<div class="row">
<h2>სიახლის რედაქტირება</h2>
<?php if ( !empty($news) ): ?>
    <div class="col-md-12">
         <?php echo form_open_multipart('manager/update_news/'.$news['id']);?>
            <div class="form-group">
                <label>სათაური</label>
                <input class="form-control" value="<?=$news['title'];?>" name="title" required title"შეავსეთ ველი">
                <p class="help-block">სათაური სიახლისთვის</p>
            </div>
            <div class="form-group">
                <label>ბიოგრაფია</label>
                <textarea name="content" id="editor1" rows="10" cols="80" ><?=$news['content'];?></textarea>

                <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
                </script>
            </div>
            <div class="form-group">
                <p><img src="<?=base_url('img/img/'.$news['image']);?>" width="120"></p>
                <label>ლექტორის სურათი</label>
                <input type="file" name="userfile" size="20" />
                <p class="help-block">აირჩიეთ სურათი</p>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-chevron-right"> დამახსოვრება</span></button>
            </div>
        </form>
    </div>
<?php endif; ?>

</div>
<!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
