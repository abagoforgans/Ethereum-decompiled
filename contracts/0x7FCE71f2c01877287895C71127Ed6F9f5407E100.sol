contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 894]




// =====================  Runtime code  =====================


mapping of struct addresses;
mapping of address sub_f3730653;

function sub_03679666(?) payable {
    return address(sub_f3730653[arg1])
}

function addresses(address arg1) payable {
    return addresses[arg1].field_0, addresses[arg1].field_256
}

function getPhoneByAddress(address arg1) payable {
    return addresses[address(arg1)].field_0
}

function sub_f3730653(?) payable {
    return address(sub_f3730653[arg1])
}

function _fallback() payable {
    addresses[address(msg.sender)].field_0 = 0
    addresses[address(msg.sender)].field_256 = msg.value / 10^17
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    addresses[address(arg1)].field_0 = arg2
    addresses[address(arg1)].field_256 = 0
    uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
}



}
