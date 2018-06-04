window.__INITIAL_STATE__ = {
	data: {
		initializedAt: 1525486266508,
		title: '30/60/90',
		description: '30/60/90 is a simple RiotJS application which reads in and displays information about personal goals to be completed within the next 30, 60, and 90 days.',
		titleAhead: 'Within the next <placeholder> days I will:',
		titleBehind: 'I should have completed the following <placeholder> days ago:',
		goals: [
			{
				id: 30,
				value: 30,
				items: [
					{
						title: 'Prepare a list of goals to accomplish within the next 30, 60, and 90 days.',
						isComplete: true,
					},
					{
						title: 'Pair with everyone on the CVS team.',
						isComplete: true,
						items: [
							{ title: 'Simon', isComplete: true },
							{ title: 'Joey', isComplete: true },
							{ title: 'Lindsay', isComplete: true },
							{ title: 'Carlo', isComplete: true },
							{ title: 'Shawna', isComplete: true },
							{ title: 'Greg', isComplete: true },
							{ title: 'Linda', isComplete: true },
							{ title: 'Ryan', isComplete: true },
							{ title: 'Mike', isComplete: true },
						],
					},
					{
						title: 'Create a new repo. for recording and sharing tools (eg. useful Chrome Extensions, plugins, etc.)',
						isComplete: false,
					},
					{
						title: 'Implement ESLint and SASS Lint within new repos.',
						isComplete: true,
						items: [
							{ title: 'Signet', isComplete: true },
							{ title: 'CVS (`cust_cvshealth`)', isComplete: true },
						],
					},
					{
						title: 'Participate in the creation of documentation re: Git flow and commit message conventions.',
						isComplete: false,
					},
					{
						title: 'Prepare onboarding materials for new developers, including exercises which aim to get them up and running with RiotJS.',
						isComplete: false,
					},
					{
						title: 'Submit a PR against RefApp.',
						isComplete: true,
						items: [
							{ title: 'Submit "clickable props" feature', isComplete: true },
						]
					},
				],
			},
			{
				id: 60,
				value: 60,
				items: [
					{
						title: 'Submit a PR against Command Center.',
						isComplete: false,
					},
				],
			},
			{
				id: 90,
				value: 90,
				items: [
					{
						title: 'Submit a PR against @storefront',
						isComplete: false,
					},
					{
						title: 'Submit a PR against RiotJS.',
						isComplete: false,
					}
				],
			}
		]
	},
};
