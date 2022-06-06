contract main {




// =====================  Runtime code  =====================


mapping of address sub_23a99bb8;
mapping of address sub_dbb8749b;
mapping of uint8 stor2;
uint256 sub_4dda1557;
uint256 sub_b8e63875;
uint256 weiRaised;
uint256 weiWithdrawn;
mapping of uint256 stor7;
mapping of uint256 stor8;

function weiWithdrawn() {
    return weiWithdrawn
}

function sub_23a99bb8(?) {
    return sub_23a99bb8[arg1]
}

function weiRaised() {
    return weiRaised
}

function sub_4dda1557(?) {
    return sub_4dda1557
}

function sub_b8e63875(?) {
    return sub_b8e63875
}

function approved(address arg1) {
    return bool(stor2[arg1])
}

function sub_dbb8749b(?) {
    return sub_dbb8749b[arg1]
}

function capReached() {
    return weiRaised >= sub_4dda1557
}

function sub_96a690bd(?) {
    require msg.sender == sub_23a99bb8[arg1 << 248]
    sub_dbb8749b[arg1 << 248] = arg2
}

function addToApprovedList(address arg1) {
    require msg.sender == sub_23a99bb8[1]
    emit 0x7adbbc55: arg1
    stor2[address(arg1)] = 1
}

function removeFromApprovedList(address arg1) {
    require msg.sender == sub_23a99bb8[1]
    require stor2[address(arg1)]
    emit 0x4953bb40: arg1
    stor2[address(arg1)] = 0
}

function sub_c2173c6c(?) {
    require msg.sender == sub_dbb8749b[arg1 << 248]
    emit 0x8d0b895d: arg1, sub_23a99bb8[arg1 << 248], sub_dbb8749b[arg1 << 248]
    sub_23a99bb8[arg1 << 248] = sub_dbb8749b[arg1 << 248]
    sub_dbb8749b[arg1 << 248] = 0
}

function maximumContribution() {
    require stor8[address(msg.sender)] <= sub_b8e63875
    require weiRaised <= sub_4dda1557
    if sub_4dda1557 - weiRaised < sub_b8e63875 - stor8[address(msg.sender)]:
        return (sub_4dda1557 - weiRaised)
    return (sub_b8e63875 - stor8[address(msg.sender)])
}

function withdrawExcess() {
    require stor2[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    call msg.sender with:
       value stor7[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_18c97f88(?) {
    require msg.sender == sub_23a99bb8[1]
    idx = 0
    while idx < ('cd', 4).length:
        require msg.sender == sub_23a99bb8[1]
        emit 0x7adbbc55: address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_0b008fd0(?) {
    require msg.sender == sub_23a99bb8
    require weiWithdrawn <= weiRaised
    if arg1 > weiRaised - weiWithdrawn:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount is over the withdrawable limit'
    require weiWithdrawn + arg1 >= weiWithdrawn
    weiWithdrawn += arg1
    emit 0x24f1e3d8: msg.sender, arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require stor8[address(msg.sender)] <= sub_b8e63875
    require weiRaised <= sub_4dda1557
    if sub_4dda1557 - weiRaised < sub_b8e63875 - stor8[address(msg.sender)]:
        if sub_4dda1557 - weiRaised >= msg.value:
            require msg.value <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            emit 0xd51536b6: msg.sender, msg.value, stor8[address(msg.sender)]
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
        else:
            require sub_4dda1557 - weiRaised <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            if sub_4dda1557 - weiRaised <= 0:
                revert with 0, 'Total or individual cap hit'
            require stor8[address(msg.sender)] + sub_4dda1557 - weiRaised >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] = stor8[address(msg.sender)] + sub_4dda1557 - weiRaised
            require stor7[address(msg.sender)] + msg.value - sub_4dda1557 + weiRaised >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + msg.value - sub_4dda1557 + weiRaised
            emit 0xd51536b6: msg.sender, sub_4dda1557 - weiRaised, stor8[address(msg.sender)]
            require sub_4dda1557 >= weiRaised
            weiRaised = sub_4dda1557
    else:
        if sub_b8e63875 - stor8[address(msg.sender)] >= msg.value:
            require msg.value <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            emit 0xd51536b6: msg.sender, msg.value, stor8[address(msg.sender)]
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
        else:
            require sub_b8e63875 - stor8[address(msg.sender)] <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            if sub_b8e63875 - stor8[address(msg.sender)] <= 0:
                revert with 0, 'Total or individual cap hit'
            require sub_b8e63875 >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] = sub_b8e63875
            require stor7[address(msg.sender)] + msg.value - sub_b8e63875 + stor8[address(msg.sender)] >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + msg.value - sub_b8e63875 + stor8[address(msg.sender)]
            emit 0xd51536b6: msg.sender, sub_b8e63875 - stor8[address(msg.sender)], stor8[address(msg.sender)]
            require weiRaised + sub_b8e63875 - stor8[address(msg.sender)] >= weiRaised
            weiRaised = weiRaised + sub_b8e63875 - stor8[address(msg.sender)]
    if weiRaised >= sub_4dda1557:
        emit 0xfb45f81b 
}

function sub_93cd40b4(?) payable {
    require stor8[address(msg.sender)] <= sub_b8e63875
    require weiRaised <= sub_4dda1557
    if sub_4dda1557 - weiRaised < sub_b8e63875 - stor8[address(msg.sender)]:
        if sub_4dda1557 - weiRaised >= msg.value:
            require msg.value <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            emit 0xd51536b6: msg.sender, msg.value, stor8[address(msg.sender)]
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
        else:
            require sub_4dda1557 - weiRaised <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            if sub_4dda1557 - weiRaised <= 0:
                revert with 0, 'Total or individual cap hit'
            require stor8[address(msg.sender)] + sub_4dda1557 - weiRaised >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] = stor8[address(msg.sender)] + sub_4dda1557 - weiRaised
            require stor7[address(msg.sender)] + msg.value - sub_4dda1557 + weiRaised >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + msg.value - sub_4dda1557 + weiRaised
            emit 0xd51536b6: msg.sender, sub_4dda1557 - weiRaised, stor8[address(msg.sender)]
            require sub_4dda1557 >= weiRaised
            weiRaised = sub_4dda1557
    else:
        if sub_b8e63875 - stor8[address(msg.sender)] >= msg.value:
            require msg.value <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            require stor8[address(msg.sender)] + msg.value >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            emit 0xd51536b6: msg.sender, msg.value, stor8[address(msg.sender)]
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
        else:
            require sub_b8e63875 - stor8[address(msg.sender)] <= msg.value
            if msg.value <= 0:
                revert with 0, 'No ether sent'
            if sub_b8e63875 - stor8[address(msg.sender)] <= 0:
                revert with 0, 'Total or individual cap hit'
            require sub_b8e63875 >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] = sub_b8e63875
            require stor7[address(msg.sender)] + msg.value - sub_b8e63875 + stor8[address(msg.sender)] >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + msg.value - sub_b8e63875 + stor8[address(msg.sender)]
            emit 0xd51536b6: msg.sender, sub_b8e63875 - stor8[address(msg.sender)], stor8[address(msg.sender)]
            require weiRaised + sub_b8e63875 - stor8[address(msg.sender)] >= weiRaised
            weiRaised = weiRaised + sub_b8e63875 - stor8[address(msg.sender)]
    if weiRaised >= sub_4dda1557:
        emit 0xfb45f81b 
}



}
