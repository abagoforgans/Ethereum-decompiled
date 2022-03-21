contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0
    return code.data[74 len 1308]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_fc0d92bd;
uint256 sub_422f963c;
mapping of uint256 addresses;
mapping of address sub_f3730653;
mapping of uint256 payments;

function sub_03679666(?) payable {
    return address(sub_f3730653[arg1])
}

function sub_422f963c(?) payable {
    return sub_422f963c
}

function addresses(address arg1) payable {
    return addresses[arg1]
}

function owner() payable {
    return owner
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

function sub_fa6af355(?) payable {
    return sub_fc0d92bd
}

function sub_fc0d92bd(?) payable {
    return sub_fc0d92bd
}

function _fallback() payable {
    payments[address(msg.sender)] = msg.value / 10^17
    sub_422f963c++
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    if msg.sender == owner:
        addresses[address(arg1)] = arg2
        uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
        payments[address(arg1)] = 0
        sub_fc0d92bd++
}



}
