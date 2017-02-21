baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec configuration: 'Mocketry' with: [
			spec version: #stable;
				repository: 'http://smalltalkhub.com/mc/dionisiy/Mocketry/main' ].
		spec package: 'Carcassonne' with: [ spec requires: 'Mocketry' ] ]