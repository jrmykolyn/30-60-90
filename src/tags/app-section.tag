<app-section>
	<section>
		<div class="id-wrapper">
			<h2>{ goal.id }</h2>
		</div>
		<h2>{ parent.parsePlaceholder( goal.title ) }</h2>
		<ul>
			<li each={ item, i in data.items }>
				<div class="checkbox-wrapper { item.isComplete ? 'is-complete' : '' }">
					<span class="checkbox"></span>
					<p>{ item.title }</p>
				</div>
			</li>
		</ul>
	</section>

	<script>
		this.data = this.opts.data;
	</script>
</app-section>
