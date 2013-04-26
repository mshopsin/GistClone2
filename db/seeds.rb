ActiveRecord::Base.transaction do
  User.create!(user_name: "hal");
  User.create!(user_name: "cat");
  User.create!(user_name: "dogy");
  Gist.create!(title:"Say Cyber Again", user_id: 1);
  Gist.create!(title:"Spark Capital will now pay their own legal bills", user_id: 2);
  Gist.create!(title:"Marketing Software, For People Who Would Rather Be Building It", user_id: 3);
end
