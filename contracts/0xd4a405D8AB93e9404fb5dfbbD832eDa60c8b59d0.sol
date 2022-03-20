contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 2
    return code.data[33 len 252]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 version;

function version() payable {
    return version
}

function _fallback() payable {
    if msg.value > 0:
        stor1 += msg.value
    emit Deposit(address(msg.sender), msg.value);
}

function Withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == stor0
    if stor1 >= arg2:
        call arg1 with:
           value arg2 wei
             gas 0 wei
    else:
        call arg1 with:
           value stor1 wei
             gas 0 wei
}



}
