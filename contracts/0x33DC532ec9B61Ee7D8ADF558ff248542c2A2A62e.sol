contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x3589d05a1ec4af9f65b0e5554e645707775ee43c
    stor2 = 0
    return code.data[72 len 317]
}



// =====================  Runtime code  =====================


address owner;
address sub_97f5ab7dAddress;
uint256 stor2;

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
    # nil
}

function deposit() payable {
    stor2 += msg.value
}

function register(uint256 arg1) payable {
    call sub_97f5ab7dAddress.changeDomain(uint256 rg1, uint256 rg2, uint256 rg3, address rg4) with:
         gas gas_remaining - 25050 wei
        args arg1, 10 * 10^6, 10^16, 0
    require ext_call.success
}



}
