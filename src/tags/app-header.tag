<app-header>
	<header class="header">
		<div class="header__inner">
			<h1>{ title }</h1>
			<p>{ description }</p>
		</div>
	</header>

	<script>
		this.title = this.opts.title || 'Whoops, looks like you didn\'t provide a title.';
		this.description = this.opts.description || 'Whoops, looks like you didn\'t provide a description.';
	</script>
</app-header>
