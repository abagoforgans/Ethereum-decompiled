contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address creatorAddress;
array of uint256 productName;
array of uint256 sub_967d37eb;
array of uint256 sub_c17c52b7;
array of uint256 sub_c0c0afe0;
array of uint256 sub_cc79c788;
array of uint256 amount;
array of uint256 source;
array of uint256 sub_2c750106;
array of uint256 sub_443abdd4;
array of uint256 sub_561ae4ec;
array of uint256 sub_4f220ef0;
array of uint256 createTime;
array of uint256 sub_bb4324d7;

function creator() payable {
    return creatorAddress
}

function sub_2c750106(?) payable {
    return sub_2c750106[0 len sub_2c750106.length]
}

function sub_443abdd4(?) payable {
    return sub_443abdd4[0 len sub_443abdd4.length]
}

function sub_4f220ef0(?) payable {
    return sub_4f220ef0[0 len sub_4f220ef0.length]
}

function sub_561ae4ec(?) payable {
    return sub_561ae4ec[0 len sub_561ae4ec.length]
}

function createTime() payable {
    return createTime[0 len createTime.length]
}

function source() payable {
    return source[0 len source.length]
}

function productName() payable {
    return productName[0 len productName.length]
}

function owner() payable {
    return address(owner)
}

function sub_967d37eb(?) payable {
    return sub_967d37eb[0 len sub_967d37eb.length]
}

function amount() payable {
    return amount[0 len amount.length]
}

function sub_bb4324d7(?) payable {
    return sub_bb4324d7[0 len sub_bb4324d7.length]
}

function sub_c0c0afe0(?) payable {
    return sub_c0c0afe0[0 len sub_c0c0afe0.length]
}

function sub_c17c52b7(?) payable {
    return sub_c17c52b7[0 len sub_c17c52b7.length]
}

function sub_cc79c788(?) payable {
    return sub_cc79c788[0 len sub_cc79c788.length]
}

function kill() payable {
    require address(owner) == msg.sender
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function transferOwner(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    emit TransferOwner(address(owner), arg1);
}



}
