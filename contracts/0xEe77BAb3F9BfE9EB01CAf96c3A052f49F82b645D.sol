contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.value
    return code.data[91 len 774]
}



// =====================  Runtime code  =====================


address richestAddress;
uint256 mostSent;
mapping of uint256 stor2;

function richest() {
    return richestAddress
}

function mostSent() {
    return mostSent
}

function _fallback() payable {
    revert 
}

function becomeRichest() payable {
    if msg.value <= mostSent:
        return 0
    stor2[stor0] += msg.value
    richestAddress = msg.sender
    mostSent = msg.value
    return 1
}

function withdraw() {
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}



}
