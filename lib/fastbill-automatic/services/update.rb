module Fastbill
  module Automatic
    module Services
      module Update
        module ClassMethods

          def update_attributes(id, attributes)
            id_attribute = "#{self.class.name.split("::").last.downcase}_id".to_sym
            attributes[id_attribute] = id
            response = Fastbill::Automatic.request("#{self.name.split("::").last.downcase}.update", attributes)
            true
          end
        end

        def self.included(base)
          base.extend(ClassMethods)
        end

        def update_attributes(attributes)
          id_attribute = "#{self.class.name.split("::").last.downcase}_id".to_sym
          attributes[id_attribute] = self.send(id_attribute)
          response = Fastbill::Automatic.request("#{self.class.name.split("::").last.downcase}.update", attributes)
          true
        end
      end
    end
  end
end
