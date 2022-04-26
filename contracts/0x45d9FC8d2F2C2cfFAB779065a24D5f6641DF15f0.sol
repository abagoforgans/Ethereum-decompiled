contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0xbc61561102d43af2450c4f37a372d36878ce151f
    stor2 = 10^16
    require not msg.value
    return code.data[102 len 501]
}



// =====================  Runtime code  =====================


address sub_9c0eff72Address;
address stor1;
uint32 stor2; offset 224
uint256 stor2;
uint256 stor2;

function sub_9c0eff72(?) {
    return sub_9c0eff72Address
}

function sub_c5563720(?) {
    selfdestruct(sub_9c0eff72Address)
}

function Set(uint256 arg1) {
    uint256(stor2.field_0) = arg1
}

function _fallback() payable {
    require msg.value >= uint256(stor2.field_0)
}

function sub_e29940b9(?) {
    call sub_9c0eff72Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function play() payable {
    call stor1 with:
       funct uint32(stor2.field_224)
         gas gas_remaining - 25710 wei
        args Mask(224, 0, stor2.field_0)
    require ext_call.success
}



}
