contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 343]
}



// =====================  Runtime code  =====================


address stor0;

function DestroyContract() {
    if stor0 != msg.sender:
        return 0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_537f2cf8(?) payable {
    if stor0 != msg.sender:
        return 0
    call 0x7c9d3507a77c8a732ee396ba8036be05891e3646 with:
       value 5000 wei
         gas 0 wei
    require ext_call.success
    return 1
}



}
