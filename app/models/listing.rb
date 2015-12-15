class Listing < ActiveRecord::Base
has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.jpg"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/,
:download,
:storage => :s3,
:s3_credentials => Proc.new{|a| a.instance.s3_credentials }
	def s3_credentials
		{:bucket => "fabian-railsauth-assets", :access_key_id => "AKIAIFT64EEKP2HMDKUQ", :secret_access_key => "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"}
	end
end
