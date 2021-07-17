pragma solidity 0.8.0;

//Step-1: Create a Parent Vehicle Class having start, accelerate, stop and service function
contract ParentVehicle {
    
    function start () public returns (string memory){
        return "The Vehicle has just started";
    }
    
    function accelerate () public returns (string memory){
        return "The Vehicle has just accelerated";
    }
    
    function stop () public returns (string memory){
        return "The Vehicle has just stopped";
    }
    
    function service () public virtual returns (string memory){
        return "The Vehicle is being serviced";
    }
    
}

//Step-2 Child contracts for a different type of vehicles, that inherits Vehicle
contract Cars is ParentVehicle{
    function service() public override returns (string memory){
        return "The Car is being serviced";
    }
}

contract Truck is ParentVehicle{
    function service() public override returns (string memory){
        return "The Truck is being serviced";
    }
}

contract MotorCycle is ParentVehicle{
    function service() public override returns (string memory){
        return "The MotorCycle is being serviced";
    }
}


//Step 3 Create brand car/truck/bike which inherit relevant prototype class from Step 2.
contract AltoMehran is Cars {

}

contract Hino is Truck {

}

contract Yamaha is MotorCycle {

}

//Step-4: Create 3 Service Stations for each vehicle type, with the same function “vehicleService that takes the address of the deployed
//contracts of step 3, in the “Vehicle” variable to call the service
//function


contract AltoMehran is Cars {
function serviceStation1(address add) public returns (string memory) {
    AltoMehran am = AltoMehran(add);
    return am.service();
    }
}

contract Hino is Truck {
    function serviceStation2(address add) public returns (string memory) {
    Hino hi = Hino(add);
    return hi.service();
    }
}

contract Yamaha is MotorCycle {
    function serviceStation3(address add) public returns (string memory) {
    Yamaha yam = Yamaha(add);
    return yam.service();
    }
}