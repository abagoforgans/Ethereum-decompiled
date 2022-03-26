contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 435]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function shutdown() {
    require address(stor0) == msg.sender
    selfdestruct(address(stor0))
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require address(stor0) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function withdraw() {
    require address(stor0) == msg.sender
    call address(stor0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_3dc28cf1(?) payable {
    require arg3 + arg4 >= arg3
    require arg3 + arg4 >= arg4
    require arg3 + arg4 >= msg.value
    call arg1 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call arg2 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
}



}
