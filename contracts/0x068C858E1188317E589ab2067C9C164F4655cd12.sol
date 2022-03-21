contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 1023
    stor5 = 1500
    stor4 = 'foowallet'
    stor2 = 0x3589d05a1ec4af9f65b0e5554e645707775ee43c
    return code.data[169 len 1577]
}



// =====================  Runtime code  =====================


address owner;
address selfAddress;
uint256 stor1;
address sub_97f5ab7dAddress;
uint256 sub_be4df7d6;
uint32 stor4;
uint256 domain;
uint256 sub_11044131;

function sub_11044131(?) payable {
    return sub_11044131
}

function self() payable {
    return address(selfAddress)
}

function owner() payable {
    return owner
}

function sub_97f5ab7d(?) payable {
    return sub_97f5ab7dAddress
}

function sub_be4df7d6(?) payable {
    return sub_be4df7d6
}

function domain() payable {
    return uint256(domain)
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_7305f349(?) payable {
    sub_be4df7d6 = arg1
}

function sub_c9f26fc6(?) payable {
    sub_11044131 = arg1
}

function sub_37f9c4ea(?) payable {
    uint256(domain) = arg1
}

function sub_c9f1671d(?) payable {
    if msg.sender == owner:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_c94e8ac4(?) payable {
    if arg1 >= sub_be4df7d6:
        call sub_97f5ab7dAddress.changeDomain(uint256 rg1, uint256 rg2, uint256 rg3, address rg4) with:
           value msg.value wei
             gas gas_remaining - 34050 wei
            args 0, uint32(stor4), 10 * 10^6, 10^16, 0
    else:
        if arg1 <= 1:
            call address(selfAddress).0xc94e8ac4 with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
                args (arg1 + 1)
        else:
            call address(selfAddress).0xc94e8ac4 with:
               value msg.value wei
                 gas gas_remaining - sub_11044131 wei
                args (arg1 + 1)
    require ext_call.success
}



}
