
		<div class="ins-cont">
			<div class="in-img ins-top" style="background:url('<?php echo base_url("img/img/".$lecture['pic_name']); ?>') no-repeat 50% 50%;background-size:cover;"></div>
			<div class="in-prtf ins-top">
				<ul class="sec-fiv-ul sec-fiv-ul-ins">
			<?php if ( !empty($project) ): ?>
				<?php foreach ( $project as $item ): ?>
					<li class="sec-fiv-li sec-fiv-li-ins">
						<a href="<?php echo $item['project_url']; ?>">
							<img src="<?php echo base_url('img/img/'.$item['project_image']); ?>" alt="Lecturer">
							<h3><?php echo $item['project_name']; ?></h3>
						</a>
					</li>
				<?php endforeach; ?>
			<?php endif; ?>
				</ul>
			</div>
			<div class="in-nm-soc ins-bott">
				<h3 class="ins-prof"><?php echo $lecture['direction']; ?></h3>
				<h3 class="ins-prof-name"><?php echo $lecture['name']; ?></h3>

				<ul class="ins-bt-lf-ul">
				<?php
				if ( !empty($lecture['social']) ):
				$hashmap = array(
					'facebook' => base_url('img/icons/face.png'),
					'linkin' => base_url('img/icons/in.png')
					);
				$data = explode(':', $lecture['social']);
				foreach ( $data as $value ){
					list($k,$v) = explode('*=*', $value);
					$list[][$k] = $v;
				}
				foreach ( $list as $val ){
					foreach ( $val as $key => $item){?>
						<li class="ins-bt-lf-li">
						<a href="<?php echo $item; ?>">
						<img src="<?php echo $hashmap[$key]; ?>" alt="behance">
						</a></li>
					<?php }
				}
				endif;
				?>
				</ul>
			</div>
			<div class="in-nm-inf ins-bott">
				
				<p class="ins-bt-rig-p">
					<?php echo $lecture['bio']; ?>

				</p>

			</div>
		</div>

		<nav class="mn-menu-btm">
			<ul class="mn-btm-ul">
				<li class="mn-btm-li"><a href="#">გარემო</a></li>
				<li class="mn-btm-li"><a href="#">მიმართულებები</a></li>
				<li class="mn-btm-li"><a href="#">პროფესორები</a></li>
				<li class="mn-btm-li"><a href="#">მოდელი</a></li>
			</ul>
		</nav>

	</div>
</div>
</body>
</html>