variable "name" {
  type        = string
  description = "The name of  Cloud Composer the Environment"
}
variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
}
variable "region" {
  type        = string
  description = "Region where the Cloud Composer Environment is created."
}

variable "labels" {
  type        = map(string)
  description = "The resource labels (a map of key/value pairs) to be applied to the Cloud Composer."
}
variable "image_version" {
  type        = string
  description = "The version of the software running in the environment."
}

variable "timeouts" {
  type        = string
  description = "The resource provides the following Timeouts configuration to provision"
}

variable "kms_key_name" {
  type        = string
  description = "Customer-managed Encryption Key available through Google's Key Management Service."
}

variable "shared_vpc" {
  type        = bool
  description = "(optional) describe your variable"
  default     = true
}

# node_config
variable "environment_size" {
  type        = string
  description = " The environment size controls the performance parameters of the managed Cloud Composer infrastructure that includes the Airflow database."
}
variable "enable_ip_masq_agent" {
  type        = bool
  description = "enable the enable_ip_masq_agent"
}
variable "network" {
  type        = string
  description = "The VPC network to host the composer cluster."
}

variable "subnetwork" {
  type        = string
  description = "The subnetwork to host the composer cluster."
}

variable "use_ip_allocation_policy" {
  type        = bool
  description = "enable ip_allocation_policy"
  default     = true
}

variable "services_secondary_range_name" {
  type        = string
  description = "the secondary range name of the subnet to be used for services, this is needed if is_shared_vpc is enabled"
}

variable "cluster_secondary_range_name" {
  type        = string
  description = "the secondary range name of the subnet to be used for pods, this is needed if is_shared_vpc is enabled"
}


# software_config
variable "enable_software_config" {
  type        = bool
  description = "enable_software_config to run the block"
  default     = false
}
variable "airflow_config_overrides" {
  type        = map(string)
  description = "Airflow configuration properties to override. for example \"core-dags_are_paused_at_creation\". https://cloud.google.com/composer/docs/concepts/airflow-configurations#airflow_configuration_blacklists"
}
variable "pypi_packages" {
  type        = map(string)
  description = " Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. \"numpy\")."
}
variable "env_variables" {
  type        = map(string)
  description = "Variables of the airflow environment."
}


# private_environment_config
variable "use_private_environment" {
  description = "Enable private environment."
  type        = bool
  default     = true
}
variable "master_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for the master."
  type        = string
}
variable "cloud_sql_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for Cloud SQL."
  type        = string
}
variable "cloud_composer_network_ipv4_cidr_block" {
  description = "The CIDR block from which IP range in tenant project will be reserved."
  type        = string
}


# maintenance_window
variable "use_maintenance_window" {
  type        = bool
  description = "Enable maintenance_window"
  default     = false
}
variable "maintenance_start_time" {
  description = "Time window specified for daily or recurring maintenance operations in RFC3339 format"
  type        = string
}
variable "maintenance_end_time" {
  description = "Time window specified for recurring maintenance operations in RFC3339 format"
  type        = string
}
variable "maintenance_recurrence" {
  description = "Frequency of the recurring maintenance window in RFC5545 format."
  type        = string
}
variable "host_project" {
  type        = string
  description = "Shared vpc using network from host project"
}

variable "enable_scheduled_snapshot" {
  description = "Enable scheduled snapshots for the Composer environment"
  type        = bool
  default     = false
}

variable "scheduled_snapshots_enabled" {
  description = "Whether scheduled snapshots are enabled"
  type        = bool
  
}

variable "snapshot_location" {
  description = "The Cloud Storage bucket location for storing snapshots"
  type        = string
  
}

variable "snapshot_creation_schedule" {
  description = "Cron schedule for creating snapshots (e.g., '0 2 * * *' for daily at 2 AM)"
  type        = string
  
}

variable "snapshot_time_zone" {
  description = "Time zone for the snapshot schedule"
  type        = string
 
}