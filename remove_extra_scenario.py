
#oldfile = open('/home/sachinrau/Documents/xray_github_repo/test_repository/1_.feature','r')
#newfile = open('/home/sachinrau/Documents/xray_github_repo/test_repository/xray_test/updated_feature_file.feature','w')

oldfile = open('/home/circleci/project/1_.feature','r')
newfile = open('/home/circleci/project/xray_test/updated_feature_file.feature','w')
skip_scenario = False
count = 0
for line in oldfile:

    if "Scenario" in line:
        count = count + 1

    if  not count == 1:
        newfile.write(line)
        count = 0

oldfile.close()
newfile.close()