contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[696 len 32]
    stor1 = code.data[728 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[760 len 32] or Mask(96, 160, stor2)
    return code.data[87 len 609]
}



// =====================  Runtime code  =====================


address sub_2eb44792Address;
address owner;
address sub_75908d69Address;
mapping of uint8 stor3;

function sub_178a9bee(?) {
    return bool(stor3[arg1])
}

function sub_2eb44792(?) {
    return sub_2eb44792Address
}

function sub_75908d69(?) {
    return sub_75908d69Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function sub_4824b857(?) {
    require owner == msg.sender
    if not stor3[arg2 << 224]:
        stor3[arg2 << 224] = 1
        require ext_code.size(sub_2eb44792Address)
        call sub_2eb44792Address.0x23b872dd with:
             gas gas_remaining - 50 wei
            args sub_75908d69Address, address(arg3), arg4
        require ext_call.success
        require ext_call.return_data[0]
    emit 0xd22c3e1b: arg4, arg1
}



}
