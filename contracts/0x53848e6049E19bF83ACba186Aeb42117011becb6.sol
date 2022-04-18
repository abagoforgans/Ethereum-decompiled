contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[34 len 507]
}



// =====================  Runtime code  =====================


uint256 idx;
mapping of address affiliate;
mapping of uint256 affiliateCodes;

function affiliateCodes(address arg1) {
    return affiliateCodes[arg1]
}

function affiliateAddresses(uint256 arg1) {
    return affiliate[arg1]
}

function idx() {
    return idx
}

function addAffiliate() {
    if not affiliateCodes[address(msg.sender)]:
        idx++
        affiliate[stor0 + 1] = msg.sender
        affiliateCodes[address(msg.sender)] = idx
}

function _fallback() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if not affiliateCodes[address(msg.sender)]:
        idx++
        affiliate[stor0 + 1] = msg.sender
        affiliateCodes[address(msg.sender)] = idx
}



}
