contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    require msg.value <= 0
    if block.number < 256:
        if code.data[1065 len 32] >= block.number:
            stor0 = code.data[1065 len 32] < block.number or Mask(248, 8, stor0)
        else:
            stor0 = block.hash(code.data[1065 len 32]) == code.data[1097 len 32] or Mask(248, 8, stor0)
    else:
        if code.data[1065 len 32] <= block.number - 256:
            stor0 = code.data[1065 len 32] > block.number - 256 or Mask(248, 8, stor0)
        else:
            if code.data[1065 len 32] >= block.number:
                stor0 = code.data[1065 len 32] < block.number or Mask(248, 8, stor0)
            else:
                stor0 = block.hash(code.data[1065 len 32]) == code.data[1097 len 32] or Mask(248, 8, stor0)
    return code.data[141 len 924]
}



// =====================  Runtime code  =====================


uint8 isRightBranch;

function isRightBranch() payable {
    return bool(isRightBranch)
}

function _fallback() payable {
    revert 
}

function send(address arg1) payable {
    require isRightBranch
    call arg1 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}

function transfer(address arg1, address arg2, address arg3, uint256 arg4) payable {
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if isRightBranch:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg2), ext_call.return_data[0]
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg3), ext_call.return_data[0]
}



}
