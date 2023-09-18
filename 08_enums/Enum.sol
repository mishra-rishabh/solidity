// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.15 <= 0.8.20;

contract Enum {
    // creating an enum
    enum Status { Pending, Shipped, Accepted, Rejected, Cancelled }

    // default value of enum is the first element listed in the definition above, here "Pending"
    Status status;
    // or below one. Both are same
    // Status public status = Status.Pending;

    function getStatus() public view returns (Status) {
        return status;
    }

    // update status by passing uint into input
    /* function setStatus(string memory _status) public {
        // this will consume more gas as "Pending" has 6 chars
        require(_status == "Pending", "error occurred!");
        
        status = _status;
    } */

    function setStatus(Status _status) public {
        // this will consume more gas as "Pending" has 6 chars
        require(_status != Status.Cancelled, "error occurred!");
        
        status = _status;
    }

    // setting enum value to some specific value
    function cancelShipping() public {
        status = Status.Cancelled;
    }

    // reset: by using delete keyword we can reset the enum to its first value i.e., 0
    function resetStatus() public {
        delete status;
    }
}