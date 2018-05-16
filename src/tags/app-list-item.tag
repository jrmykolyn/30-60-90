<app-list-item>
	<li class="app-list__item">
		<div class="checkbox-wrapper { data.isComplete ? 'is-complete' : '' }">
			<span class="checkbox"></span>
			<p>{ data.title }</p>
		</div>
		<app-list if={ item.items } items={ item.items }></app-list>
	</li>

	<script>
		this.data = this.opts.data || {};
	</script>
</app-list-item>
