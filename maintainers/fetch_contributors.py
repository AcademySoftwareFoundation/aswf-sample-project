#!/usr/bin/env python3
#
# Copyright Academy Software Foundation and it's contributors
# SPDX-License-Identifier: Apache-2.0

import argparse
import json
import urllib.request

parser = argparse.ArgumentParser(
    description='Fetch a list of contributors for a given GitHub repo.'
)
parser.add_argument(
    '--repo',
    required=True,
    help='GitHub Project/Repo name. (e.g. "AcademySoftwareFoundation/aswf-sample-project")'
)
parser.add_argument(
    '--token',
    required=True,
    help='GitHub personal access token, used for authorization.'
    ' Get one here: https://github.com/settings/tokens/new'
)
args = parser.parse_args()

# Note: un-authenticated requests have a strict rate limit.
# We avoid this by using authentication for all our requests,
# even the ones that don't need it.
#
# You can fetch your limits with this API:
#
# request = urllib.request.Request(
#     "https://api.github.com/rate_limit",
#     headers = {"Authorization": "token {}".format(token)}
# )
# response = urllib.request.urlopen(request).read().decode('utf-8')
# print("Rate limit: {}".format(response))

request = urllib.request.Request(
    "https://api.github.com/repos/{}/stats/contributors".format(args.repo),
    headers={"Authorization": "token {}".format(args.token)}
)
response = urllib.request.urlopen(request).read().decode('utf-8')

contributors = json.loads(response)

if len(contributors) == 0:
    print(
        "WARNING: Empty response."
        " Try again a minute after GitHub has refreshed the list."
    )

output_lines = []

for contributor in contributors:

    login = contributor['author']['login']
    url = contributor['author']['html_url']

    request = urllib.request.Request(
        "https://api.github.com/users/{}".format(login),
        headers={"Authorization": "token {}".format(args.token)}
    )
    response = urllib.request.urlopen(request).read().decode('utf-8')

    user = json.loads(response)
    name = user['name'] or "?"

    # Print the output in markdown format
    output_lines.append("* {} ([{}]({}))".format(name, login, url))

print("\n".join(sorted(output_lines, key=str.casefold)))
