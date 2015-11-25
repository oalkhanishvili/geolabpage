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
            სიახლეები
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href=<?php echo site_url('manager');?>>მთავარი</a>
            </li>
            <li class="active">
                <i class="fa fa-table"></i> სიახლეები
            </li>
        </ol>
    </div>

</div>
<form action="<?php echo site_url('manager/user_search'); ?>" method="post">
<div class="row">

<div class="col-lg-12">

        <div class="well">
        <div class="input-group">
        <input type="text" name="search" class="form-control" placeholder="ჩაწერეთ ძიება აქ...">

        <span class="input-group-btn">
        <button class="btn btn-default" type="submit">ძებნა!</button>
        </span>
        </div>
       <p class="help_block"><b>შესაძლებელია მოიძებნოს შემდეგი პარამეტრებით: </b>
       [სახელი და გვარი][ელ.მისამართი][ოთახის ნომერი][პირადი ნომერი]
       [ნიკი][კომპანიის საიდენფიკაციო][კომპანიის სახელი][მობილური]</p>

    </div>
</div><!-- /.col-lg-6 -->
</div>
<!-- ძებნის ველი -->

 </form>
<!-- //ძებნის ველი -->
<div class="row">
<div class="col-lg-12">
<h2>მომხმარებლების სია</h2>
<div class="table-responsive">
<div class="well">
    <a href="<?php echo site_url('manager/user_add'); ?>"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"> სიახლის დამატება</span></button></a>
</div>
    <table class="table table-striped table-bordered table-hover dataTable" id="datatable">
        <thead>
            <tr>
                <th><span class="glyphicon glyphicon-th"></span></th>
                <th>სურათი</th>
                <th>სათაური</th>
                <th>ტექსტი</th>
                <th>გამოქვეყნების თარიღი</th>
            </tr>
        </thead>
        <tbody>
        <?php if ( !empty($news) ):
                foreach ( $news as $item ): ?>
            <tr>
                <td>
                <!-- Split button -->
                <div class="btn-group">
                      <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="<?php echo site_url('manager/edit_news/'.$item['id']); ?>">რედაქტირება</a></li>
                    <li> <a href="<?php echo site_url('manager/delete_news/'.$item['id']); ?>" onclick="return confirm('დარწმუნებული ხართ რომ წაშლა გინდათ?')">წაშლა</a></li>
                  </ul>
                </div>
               </td>
                <td><?php echo '<img src="'.base_url('img/img/'.$item['image']).'" width=150>'; ?></td>
                <td><?php echo $item['title']; ?></td>
                <td><?php echo substr(substr($item['content'],0,200),0, strrpos(substr($item['content'],0,200),' ')); ?></td>
                <td><?php echo date_format(date_create($item['date']),'D j \of M Y h:i:s A'); ?></td>
            </tr>
        <?php endforeach;
            endif; ?>
        </tbody>
    </table>
</div>
</div>
</div>
<!-- /.row -->

</div>
<!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->-
