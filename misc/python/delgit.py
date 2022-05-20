from github import Github
import sys
import os

Token = os.getenv('GithubToken')
TargetOrg = os.getenv('TargetOrg')

g = Github(Token)
infile = open('repolist','r')
for line in infile:
    repo = g.get_organization(TargetOrg).get_repo(line.strip())
    repo.delete()

infile.close()