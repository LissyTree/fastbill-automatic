module Fastbill
  module Automatic
    module Services
      module Delete
        module ClassMethods

          def delete(id)
            id_attribute = "#{self.name.split("::").last.downcase}_id".to_sym
            attributes = {}
            attributes[id_attribute] = id
            response = Fastbill::Automatic.request("#{self.name.split("::").last.downcase}.delete", attributes)
            true
          end
        end

        def self.included(base)
          base.extend(ClassMethods)
        end
      end
    end
  end
end