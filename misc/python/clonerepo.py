from github import Github
import sys
import os

Token = os.getenv('GithubToken')
TargetOrg = os.getenv('TargetOrg')

g = Github(Token)

user = g.get_organization(TargetOrg)
repo = user.create_repo(sys.argv[1])