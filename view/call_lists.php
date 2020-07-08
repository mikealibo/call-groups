<?php require('./controller/CallListController.php');?>


<div class="container mt-5">
    <div class="row">
        <div class="col-8 offset-2">

            <h5 class="text-center">Group #<?php echo $grp_id;?></h5>


            <table class="table table-hover">
                <thead>
                    <tr>
                    <th scope="col">Level</th>
                    <th scope="col">Name</th>
                    <th scope="col" width="260px">Action</th>
                    </tr>
                </thead>

                <tbody>
                    <?php index($grp_id);?>
                </tbody>
            </table>

            

        </div>
    </div>
</div>

