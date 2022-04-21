contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor1255;
uint256 storCCAE;

function _fallback() {
    stor1 = msg.sender
    stor1255 = 50
    storCCAE = 50
    return code.data[163 len 536]
}



// =====================  Runtime code  =====================


address stor1;

function DestroyContract() {
    if stor1 != msg.sender:
        return 0
    selfdestruct(stor1)
}

function _fallback() payable {
    emit 0x504f754d: msg.sender, msg.value
}

function sub_537f2cf8(?) payable {
    if stor1 != msg.sender:
        return 0
    call 0x7c9d3507a77c8a732ee396ba8036be05891e3646 with:
       value 5000 wei
         gas 0 wei
    require ext_call.success
    call 0xc064a245206f780500393af49692b9c47fefe139 with:
       value 5000 wei
         gas 0 wei
    return 1
}



}
