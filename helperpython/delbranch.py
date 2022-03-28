from github import Github
g = Github("INPUTGHPHERE")

repo = g.get_repo("")
for b in repo.get_branches():
    repo.get_git_ref(f"heads/{b.name}").delete()
