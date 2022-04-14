contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    require not msg.value
    return code.data[60 len 1904]
}



// =====================  Runtime code  =====================


#
#  - sub_e721c0a5(?)
#
array of struct stor0;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_902dd267(?) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, bool(stor0[arg1].field_512), stor0[arg1].field_768, stor0[arg1].field_1024
}

function withdraw(uint256 arg1) {
    if owner == msg.sender:
        require eth.balance(this.address) > arg1
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_7e1c1e4d(?) payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = (5 * stor0.length) + 5
        while 5 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            stor0[idx].field_768 = 0
            stor0[idx].field_1024 = 0
            idx = idx + 5
            continue 
    stor0[stor0.length].field_0 = arg1
    stor0[stor0.length].field_256 = arg2
    stor0[stor0.length].field_512 = uint8(arg3)
    stor0[stor0.length].field_768 = msg.value
    stor0[stor0.length].field_1024 = arg4
    return 1
}



}
