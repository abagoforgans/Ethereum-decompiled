contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[35 len 663]
}



// =====================  Runtime code  =====================


uint256 numberParticipants;
mapping of uint256 stor1;
array of address beneficiaryList;

function numberParticipants() {
    return numberParticipants
}

function beneficiaryList(uint256 arg1) {
    require arg1 < beneficiaryList.length
    return address(beneficiaryList[arg1])
}

function _fallback() payable {
    revert
}

function sub_a11b8e61(?) {
    if not stor1[address(msg.sender)]:
        beneficiaryList.length++
        if not beneficiaryList.length <= beneficiaryList.length + 1:
            idx = beneficiaryList.length + 1
            while beneficiaryList.length > idx:
                uint256(beneficiaryList[idx]) = 0
                idx = idx + 1
                continue 
        address(beneficiaryList[beneficiaryList.length]) = msg.sender
    numberParticipants++
}

function shareValue() payable {
    require beneficiaryList.length - 1
    s = 0
    idx = 0
    while idx < beneficiaryList.length:
        mem[0] = 2
        if address(beneficiaryList[idx]) != msg.sender:
            call address(beneficiaryList[idx]) with:
               value msg.value / beneficiaryList.length - 1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        s = address(beneficiaryList[idx])
        idx = idx + 1
        continue 
}



}
