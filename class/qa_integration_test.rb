#coding: utf-8
require 'spec_helper'
require 'pp'


class QAIntegrationTest

  attr_accessor :ret_code, :ret_body

  def initialize
    self.ret_code = ''
    self.ret_body = ''
  end

  def get_json(purl)
    res = HTTParty.get(purl)   
    self.ret_code = res.code
    self.ret_body = res.body
    JSON.parse(res.body)
  end

  def post_json(purl, param)
    res = HTTParty.post(purl, param)   
    self.ret_code = res.code
    self.ret_body = res.body
    JSON.parse(res.body)
  end

  def delete_json(purl)
    res = HTTParty.delete(purl)   
    self.ret_code = res.code
    self.ret_body = res.body
    JSON.parse(res.body)
  end

  def patch_json(purl, param)
    res = HTTParty.patch(purl, body: param)     
    self.ret_code = res.code
    self.ret_body = res.body
    JSON.parse(res.body)
  end

  def res_code
    self.ret_code
  end

  def res_body
    self.ret_body
  end

end