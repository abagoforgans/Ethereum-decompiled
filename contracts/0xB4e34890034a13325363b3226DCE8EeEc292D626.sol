contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0
    return code.data[107 len 9794]
}



// =====================  Runtime code  =====================


#
#  - sub_655e812c(?)
#
address owner;
array of address sub_23c3b646;
uint256 sub_d53dae88;

function sub_23c3b646(?) {
    require arg1 < sub_23c3b646.length
    return address(sub_23c3b646[arg1])
}

function owner() {
    return owner
}

function sub_d53dae88(?) {
    return sub_d53dae88
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_08d4dc9c(?) {
    require msg.sender == owner
    sub_23c3b646.length++
    if not sub_23c3b646.length <= sub_23c3b646.length + 1:
        idx = sub_23c3b646.length + 1
        while sub_23c3b646.length > idx:
            uint256(sub_23c3b646[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_23c3b646[sub_23c3b646.length]) = arg1
    sub_d53dae88++
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0x6113fbea: address(arg1), Array(len=arg2.length, data=arg2[all]), ext_call.return_data[0]
}



}
