<?php include 'includes/core/document_head.php'?>
	<div id="pjax">
		<div id="wrapper" data-adminica-nav-top="1" data-adminica-side-top="1">
			<?php include 'includes/components/topbar.php'?>
			<?php include 'includes/components/sidebar.php'?>
			<?php include 'includes/components/stackbar.php'?></div><!-- Closing Div for Stack Nav, you can boxes under the stack before this -->

			<div id="main_container" class="main_container container_16 clearfix">
				<?php include 'includes/components/navigation.php'?>
				<div class="flat_area grid_16">
					<h2>License to Tech
						<small>- Featuring Mike Meyers</small>
					</h2>

				</div>
				<div class="box grid_16">
					<h2 class="box_head">Grid_16</h2>
					<div class="controls">
						<a href="#" class="grabber"></a>
						<a href="#" class="toggle"></a>
					</div>
					<video width="100%" controls="controls">
					  <source src="videos/002 Professionalism.mp4" type="video/mp4" />
					  Your browser does not support the video tag.
					</video>
				</div>
			</div>
		</div>
	</div>
				
<script type="text/javascript">
$(document).ready(function() {
	//$("#dialog_welcome").dialog("open");
});
</script>
<?php include 'includes/core/document_foot.php'?>