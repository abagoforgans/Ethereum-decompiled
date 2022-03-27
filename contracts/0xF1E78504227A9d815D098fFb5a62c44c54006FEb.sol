contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 100
    stor1[address(this.address)] = 100
    return code.data[95 len 493]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 accountBalance;
uint256 supply;

function supply() {
    return supply
}

function owner() {
    return owner
}

function accountBalance(address arg1) {
    return accountBalance[arg1]
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require owner == msg.sender
    require accountBalance[address(this.address)] >= arg2
    require accountBalance[address(arg1)] + arg2 >= accountBalance[address(arg1)]
    accountBalance[address(this.address)] -= arg2
    accountBalance[arg1] += arg2
}



}
