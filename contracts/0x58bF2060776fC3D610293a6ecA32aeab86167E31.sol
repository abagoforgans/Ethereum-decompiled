contract main {




// =====================  Runtime code  =====================


const tokenDecimals = 18

const sub_5eb00876(?) = 0x56cd3ee680751d173743db943e84cfec5d5e17c5


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function enableTokenTransferability() payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function disableTokenTransferability() payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
