contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 1023
    stor4 = 'dummywallet'
    stor2 = 0x3589d05a1ec4af9f65b0e5554e645707775ee43c
    return code.data[159 len 1199]
}



// =====================  Runtime code  =====================


address owner;
address selfAddress;
uint256 stor1;
address sub_97f5ab7dAddress;
uint256 stor3;
uint32 stor4;
uint256 stor4;

function self() payable {
    return address(selfAddress)
}

function owner() payable {
    return owner
}

function sub_97f5ab7d(?) payable {
    return sub_97f5ab7dAddress
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_7305f349(?) payable {
    stor3 = arg1
}

function sub_37f9c4ea(?) payable {
    uint256(stor4) = arg1
}

function sub_c9f1671d(?) payable {
    if msg.sender == owner:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_c94e8ac4(?) payable {
    if arg1 >= stor3:
        call sub_97f5ab7dAddress.changeDomain(uint256 rg1, uint256 rg2, uint256 rg3, address rg4) with:
           value msg.value wei
             gas gas_remaining - 34050 wei
            args 0, uint32(stor4), 10 * 10^6, 10^16, 0
    else:
        call address(selfAddress).0xc94e8ac4 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
            args (arg1 + 1)
    require ext_call.success
}



}
