import requests
from jira import JIRA

jira_url_critquery = 'https://elacarte.atlassian.net'
r = requests.get(jira_url_critquery, auth=('amohammed', 'yh2SBsNGWBZK161tbz94724A'))
options = {
    'server': jira_url_critquery
}
print(r.status_code)
jira = JIRA(options, basic_auth=('amohammed@elacarte.com', 'yh2SBsNGWBZK161tbz94724A'))
ticket = 'REL-2946'
# project = jira.issue(ticket).fields.project
issue = jira.issue('REL')
print(issue.raw['fields'])
# for field_name in issue.raw['fields']:
#     print("Field:", field_name, "Value:", issue.raw['fields'][field_name])

# projects = jira.projects()
# print(projects)
# issue = jira.issue['fields']
#
#
# summary = issue.fields()
#
# print('ticket: ', ticket, summary)
