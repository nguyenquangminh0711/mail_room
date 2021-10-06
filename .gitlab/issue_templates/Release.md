# GitLab mail_room release checklist

- [ ] create tag in https://gitlab.com/gitlab-org/gitlab-mail_room/
- [ ] publish gem from this tag to rubygems.org
- [ ] update https://gitlab.com/gitlab-org/gitlab/-/blob/master/Gemfile to use the new gem version
- [ ] update https://gitlab.com/gitlab-org/omnibus-gitlab/-/blob/master/config/software/mail_room.rb to use the new gem version
- [ ] update gitlab-org/build/CNG to build container images from the new gem (example: https://gitlab.com/gitlab-org/build/CNG/-/merge_requests/451/diffs)
- [ ] to deploy the new version to gitlab.com, update gitlab-com/gl-infra/k8s-workloads/gitlab-com to pin the new mailroom container image version and assign it the [release managers](https://about.gitlab.com/community/release-managers/) (example: https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com/-/merge_requests/236/diffs)
