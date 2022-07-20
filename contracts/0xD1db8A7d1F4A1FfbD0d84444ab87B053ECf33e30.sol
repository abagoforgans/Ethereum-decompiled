contract main {




// =====================  Runtime code  =====================


address owner;
address regulatorAddress;
address dividendAddress;

function dividend() payable {
    return dividendAddress
}

function owner() payable {
    return owner
}

function regulator() payable {
    return regulatorAddress
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ee9f5178(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    if dividendAddress == arg1:
        revert with 0, 'The address cannot be the same'
    dividendAddress = arg1
    emit ReplaceService(dividendAddress, dividendAddress);
}

function sub_2f82258c(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    if regulatorAddress == arg1:
        revert with 0, 'The address cannot be the same'
    regulatorAddress = arg1
    emit ReplaceService(regulatorAddress, regulatorAddress);
}



}
