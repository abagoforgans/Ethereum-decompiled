contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 98 * 10^18
    stor1 = 0
    stor2 = msg.sender
    return code.data[102 len 699]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 totalPayments;
address sub_b880b69aAddress;

function totalPayments() {
    return totalPayments
}

function sub_b880b69a(?) {
    return sub_b880b69aAddress
}

function sub_76913bec(?) payable {
    call sub_b880b69aAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalPayments += msg.value
    return Array(len=arg1.length, data=arg1[all]), msg.value, totalPayments, totalPayments >= stor0
}

function _fallback() payable {
    if totalPayments() == uint32(call.func_hash):
        require not msg.value
        return totalPayments
    if uint32(call.func_hash) != unknown_0x76913bec(?????):
        require unknown_0xb880b69a(?????) == uint32(call.func_hash)
        require not msg.value
        return sub_b880b69aAddress
    call sub_b880b69aAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalPayments += msg.value
    return Array(len=arg1.length, data=arg1[all]), msg.value, totalPayments, totalPayments >= stor0
}



}
