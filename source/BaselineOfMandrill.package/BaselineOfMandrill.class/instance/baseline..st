baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'EmailReplyParser'
				with: [ spec
						
						repository: 'github://pdebruic/EmailReplyParser:main/repository' ].
			spec
				package: 'Mandrill-Core' with: [ spec requires: #('NeoJSON') ];
				package: 'Mandrill-Tests'
					with: [ spec requires: #('Mandrill-Core') ].
			spec
				group: 'default' with: #('Mandrill-Core' 'Mandrill-Tests');
				group: 'Core' with: #('Mandrill-Core');
				group: 'Tests' with: #('Mandrill-Tests');
				group: 'Inbound' with: #('Core' 'EmailReplyParser') ].
	spec
		for: #pharo
		do: [ spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ] ].
	spec
		for: #gemstone
		do: [ spec
				baseline: 'NeoJSON'
				with: [ spec repository: 'github://GsDevKit/NeoJSON:master/repository' ] ]