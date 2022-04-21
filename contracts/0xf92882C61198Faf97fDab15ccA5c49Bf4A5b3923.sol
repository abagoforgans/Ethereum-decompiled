contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[99 len 1302]
}



// =====================  Runtime code  =====================


uint256 totalBalance;
mapping of uint256 addressBalance;
address owner;

function addressBalance(address arg1) {
    return addressBalance[arg1]
}

function owner() {
    return owner
}

function totalBalance() {
    return totalBalance
}

function _fallback() payable {
    if owner != msg.sender:
        addressBalance[address(msg.sender)] += msg.value
        totalBalance += msg.value
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require addressBalance[address(arg1)] >= arg2
    require eth.balance(this.address) >= arg2
    addressBalance[address(arg1)] -= arg2
    totalBalance -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
