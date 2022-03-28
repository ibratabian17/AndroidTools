from github import Github
import sys

g = Github("INPUTGHPHERE")

user = g.get_organization("SwiftOS-DROID")
repo = user.create_repo(sys.argv[1])