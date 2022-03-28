from github import Github
g = Github("INPUTGHPHERE")

for repo in g.get_organization("SwiftOS-DROID").get_repos():
    print(repo.name)