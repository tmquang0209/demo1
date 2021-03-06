<?php 
require('../TMQ/function.php');
if($TMQ['admin'] == 0){
    header('Location: /');
    exit;
}
require('head.php');?>
    <link rel="stylesheet" href="/admin/assets/css/lib/datatable/dataTables.bootstrap.min.css">
 
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

        <!-- Header-->
<div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Dashboard</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">Dashboard</a></li>
                                    
                                    <li class="active">Danh sách tài khoản wheel</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Danh sách tài khoản wheel</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            
                                            <th>Id</th>
                                            <th>Thông tin</th>
                                            <th>Loại nick</th>
                                            <th>Trạng thái</th>
                                            <th>Ngày đăng</th>
                                            <th>Thao tác</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
    <?php
$get = $db->query("SELECT * FROM `TMQ_nickthuong`"); //lấy danh sách bài viết theo chuyên mục
$tt = array(" [0] => 'Còn', [1] => 'Đã GD'");
while($row = $get->fetch()){
?>
                                        <tr>
                                            <td><?=$row['id'];?></td>
                                            <td><?=$row['taikhoan'];?>/<?=$row['matkhau'];?></td>
                                            <td><?=$row['loai'];?></td>
                                            <td><?=$tt[$row['trangthai']];?></td>
                                            <td><?=$row['date'];?></td>
                                            <td><a href="?del=<?=$row['id'];?>"><i class="ti-close"></i></a></td>
                                         </tr>
                  <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


        <div class="clearfix"></div>
<?php require('end.php'); ?>