contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[35 len 242]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    if stor0 == msg.sender:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), arg3
        require ext_call.success
        emit TokenTransfer(arg3, arg1, arg2);
}



}
