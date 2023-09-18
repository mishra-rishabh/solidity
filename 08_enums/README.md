Enum: It is a custom datatype. Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums. By using enums we can save gas fees as well. Basically, in enums we store values of same category, like days in a week, colors, etc.

syntax: enum enum_name {value1, value2, etc}

It returns uint

enum Status { Pending, Shipped, Accepted, Rejected, Cancelled } <br/>
Pending: 0, Shipped: 1, Accepted: 2, Rejected: 3, Cancelled: 4

since it assigns a number to the values, it saves a gas cost

for example: require(status == "Pending", "some error") <br/>
here, "Pending" takes a space and cost us more gas fees. It is also possible that instead of "Pending" we have to use some large value and that will cost more gas and consume more memory

require(status == Status.Pending, "some error")<br/>
this will save gas cost, as it has been assigned a number, and number associated to pending is 0, only one char/digit. 

"delete" keyword will reset the enum value to its first value