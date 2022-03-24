contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = code.data[1162 len 32]
    return code.data[55 len 1107]
}



// =====================  Runtime code  =====================


array of uint256 flag;
uint8 success; offset 160
uint128 stor1; offset 160
address sub_d1ad17bfAddress;
uint256 stor1;

function success() payable {
    return bool(success)
}

function flag() payable {
    return flag[0 len flag.length]
}

function sub_d1ad17bf(?) payable {
    return sub_d1ad17bfAddress
}

function destruct() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_3a44b09a(?) payable {
    uint256(stor1.field_0) = arg1 or Mask(96, 160, uint256(stor1.field_0))
}

function sub_7765c98b(?) payable {
    call sub_d1ad17bfAddress.0x159938b8 with:
         gas gas_remaining - 25050 wei
        args 0x62548c7b00000000000000000000000000000000000000000000000000000000, arg1 + block.number
    Mask(96, 0, stor1.field_160) = Mask(96, 0, ext_call.success)
    return bool(ext_call.success)
}

function setFlag(bool arg1) payable {
    if arg1 != 1:
        flag.length = 0x43616e6172792064656164000000000000000000000000000000000000000016
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (flag.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        flag.length = 0x43616e61727920616c6976650000000000000000000000000000000000000018
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (flag.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
