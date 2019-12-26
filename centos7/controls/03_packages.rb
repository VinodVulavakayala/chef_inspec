control "cis-2-1-7" do
  impact 1.0
  title "2.1.7 Remove tftp (Scored)"
  desc "Trivial File Transfer Protocol (TFTP) is a simple file transfer protocol, typically used to automatically transfer configuration or boot files between machines. TFTP does not support authentication and can be easily hacked. The package tftp is a client program that allows for connections to a tftp server." 
  describe package('httpd') do
    it { should  be_installed }
  end
  describe service('httpd') do
    it { should_not be_enabled }
  end
end
