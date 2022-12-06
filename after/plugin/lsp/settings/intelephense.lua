return {
	settings = {
		intelephense = {
			stubs = {
				"Core",
				"curl",
				"wordpress",
				"acf-pro",
				"wordpress-globals",
				"wp-cli",
				"polylang",
			},
			environment = {
				includePaths = "/Users/jmichael/.composer/vendor/php-stubs/", -- this line forces the composer path for the stubs in case inteliphense don't find it...
			},
			files = {
				maxSize = 5000000,
			},
		},
	},
}
