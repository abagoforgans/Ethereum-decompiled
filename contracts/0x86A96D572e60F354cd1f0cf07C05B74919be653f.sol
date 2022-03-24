contract main {


// =======================  Init code  ======================


uint256 stor0; offset 8
uint256 stor0;

function _fallback() payable {
    require msg.value <= 0
    if block.number < 256:
        if code.data[1654 len 32] >= block.number:
            uint256(stor0.field_0) = code.data[1654 len 32] < block.number or Mask(248, 8, uint256(stor0.field_0))
        else:
            uint256(stor0.field_0) = block.hash(code.data[1654 len 32]) == code.data[1686 len 32] or Mask(248, 8, uint256(stor0.field_0))
    else:
        if code.data[1654 len 32] <= block.number - 256:
            uint256(stor0.field_0) = code.data[1654 len 32] > block.number - 256 or Mask(248, 8, uint256(stor0.field_0))
        else:
            if code.data[1654 len 32] >= block.number:
                uint256(stor0.field_0) = code.data[1654 len 32] < block.number or Mask(248, 8, uint256(stor0.field_0))
            else:
                uint256(stor0.field_0) = block.hash(code.data[1654 len 32]) == code.data[1686 len 32] or Mask(248, 8, uint256(stor0.field_0))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    return code.data[184 len 1470]
}



// =====================  Runtime code  =====================


uint8 isRightBranch;
address owner; offset 8

function isRightBranch() payable {
    return bool(isRightBranch)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert 
}

function send(address arg1) payable {
    require msg.sender == owner
    require isRightBranch
    call arg1 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}

function sub_24d2018c(?) payable {
    require msg.sender == owner
    if isRightBranch:
        call arg1.balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg2), ext_call.return_data[0]
}

function sub_dcb9c6f8(?) payable {
    require msg.sender == owner
    if not isRightBranch:
        call arg1.balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg2), ext_call.return_data[0]
}



}
