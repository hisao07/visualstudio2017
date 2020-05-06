#
# Attribute Name:: visualstudio2017
# Recipe:: default
#
# Copyright 2018, SYF
#
# All rights reserved - Do Not Redistribute
#

default['visualstudio2017'] = {
  installPath: nil,
  edition: 'community',
  enterprise: {
    url: 'https://download.visualstudio.microsoft.com/download/pr/11669044/52257ee3e96d6e07313e41ad155b155a/vs_Enterprise.exe',
    checksum: '49c985297afde1a312cdf3d11b9c7521f93fb0300a448b6c0bd649082ff0c042',
    productKey: '',
  },
  professional: {
    url: 'https://download.visualstudio.microsoft.com/download/pr/11669031/14dd70405e8244481b35017b9a562edd/vs_Professional.exe',
    checksum: '26149739e129d3fc16af17868c79d8cb6cd13ba67386b79063c5a74207de7155',
    productKey: '',
  },
  community: {
    url: 'https://download.visualstudio.microsoft.com/download/pr/11669033/045b56eb413191d03850ecc425172a7d/vs_Community.exe',
    checksum: 'd7f6497ec8ae981b249d5cf259e7a61a70f71fd6929915819739f74f8fddee2d',
    productKey: nil,
  },
  timeout: 3600,
  includeRecommended: false,
  includeOptional: false,
  workloads: [],
  noweb: false,
}
