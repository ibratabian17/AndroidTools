from github import Github
import sys

g = Github("INPUTGHPHERE")
infile = open('repolist','r')
for line in infile:
    repo = g.get_organization("SwiftOS-DROID").get_repo(line.strip())
    repo.delete()

infile.close()