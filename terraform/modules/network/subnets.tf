resource "aws_subnet" "workspacesubnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.workspace_subnets[count.index]}"
  availability_zone = "${element(var.azs,count.index)}"
  count = "${length(var.workspace_subnets)}"

  tags = "${merge(var.tags, map("Name", format("%s-workspace_subnet-%s", var.environment_name, element(var.azs, count.index)),
        "AWSResourceType", "Subnet"))}"
}