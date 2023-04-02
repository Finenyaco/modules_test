{
  "version": 4,
  "terraform_version": "1.3.9",
  "serial": 1,
  "lineage": "6dec9f3d-fef5-a01a-2236-9dbd89d5c516",
  "outputs": {},
  "resources": [
    {
      "module": "module.nginx",
      "mode": "data",
      "type": "kubernetes_service",
      "name": "service",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "sure-fish/nginx330test",
            "metadata": [
              {
                "annotations": {},
                "generation": 0,
                "labels": {
                  "app": "nginx330test"
                },
                "name": "nginx330test",
                "namespace": "sure-fish",
                "resource_version": "183312",
                "uid": "8d52ec9a-5878-45c2-a430-bb64cd605623"
              }
            ],
            "spec": [
              {
                "allocate_load_balancer_node_ports": true,
                "cluster_ip": "10.96.83.42",
                "cluster_ips": [
                  "10.96.83.42"
                ],
                "external_ips": [],
                "external_name": "",
                "external_traffic_policy": "Cluster",
                "health_check_node_port": 0,
                "internal_traffic_policy": "Cluster",
                "ip_families": [
                  "IPv4"
                ],
                "ip_family_policy": "SingleStack",
                "load_balancer_class": "",
                "load_balancer_ip": "",
                "load_balancer_source_ranges": [],
                "port": [
                  {
                    "app_protocol": "",
                    "name": "port-80",
                    "node_port": 30261,
                    "port": 80,
                    "protocol": "TCP",
                    "target_port": "80"
                  }
                ],
                "publish_not_ready_addresses": false,
                "selector": {
                  "app": "nginx330test"
                },
                "session_affinity": "None",
                "session_affinity_config": [],
                "type": "NodePort"
              }
            ],
            "status": [
              {
                "load_balancer": [
                  {
                    "ingress": []
                  }
                ]
              }
            ]
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "module": "module.nginx",
      "mode": "managed",
      "type": "kubernetes_namespace",
      "name": "ns",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "index_key": 0,
          "schema_version": 0,
          "attributes": {
            "id": "sure-fish",
            "metadata": [
              {
                "annotations": null,
                "generate_name": "",
                "generation": 0,
                "labels": null,
                "name": "sure-fish",
                "resource_version": "183302",
                "uid": "792ae89e-54ac-4dd6-985f-d9d28d7c9deb"
              }
            ],
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiZGVsZXRlIjozMDAwMDAwMDAwMDB9fQ==",
          "dependencies": [
            "module.nginx.random_pet.namespace"
          ]
        }
      ]
    },
    {
      "module": "module.nginx",
      "mode": "managed",
      "type": "random_pet",
      "name": "name",
      "provider": "provider[\"registry.terraform.io/hashicorp/random\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "possible-fly",
            "keepers": null,
            "length": 2,
            "prefix": null,
            "separator": "-"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "module": "module.nginx",
      "mode": "managed",
      "type": "random_pet",
      "name": "namespace",
      "provider": "provider[\"registry.terraform.io/hashicorp/random\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "sure-fish",
            "keepers": null,
            "length": 2,
            "prefix": null,
            "separator": "-"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "module": "module.nginx.module.deployment",
      "mode": "managed",
      "type": "kubernetes_deployment",
      "name": "deploy_app",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "id": "sure-fish/nginx330test",
            "metadata": [
              {
                "annotations": null,
                "generate_name": "",
                "generation": 1,
                "labels": {
                  "app": "nginx330test"
                },
                "name": "nginx330test",
                "namespace": "sure-fish",
                "resource_version": "183362",
                "uid": "3b5b0f05-4a27-42ad-b58b-788310d02ab8"
              }
            ],
            "spec": [
              {
                "min_ready_seconds": 0,
                "paused": false,
                "progress_deadline_seconds": 600,
                "replicas": "1",
                "revision_history_limit": 10,
                "selector": [
                  {
                    "match_expressions": [],
                    "match_labels": {
                      "app": "nginx330test"
                    }
                  }
                ],
                "strategy": [
                  {
                    "rolling_update": [
                      {
                        "max_surge": "25%",
                        "max_unavailable": "25%"
                      }
                    ],
                    "type": "RollingUpdate"
                  }
                ],
                "template": [
                  {
                    "metadata": [
                      {
                        "annotations": null,
                        "generate_name": "",
                        "generation": 0,
                        "labels": {
                          "app": "nginx330test"
                        },
                        "name": "",
                        "namespace": "",
                        "resource_version": "",
                        "uid": ""
                      }
                    ],
                    "spec": [
                      {
                        "active_deadline_seconds": 0,
                        "affinity": [],
                        "automount_service_account_token": true,
                        "container": [
                          {
                            "args": [],
                            "command": [],
                            "env": [],
                            "env_from": [],
                            "image": "nginx",
                            "image_pull_policy": "IfNotPresent",
                            "lifecycle": [],
                            "liveness_probe": [],
                            "name": "nginx330test",
                            "port": [],
                            "readiness_probe": [],
                            "resources": [
                              {
                                "limits": {
                                  "cpu": "200m",
                                  "memory": "100Mi"
                                },
                                "requests": {
                                  "cpu": "200m",
                                  "memory": "100Mi"
                                }
                              }
                            ],
                            "security_context": [],
                            "startup_probe": [],
                            "stdin": false,
                            "stdin_once": false,
                            "termination_message_path": "/dev/termination-log",
                            "termination_message_policy": "File",
                            "tty": true,
                            "volume_mount": [],
                            "working_dir": ""
                          }
                        ],
                        "dns_config": [],
                        "dns_policy": "ClusterFirst",
                        "enable_service_links": true,
                        "host_aliases": [],
                        "host_ipc": false,
                        "host_network": false,
                        "host_pid": false,
                        "hostname": "",
                        "image_pull_secrets": [],
                        "init_container": [],
                        "node_name": "",
                        "node_selector": null,
                        "priority_class_name": "",
                        "readiness_gate": [],
                        "restart_policy": "Always",
                        "runtime_class_name": "",
                        "scheduler_name": "default-scheduler",
                        "security_context": [],
                        "service_account_name": "",
                        "share_process_namespace": false,
                        "subdomain": "",
                        "termination_grace_period_seconds": 30,
                        "toleration": [],
                        "topology_spread_constraint": [],
                        "volume": []
                      }
                    ]
                  }
                ]
              }
            ],
            "timeouts": null,
            "wait_for_rollout": true
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6NjAwMDAwMDAwMDAwLCJ1cGRhdGUiOjYwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMSJ9",
          "dependencies": [
            "module.nginx.random_pet.name",
            "module.nginx.random_pet.namespace"
          ]
        }
      ]
    },
    {
      "module": "module.nginx.module.service",
      "mode": "managed",
      "type": "kubernetes_service",
      "name": "service",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "id": "sure-fish/nginx330test",
            "metadata": [
              {
                "annotations": null,
                "generate_name": "",
                "generation": 0,
                "labels": {
                  "app": "nginx330test"
                },
                "name": "nginx330test",
                "namespace": "sure-fish",
                "resource_version": "183312",
                "uid": "8d52ec9a-5878-45c2-a430-bb64cd605623"
              }
            ],
            "spec": [
              {
                "allocate_load_balancer_node_ports": true,
                "cluster_ip": "10.96.83.42",
                "cluster_ips": [
                  "10.96.83.42"
                ],
                "external_ips": null,
                "external_name": "",
                "external_traffic_policy": "Cluster",
                "health_check_node_port": 0,
                "internal_traffic_policy": "Cluster",
                "ip_families": [
                  "IPv4"
                ],
                "ip_family_policy": "SingleStack",
                "load_balancer_class": "",
                "load_balancer_ip": "",
                "load_balancer_source_ranges": null,
                "port": [
                  {
                    "app_protocol": "",
                    "name": "port-80",
                    "node_port": 30261,
                    "port": 80,
                    "protocol": "TCP",
                    "target_port": "80"
                  }
                ],
                "publish_not_ready_addresses": false,
                "selector": {
                  "app": "nginx330test"
                },
                "session_affinity": "None",
                "session_affinity_config": [],
                "type": "NodePort"
              }
            ],
            "status": [
              {
                "load_balancer": [
                  {
                    "ingress": []
                  }
                ]
              }
            ],
            "timeouts": null,
            "wait_for_load_balancer": true
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDB9LCJzY2hlbWFfdmVyc2lvbiI6IjEifQ==",
          "dependencies": [
            "module.nginx.random_pet.name",
            "module.nginx.random_pet.namespace"
          ]
        }
      ]
    },
    {
      "module": "module.nginx2",
      "mode": "data",
      "type": "kubernetes_service",
      "name": "service",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "together-toad/nginx2-330test",
            "metadata": [
              {
                "annotations": {},
                "generation": 0,
                "labels": {
                  "app": "nginx2-330test"
                },
                "name": "nginx2-330test",
                "namespace": "together-toad",
                "resource_version": "183309",
                "uid": "644ad7de-abb8-4b4b-82f5-2477bac6ee07"
              }
            ],
            "spec": [
              {
                "allocate_load_balancer_node_ports": true,
                "cluster_ip": "10.96.121.28",
                "cluster_ips": [
                  "10.96.121.28"
                ],
                "external_ips": [],
                "external_name": "",
                "external_traffic_policy": "Cluster",
                "health_check_node_port": 0,
                "internal_traffic_policy": "Cluster",
                "ip_families": [
                  "IPv4"
                ],
                "ip_family_policy": "SingleStack",
                "load_balancer_class": "",
                "load_balancer_ip": "",
                "load_balancer_source_ranges": [],
                "port": [
                  {
                    "app_protocol": "",
                    "name": "port-80",
                    "node_port": 32505,
                    "port": 80,
                    "protocol": "TCP",
                    "target_port": "80"
                  }
                ],
                "publish_not_ready_addresses": false,
                "selector": {
                  "app": "nginx2-330test"
                },
                "session_affinity": "None",
                "session_affinity_config": [],
                "type": "NodePort"
              }
            ],
            "status": [
              {
                "load_balancer": [
                  {
                    "ingress": []
                  }
                ]
              }
            ]
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "module": "module.nginx2",
      "mode": "managed",
      "type": "kubernetes_namespace",
      "name": "ns",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "index_key": 0,
          "schema_version": 0,
          "attributes": {
            "id": "together-toad",
            "metadata": [
              {
                "annotations": null,
                "generate_name": "",
                "generation": 0,
                "labels": null,
                "name": "together-toad",
                "resource_version": "183301",
                "uid": "40e388bd-c752-4e1a-9689-e3f9efa498a8"
              }
            ],
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiZGVsZXRlIjozMDAwMDAwMDAwMDB9fQ==",
          "dependencies": [
            "module.nginx2.random_pet.namespace"
          ]
        }
      ]
    },
    {
      "module": "module.nginx2",
      "mode": "managed",
      "type": "random_pet",
      "name": "name",
      "provider": "provider[\"registry.terraform.io/hashicorp/random\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "smart-parrot",
            "keepers": null,
            "length": 2,
            "prefix": null,
            "separator": "-"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "module": "module.nginx2",
      "mode": "managed",
      "type": "random_pet",
      "name": "namespace",
      "provider": "provider[\"registry.terraform.io/hashicorp/random\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "together-toad",
            "keepers": null,
            "length": 2,
            "prefix": null,
            "separator": "-"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "module": "module.nginx2.module.deployment",
      "mode": "managed",
      "type": "kubernetes_deployment",
      "name": "deploy_app",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "id": "together-toad/nginx2-330test",
            "metadata": [
              {
                "annotations": null,
                "generate_name": "",
                "generation": 1,
                "labels": {
                  "app": "nginx2-330test"
                },
                "name": "nginx2-330test",
                "namespace": "together-toad",
                "resource_version": "183354",
                "uid": "de38dead-b0a8-4ed1-aca5-a067e1ee0abf"
              }
            ],
            "spec": [
              {
                "min_ready_seconds": 0,
                "paused": false,
                "progress_deadline_seconds": 600,
                "replicas": "1",
                "revision_history_limit": 10,
                "selector": [
                  {
                    "match_expressions": [],
                    "match_labels": {
                      "app": "nginx2-330test"
                    }
                  }
                ],
                "strategy": [
                  {
                    "rolling_update": [
                      {
                        "max_surge": "25%",
                        "max_unavailable": "25%"
                      }
                    ],
                    "type": "RollingUpdate"
                  }
                ],
                "template": [
                  {
                    "metadata": [
                      {
                        "annotations": null,
                        "generate_name": "",
                        "generation": 0,
                        "labels": {
                          "app": "nginx2-330test"
                        },
                        "name": "",
                        "namespace": "",
                        "resource_version": "",
                        "uid": ""
                      }
                    ],
                    "spec": [
                      {
                        "active_deadline_seconds": 0,
                        "affinity": [],
                        "automount_service_account_token": true,
                        "container": [
                          {
                            "args": [],
                            "command": [],
                            "env": [],
                            "env_from": [],
                            "image": "nginx",
                            "image_pull_policy": "IfNotPresent",
                            "lifecycle": [],
                            "liveness_probe": [],
                            "name": "nginx2-330test",
                            "port": [],
                            "readiness_probe": [],
                            "resources": [
                              {
                                "limits": {
                                  "cpu": "500m",
                                  "memory": "512Mi"
                                },
                                "requests": {
                                  "cpu": "500m",
                                  "memory": "512Mi"
                                }
                              }
                            ],
                            "security_context": [],
                            "startup_probe": [],
                            "stdin": false,
                            "stdin_once": false,
                            "termination_message_path": "/dev/termination-log",
                            "termination_message_policy": "File",
                            "tty": true,
                            "volume_mount": [],
                            "working_dir": ""
                          }
                        ],
                        "dns_config": [],
                        "dns_policy": "ClusterFirst",
                        "enable_service_links": true,
                        "host_aliases": [],
                        "host_ipc": false,
                        "host_network": false,
                        "host_pid": false,
                        "hostname": "",
                        "image_pull_secrets": [],
                        "init_container": [],
                        "node_name": "",
                        "node_selector": null,
                        "priority_class_name": "",
                        "readiness_gate": [],
                        "restart_policy": "Always",
                        "runtime_class_name": "",
                        "scheduler_name": "default-scheduler",
                        "security_context": [],
                        "service_account_name": "",
                        "share_process_namespace": false,
                        "subdomain": "",
                        "termination_grace_period_seconds": 30,
                        "toleration": [],
                        "topology_spread_constraint": [],
                        "volume": []
                      }
                    ]
                  }
                ]
              }
            ],
            "timeouts": null,
            "wait_for_rollout": true
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6NjAwMDAwMDAwMDAwLCJ1cGRhdGUiOjYwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMSJ9",
          "dependencies": [
            "module.nginx2.random_pet.name",
            "module.nginx2.random_pet.namespace"
          ]
        }
      ]
    },
    {
      "module": "module.nginx2.module.service",
      "mode": "managed",
      "type": "kubernetes_service",
      "name": "service",
      "provider": "provider[\"registry.terraform.io/hashicorp/kubernetes\"].connector--453750559925600260",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "id": "together-toad/nginx2-330test",
            "metadata": [
              {
                "annotations": null,
                "generate_name": "",
                "generation": 0,
                "labels": {
                  "app": "nginx2-330test"
                },
                "name": "nginx2-330test",
                "namespace": "together-toad",
                "resource_version": "183309",
                "uid": "644ad7de-abb8-4b4b-82f5-2477bac6ee07"
              }
            ],
            "spec": [
              {
                "allocate_load_balancer_node_ports": true,
                "cluster_ip": "10.96.121.28",
                "cluster_ips": [
                  "10.96.121.28"
                ],
                "external_ips": null,
                "external_name": "",
                "external_traffic_policy": "Cluster",
                "health_check_node_port": 0,
                "internal_traffic_policy": "Cluster",
                "ip_families": [
                  "IPv4"
                ],
                "ip_family_policy": "SingleStack",
                "load_balancer_class": "",
                "load_balancer_ip": "",
                "load_balancer_source_ranges": null,
                "port": [
                  {
                    "app_protocol": "",
                    "name": "port-80",
                    "node_port": 32505,
                    "port": 80,
                    "protocol": "TCP",
                    "target_port": "80"
                  }
                ],
                "publish_not_ready_addresses": false,
                "selector": {
                  "app": "nginx2-330test"
                },
                "session_affinity": "None",
                "session_affinity_config": [],
                "type": "NodePort"
              }
            ],
            "status": [
              {
                "load_balancer": [
                  {
                    "ingress": []
                  }
                ]
              }
            ],
            "timeouts": null,
            "wait_for_load_balancer": true
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDB9LCJzY2hlbWFfdmVyc2lvbiI6IjEifQ==",
          "dependencies": [
            "module.nginx2.random_pet.name",
            "module.nginx2.random_pet.namespace"
          ]
        }
      ]
    }
  ],
  "check_results": null
}