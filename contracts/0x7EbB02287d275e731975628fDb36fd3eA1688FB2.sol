contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of address sub_508c7cdc;
mapping of struct stor3;
array of uint256 sub_d79dbe3c;
array of uint256 sub_85a2af03;

function sub_508c7cdc(?) {
    require arg1 < sub_508c7cdc.length
    return sub_508c7cdc[arg1]
}

function sub_85a2af03(?) {
    require arg2 < sub_85a2af03[arg1]
    return sub_85a2af03[arg1][arg2]
}

function owner() {
    return owner
}

function sub_8de00add(?) {
    return sub_85a2af03[arg1]
}

function sub_af3eee65(?) {
    return sub_508c7cdc.length
}

function sub_b6aeab0f(?) {
    return sub_d79dbe3c.length
}

function newOwner() {
    return newOwner
}

function sub_d79dbe3c(?) {
    require arg1 < sub_d79dbe3c.length
    return sub_d79dbe3c[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require not owner
    owner = arg1
}

function isRegistered(address arg1) {
    return (stor3[address(arg1)].field_0 == 1)
}

function isManager(address arg1) {
    return (Mask(1, 1, stor3[address(arg1)].field_0) == 2)
}

function acceptOwnership() {
    require newOwner == msg.sender
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require Mask(1, 1, stor3[address(msg.sender)].field_0) == 2
    require owner != arg1
    newOwner = arg1
}

function sub_02a8ca18(?) {
    if owner != msg.sender:
        require Mask(1, 1, stor3[address(msg.sender)].field_0) == 2
    if not sub_85a2af03[arg1]:
        sub_d79dbe3c.length++
        sub_d79dbe3c[sub_d79dbe3c.length] = arg1
    sub_85a2af03[arg1]++
    sub_85a2af03[arg1][sub_85a2af03[arg1]] = arg2
}

function removeManager(address arg1) {
    if owner != msg.sender:
        require Mask(1, 1, stor3[address(msg.sender)].field_0) == 2
    require stor3[address(arg1)].field_0 == 1
    require Mask(1, 1, stor3[address(arg1)].field_0) == 2
    stor3[address(arg1)].field_0 = stor3[address(arg1)].field_0
    stor3[address(arg1)].field_1 = 0
    stor3[address(arg1)].field_2 = stor3[address(arg1)].field_2
}

function addManager(address arg1) {
    if owner != msg.sender:
        require Mask(1, 1, stor3[address(msg.sender)].field_0) == 2
    require Mask(1, 1, stor3[address(arg1)].field_0) != 2
    if stor3[address(arg1)].field_0 == 1:
        stor3[address(arg1)].field_0 = 2
    else:
        sub_508c7cdc.length++
        sub_508c7cdc[sub_508c7cdc.length] = arg1
        stor3[address(arg1)].field_0 = 2
        stor3[address(arg1)].field_0 = 1
}

function retrieveTokens(address arg1) {
    if owner != msg.sender:
        require Mask(1, 1, stor3[address(msg.sender)].field_0) == 2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_e10bacf2(?) {
    if owner != msg.sender:
        require Mask(1, 1, stor3[address(msg.sender)].field_0) == 2
    require ('cd', 36).length == ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[32] = 5
        if not sub_85a2af03[cd[((32 * idx) + cd[4] + 36)]]:
            sub_d79dbe3c.length++
            sub_d79dbe3c[sub_d79dbe3c.length] = cd[((32 * idx) + cd[4] + 36)]
        sub_85a2af03[cd[((32 * idx) + cd[4] + 36)]]++
        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 5)
        sub_85a2af03[cd[((32 * idx) + cd[4] + 36)]][sub_85a2af03[cd[((32 * idx) + cd[4] + 36)]]] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}



}
