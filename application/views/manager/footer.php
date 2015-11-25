    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<?php echo base_url('js/manager/jquery-2.1.4.min.js'); ?>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url('js/manager/bootstrap.min.js'); ?>"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<?php echo base_url('js/manager/plugins/morris/raphael.min.js'); ?>"></script>
    <script src="<?php echo base_url('js/manager/plugins/morris/morris.min.js'); ?>"></script>
    <script src="<?php echo base_url('js/manager/plugins/morris/morris-data.js'); ?>"></script>
    <script src="<?php echo base_url('js/manager/tableExport.js'); ?>"></script>
    <script src="<?php echo base_url('js/manager/jquery.base64.js'); ?>"></script>
    <script type="text/javascript">
// var plant = document.getElementById('taken');
// var id = plant.getAttribute('data-id');
// $('#'+id).on('click', function(){
//     console.log( $( this ).attr('data-id') );
//     alert('deklaracia');
// });

    $('body').on('submit', 'form.gatana', function(e) {
        e.preventDefault();
        var tr = $(this).closest('tr');
        $.post( $(this).attr('action'), $(this).serialize(), function(resp) {
            tr.toggleClass('success');
            var value = tr.find('input[name=taken]').attr("value")
            if(value == 1) {
                tr.find('input[name=taken]').attr("value", 0);
            }
            else if (value == 0) {
                tr.find('input[name=taken]').attr("value", 1);
            }

            if ( resp == 'ok' ) {
                alert('დეკლარაცია შევსებულია');
            }
        });
    });

        $('.curency').on('submit', function(e){
            e.preventDefault();
            $.post($(this).attr('action'), $(this).serialize(), function(resp){
                if ( resp ){
                    alert('ჩანაწერი დამახსოვრებულია');
                    console.log(resp);
                }
            });
        });

</script>
</body>
</html>