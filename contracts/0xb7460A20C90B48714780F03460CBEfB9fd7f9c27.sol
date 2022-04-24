contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 783]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct claims;

function claims(bytes32 arg1) {
    return claims[arg1].field_0, claims[arg1].field_256, claims[arg1].field_512, claims[arg1].field_768, claims[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_39965a75(?) {
    return not not claims[arg1].field_0
}

function sub_208f5966(?) {
    require msg.sender == stor0
    require not claims[arg1].field_0
    emit 0xa842dc80: arg1
    claims[arg1].field_0 = arg1
    claims[arg1].field_256 = arg2
    claims[arg1].field_512 = arg3
    claims[arg1].field_768 = block.timestamp
    claims[arg1].field_1024 = arg4
}



}
