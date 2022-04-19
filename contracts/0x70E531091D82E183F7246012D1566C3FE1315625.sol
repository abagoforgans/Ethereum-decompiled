contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1143]
}



// =====================  Runtime code  =====================


address stor0;
array of address recipients;

function recipients(uint256 arg1) {
    require arg1 < recipients.length
    return address(recipients[arg1])
}

function _fallback() payable {
    revert
}

function sendToAll(uint256 arg1) payable {
    idx = 0
    while idx < recipients.length:
        mem[0] = 1
        call address(recipients[idx]) with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function addRecipient(address arg1) {
    recipients.length++
    if not recipients.length <= recipients.length + 1:
        idx = recipients.length + 1
        while recipients.length > idx:
            uint256(recipients[idx]) = 0
            idx = idx + 1
            continue 
    address(recipients[recipients.length]) = arg1
}

function setRecipients(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    recipients.length = arg1.length
    if not arg1.length:
        idx = 0
        while recipients.length > idx:
            address(recipients[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(recipients[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while recipients.length > idx:
            address(recipients[idx]) = 0
            idx = idx + 1
            continue 
}



}
