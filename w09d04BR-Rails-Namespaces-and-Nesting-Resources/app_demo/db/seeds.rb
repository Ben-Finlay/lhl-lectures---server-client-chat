puts "Purging Database..."
Cat.destroy_all
Owner.destroy_all
puts "Purge Complete!"


puts "Creating Owners..."
owner_one = Owner.create(name: 'Suzan');
owner_two = Owner.create(name: 'Philip');
owner_three = Owner.create(name: 'Rachel');
puts "Owner creation complete!"
puts "Creating Cats..."
Cat.create(name: 'Rosey', color: 'black', owner_id: owner_one.id);
Cat.create(name: 'Puma',   color: 'black', owner_id: owner_one.id);
Cat.create(name: 'Mr Buttons',  color: 'cinnamon', owner_id: owner_two.id);
Cat.create(name: 'Amber',   color: 'amber', owner_id: owner_three.id);
puts "Cat creation complete!"
