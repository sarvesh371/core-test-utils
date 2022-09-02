# test-utils

**Using**

1. Create a file `~/.pip/pip.conf` under .pip directory in root directory and paste below data in the file
        
        [global]
        
        index-url =https://{usernameOfRepo}:{passWord}@{repoUrlToPush}/simple
        extra-index-url = https://pypi.org/simple

2. `python -m pip install test_utils`

**Buidling**

1. Create a file `~/.pypirc` in root directory of your system and paste below data in the file.
    
        [distutils]

        index-servers = 

          local


        [local]

        repository: {repoUrlToPush}

        username: {usernameOfRepo}

        password: {passWord}
  
2. Create a file `.pip/pip.conf` under .pip directory in root directory and paste below data in the file
        
        [global]
        
        index-url =https://{usernameOfRepo}:{passWord}@{repoUrlToPush}/simple
        extra-index-url = https://pypi.org/simple

3. Increase the version in `setup.cfg` file
 
4. After making changes in the test_utils go to source directory of code `cd test_utils` run below command to build the wheel and push to artifactory

        - python3 -m pip install --upgrade build
        - python3 -m build
        - python3 -m pip install --upgrade twine
        - python3 -m twine upload --repository local --verbose dist/*
 
5. That's all you have to do and now you are good to use the test_utils in your project
  
