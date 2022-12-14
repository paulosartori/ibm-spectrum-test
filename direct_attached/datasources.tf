# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = "${var.tenancy_ocid}"
}


data "oci_core_vcn" "vcn" {
  vcn_id = var.use_existing_vcn ? var.vcn_id : oci_core_vcn.vcn[0].id
}

data "oci_core_subnet" "private" {
  subnet_id = var.use_existing_vcn ? var.private_subnet_id : local.private_subnet_id
}


