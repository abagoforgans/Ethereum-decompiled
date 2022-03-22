contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 855]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address tokenAddress;
uint256 stor2;

function owner() payable {
    return address(owner)
}

function tokenAddress() payable {
    return address(tokenAddress)
}

function kill() payable {
    require address(owner) == msg.sender
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setToken(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function send(address arg1, address arg2, uint256 arg3) payable {
    require msg.sender == address(tokenAddress)
    call address(tokenAddress).getBalances(address rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_call.return_data[32] + arg3 >= ext_call.return_data[32]
    call address(tokenAddress).0x9901f70 with:
         gas gas_remaining - 25050 wei
        args address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    call address(tokenAddress).0x9901f70 with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg3 + ext_call.return_data[32]
    if eth.balance(arg1) < 5 * 10^15:
        call arg1 with:
           value -eth.balance(arg1) + 5 * 10^15 wei
             gas 0 wei
    if eth.balance(arg2) < 5 * 10^15:
        call arg2 with:
           value -eth.balance(arg2) + 5 * 10^15 wei
             gas 0 wei
}



}
