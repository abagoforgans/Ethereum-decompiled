contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of uint256 stor3;
array of struct stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.value
    if 0 == stor3[address(msg.sender)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor4.length < stor4.length
        stor4[stor4.length].field_0 = stor4[stor4.length].field_160
    return code.data[202 len 681]
}



// =====================  Runtime code  =====================


address richestAddress;
uint256 stor0;
uint256 mostSent;
mapping of uint256 stor2;
mapping of uint256 memberId;
array of address members;

function richest() {
    return address(richestAddress)
}

function memberId(address arg1) {
    return memberId[arg1]
}

function members(uint256 arg1) {
    require arg1 < members.length
    return address(members[arg1])
}

function mostSent() {
    return mostSent
}

function _fallback() payable {
  stop
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

function sub_029d010d(?) {
    if 0 == memberId[address(msg.sender)]:
        members.length++
        if not members.length <= members.length + 1:
            idx = members.length + 1
            while members.length > idx:
                address(members[idx]) = 0
                idx = idx + 1
                continue 
        require members.length < members.length
        uint256(members[members.length]) = msg.sender or Mask(96, 160, uint256(members[members.length]))
}



}
