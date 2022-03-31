contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = code.data[2083 len 32]
    stor2 = 0
    return code.data[75 len 2008]
}



// =====================  Runtime code  =====================


address organizerAddress;
uint256 numTickets;
uint256 sub_a07a78c5;
mapping of address checkOwner;
array of struct sub_ffda36a6;

function getNumTickets() {
    return numTickets
}

function sub_32e42638(?) {
    return checkOwner[arg1]
}

function numTickets() {
    return numTickets
}

function organizer() {
    return organizerAddress
}

function sub_81273b05(?) {
    return sub_a07a78c5
}

function checkOwner(uint256 arg1) {
    return checkOwner[arg1]
}

function sub_a07a78c5(?) {
    return sub_a07a78c5
}

function sub_ffda36a6(?) {
    require arg2 < sub_ffda36a6[arg1].field_0
    return sub_ffda36a6[arg1][arg2].field_0, sub_ffda36a6[arg1][arg2].field_256
}

function destroy() {
    if organizerAddress != msg.sender:
    selfdestruct(organizerAddress)
}

function _fallback() payable {
    revert
}

function sub_16f16714(?) payable {
    require organizerAddress == msg.sender
    require sub_a07a78c5 <= numTickets
    checkOwner[stor2] = arg1
    sub_a07a78c5++
}

function sub_1497eff7(?) payable {
    require arg1 <= numTickets
    sub_ffda36a6[arg1].field_0++
    if not sub_ffda36a6[arg1].field_0 <= sub_ffda36a6[arg1].field_0 + 1:
        idx = 2 * sub_ffda36a6[arg1].field_0 + 1
        while 2 * sub_ffda36a6[arg1].field_0 > idx:
            sub_ffda36a6[arg1][idx].field_0 = 0
            sub_ffda36a6[arg1][idx].field_256 = 0
            idx = idx + 2
            continue 
    sub_ffda36a6[arg1][sub_ffda36a6[arg1].field_0].field_0 = msg.sender
    sub_ffda36a6[arg1][sub_ffda36a6[arg1].field_0].field_256 = checkOwner[arg1]
    emit 0xe6c5b7f0: msg.sender, checkOwner[arg1], arg1
}

function sub_dc6f0d17(?) payable {
    require arg1 <= numTickets
    require checkOwner[0] == msg.sender
    require 0 < sub_ffda36a6[arg1].field_0
    require 0 < sub_ffda36a6[arg1].field_0
    idx = 0
    while sub_ffda36a6[arg1][idx].field_0 != arg2:
        require idx + 1 < sub_ffda36a6[arg1].field_0
        mem[32] = 4
        require idx + 1 < sub_ffda36a6[arg1].field_0
        mem[0] = sha3(arg1, 4)
        idx = idx + 1
        continue 
    require None + 2 < sub_ffda36a6[arg1].field_0
    sub_ffda36a6[arg1][None + 2].field_0 = 0
    sub_ffda36a6[arg1][None + 2].field_256 = 0
    emit 0x5949bda8: msg.sender, address(arg2), arg1
}

function sub_135e33d0(?) payable {
    require arg1 <= numTickets
    require checkOwner[0] == msg.sender
    require 0 < sub_ffda36a6[arg1].field_0
    require 0 < sub_ffda36a6[arg1].field_0
    idx = 0
    while sub_ffda36a6[arg1][idx].field_0 != arg2:
        require idx + 1 < sub_ffda36a6[arg1].field_0
        mem[32] = 4
        require idx + 1 < sub_ffda36a6[arg1].field_0
        mem[0] = sha3(arg1, 4)
        idx = idx + 1
        continue 
    checkOwner[arg1] = arg2
    require None + 2 < sub_ffda36a6[arg1].field_0
    sub_ffda36a6[arg1][None + 2].field_0 = 0
    sub_ffda36a6[arg1][None + 2].field_256 = 0
    emit 0xd44fac1f: msg.sender, address(arg2), arg1
}



}
