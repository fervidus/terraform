# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include terraform::install
class terraform::install {
  archive { '/tmp/terraform_0.12.26_linux_amd64.zip':
    ensure        => present,
    extract       => true,
    extract_path  => '/usr/bin',
    source        => 'https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip',
    checksum      => '607bc802b1c6c2a5e62cc48640f38aaa64bef1501b46f0ae4829feb51594b257',
    checksum_type => 'sha256',
    creates       => '/usr/bin/terraform',
    cleanup       => true,
    mode          => 'a+rx',
  }
}
