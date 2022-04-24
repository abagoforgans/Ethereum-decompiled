contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() {
    stor2 = code.data[2058 len 20]
    stor3 = code.data[2078 len 32]
    stor0 = msg.sender
    stor1 = code.data[2122 len 20]
    return code.data[130 len 1916]
}



// =====================  Runtime code  =====================


address owner;
address operatorAddress;
address sub_86d09099Address;
uint256 sub_78071793;
address sub_5fb9e660Address;
address pendingOwner;
address pendingOperatorAddress;

function operator() {
    return operatorAddress
}

function sub_5fb9e660(?) {
    return sub_5fb9e660Address
}

function sub_78071793(?) {
    return sub_78071793
}

function sub_86d09099(?) {
    return sub_86d09099Address
}

function owner() {
    return owner
}

function pendingOperator() {
    return pendingOperatorAddress
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
  stop
}

function sub_431f1769(?) {
    require owner == msg.sender
    pendingOwner = arg1
}

function sub_75cc7459(?) {
    require owner == msg.sender
    sub_5fb9e660Address = 0
}

function sub_54c1a567(?) {
    require owner == msg.sender
    pendingOperatorAddress = 0
}

function sub_7c892658(?) {
    require operatorAddress == msg.sender
    pendingOwner = 0
}

function sub_16ff980c(?) {
    require operatorAddress == msg.sender
    sub_5fb9e660Address = arg1
}

function sub_4bddb85b(?) {
    require operatorAddress == msg.sender
    pendingOperatorAddress = arg1
}

function sub_2302fc2c(?) {
    require operatorAddress == msg.sender
    if pendingOwner == arg1:
        owner = arg1
        pendingOwner = 0
}

function sub_5c156b60(?) {
    require owner == msg.sender
    if sub_5fb9e660Address == arg1:
        sub_86d09099Address = arg1
        sub_5fb9e660Address = 0
}

function sub_45d9931a(?) {
    require owner == msg.sender
    if pendingOperatorAddress == arg1:
        operatorAddress = arg1
        pendingOperatorAddress = 0
}

function collect(address arg1, uint256 arg2) {
    if not arg1:
        require eth.balance(this.address) >= arg2
        call sub_86d09099Address with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= arg2
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args sub_86d09099Address, arg2
    require ext_call.success
    emit Deposit(address(arg1), arg2);
}



}
