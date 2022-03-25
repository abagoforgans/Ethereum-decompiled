contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.value
    return code.data[40 len 377]
}



// =====================  Runtime code  =====================


address richestAddress;
uint256 stor0;
uint256 mostSent;
mapping of uint256 stor2;

function richest() {
    return address(richestAddress)
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
    stor2[address(stor0)] += msg.value
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
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
