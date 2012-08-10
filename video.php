<?php
require_once('logic/login.php');
require_once('logic/util.php');

$current_video = htmlspecialchars($_GET["video"]);
$current_chapter = htmlspecialchars($_GET["chapter"]);

if(empty($current_chapter)){
	$current_chapter = "Operational Procedures";
}


$videos = scandir("videos/a_plus/$current_chapter");
$chapters = scandir("videos/a_plus/");

if(empty($current_video)){
	$current_video = $videos[2];
}

function video_source(){
	global $current_video, $current_chapter;
	print "<source src=\"videos/a_plus/$current_chapter/$current_video\" type=\"video/mp4\" />";
}

?>

<?php include 'includes/core/document_head.php'?>
	<div id="pjax">
		<div id="wrapper" data-adminica-nav-top="1" data-adminica-side-top="1">
			<?php include 'includes/components/topbar.php'?>
			<?php include 'includes/components/sidebar.php'?>
			<?php include 'includes/components/stackbar.php'?></div><!-- Closing Div for Stack Nav, you can boxes under the stack before this -->

			<div id="main_container" class="main_container container_16 clearfix">
				<?php include 'includes/components/navigation.php'?>
				<div class="box grid_16">
					<h2 class="box_head">
						<?php print $current_video ?>
					</h2>
					<video width="100%"s controls="controls" autoplay="autoplay">
						<? video_source() ?>
					  Your browser does not support the video tag.
					</video>
				</div>
				<div class="box grid_8">
					<h2 class="box_head">Chapters</h2>
					<div class="controls">
						<a href="#" class="grabber"></a>
						<a href="#" class="toggle"></a>
					</div>
					<div class="toggle_container">
						<div class="block">
							<div class="section">
								<ol>
								<?php 
								foreach($chapters as &$chapter) { 
									if(startsWith($chapter, ".")) continue;	
									?>
									<li>
										<a href="video.php?chapter=<? print $chapter ?>"> <? print $chapter ?> </a>					
									</li>
								<?php } ?>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<div class="box grid_8">
					<h2 class="box_head">Episodes</h2>
					<div class="controls">
						<a href="#" class="grabber"></a>
						<a href="#" class="toggle"></a>
					</div>
					<div class="toggle_container">
						<div class="block">
							<div class="section">
								<ol>
								<?php 
								foreach($videos as &$video) { 
									if(startsWith($video, ".")) continue;	
									?>
									<li>
										<a href="video.php?chapter=<? print $current_chapter ?>&video=<? print $video ?>"> <? print $video ?> </a>					
									</li>
								<?php } ?>
								</ol>
							</div>
						</div>
					</div>
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
