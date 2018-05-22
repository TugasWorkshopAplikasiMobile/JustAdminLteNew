<!-- jQuery 3 -->
<script src="<?php print base_url('assets/') ?>bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php print base_url('assets/') ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php print base_url('assets/') ?>bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php print base_url('assets/') ?>dist/js/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="<?php print base_url('assets/') ?>bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="<?php print base_url('assets/') ?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php print base_url('assets/') ?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll -->
<script src="<?php print base_url('assets/') ?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="<?php print base_url('assets/') ?>bower_components/chart.js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php print base_url('assets/') ?>dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php print base_url('assets/') ?>dist/js/demo.js"></script>

	<script>
    $("document").ready(function(){
        var base_url="<?php echo base_url(); ?>";
        var x = document.getElementById("myAudio");

        function enableAutoplay() { 
            x.autoplay = true;
            x.load();
        }
        function load_unseen_notification(view = ''){
            $.ajax({
                url:base_url+"index.php/notifcontroler/peringatan",
                method:"POST",
                data:{baca:view},
                dataType:"json",
                success:function(data){
                    $('.data_notifikasi').html(data.peringatan);
                    if(data.unseen_notification > 0){
                        $('#jml_notifikasi').html(data.unseen_peringatan);
                        $('.popupnotifikasi').html(data.notificationping);
                        $.ajax({
                            url:base_url+"index.php/notifcontroler/peringatan",
                            method:"POST",
                            data:{popup:view},
                            dataType:"json",
                        });  
                    }
                    if (data.jmlpopup > 0) {
                        enableAutoplay();
                    }
                }
            });
        }
     
        load_unseen_notification("");
         
        setInterval(function(){ 
            load_unseen_notification(""); 
        }, 7000);
    });
    </script>
</body>
</html>
