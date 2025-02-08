### Creating my-test-package: 
It's an error caused by python when it builds the workspace

1- Activate the env 

2- `rm -rf env/lib/python3.12/site-packages/pkg_resources/tests/data/my-test-package-source`

3- `touch env/lib/python3.12/site-packages/pkg_resources/tests/data/.colcon_ignore`

