contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xd72ae741037e94020fbb434387bf0e292e2b951b
    stor1 = 0xf8ff4508a12c969029d1f053ebf0f435d393c1bc
    require not msg.value
    return code.data[198 len 1108]
}



// =====================  Runtime code  =====================


address mAddress;
address nAddress;

function n() {
    return nAddress
}

function m() {
    return mAddress
}

function _fallback() payable {
  stop
}

function sub_5fc1f825(?) {
    require msg.sender == nAddress
    nAddress = arg1
}

function sub_b277fc84(?) {
    require msg.sender == mAddress
    mAddress = arg1
}

function claimFunds() {
    call mAddress with:
       value 85 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call nAddress with:
       value 15 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
