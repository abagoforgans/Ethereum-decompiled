contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 898]




// =====================  Runtime code  =====================


mapping of uint256 addresses;
mapping of address sub_f3730653;
mapping of uint256 payments;

function sub_03679666(?) payable {
    return address(sub_f3730653[arg1])
}

function addresses(address arg1) payable {
    return addresses[arg1]
}

function getPhoneByAddress(address arg1) payable {
    return addresses[address(arg1)]
}

function payments(address arg1) payable {
    return payments[arg1]
}

function sub_f3730653(?) payable {
    return address(sub_f3730653[arg1])
}

function _fallback() payable {
    payments[address(msg.sender)] = msg.value / 10^17
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    addresses[address(arg1)] = arg2
    uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
    payments[address(arg1)] = 0
}



}
