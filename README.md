# Golang Customised Version For QEX Framework
## This Golang version is developed for [QEX framework](https://github.com/luohuahuang/qex/blob/main/README.md)
* To enable the sending real-time test execution to QEX framework, you need to set,
    * `export ENABLE_QEX=true`
        * If not set, this Golang will be performing just like a regular distribution
    * `export QEX_WEB_SERVER_TEST_RUN_URL=http://url-to-your-qex-server.example.com/qex/v1/test_job/case`
    * `export CASE_GIT_PAIR_FILE=/absolute/path/for/framework/to/generate/git-author-info # e.g, /tmp/git-log.txt`
        * This variable will be used by [bin/get_case_git_list.sh](bin/get_case_git_list.sh) to stage the test case author list
* You may wish to set,
    * `export GIT_BRANCH=<your-code-branch> # e.g, master`
        * If you are running test from Jenkins, this variable is pre-setup by Jenkins automatically
    * `export PACKAGE_NAME=product.sub-product.service.api # e.g, order.cart.checkout.add-item`
        * This variable will be used by QEX - Grafana dashboard to categorise and display your data better
        
## Contribution
* Co-authored by Huang Luohua, Joseph Chu, Keshia Yap, Chua Hockyao