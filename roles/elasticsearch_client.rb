name        "elasticsearch_client"
description "[Infochimps internal] Client for an elasticsearch cluster: doesn't run daemons, just installs and configures."

# List of recipes and roles to apply
run_list(*%w[
  cluster_chef::dedicated_server_tuning
  elasticsearch::autoconf
  elasticsearch::default
  elasticsearch::install_from_release
  elasticsearch::install_plugins
  elasticsearch::client
])
