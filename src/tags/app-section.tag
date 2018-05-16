<app-section>
	<section>
		<div class="id-wrapper">
			<h2>{ goal.id }</h2>
		</div>
		<h2>{ parent.parsePlaceholder( goal.title ) }</h2>
		<app-list items={ data.items }></app-list>
	</section>

	<script>
		this.data = this.opts.data;
	</script>
</app-section>
