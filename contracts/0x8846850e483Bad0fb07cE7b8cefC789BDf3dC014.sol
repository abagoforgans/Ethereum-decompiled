contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3; offset 16

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 10^17
    require not msg.value
    stor1 = code.data[3237 len 20]
    stor3 = code.data[3269 len 20]
    return code.data[177 len 3048]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint16 offer;
uint16 quota; offset 176
uint16 count; offset 192
address sub_c48cb020Address; offset 16
uint256 sub_3fb32da6;
uint256 bonus;
mapping of struct offers;
mapping of uint8 stor7;
mapping of struct sub_ef8e2512;
mapping of struct sub_81d0e37b;

function count() {
    return count
}

function rewarded(address arg1) {
    return bool(stor7[arg1])
}

function sub_3fb32da6(?) {
    return sub_3fb32da6
}

function offers(address arg1) {
    return offers[arg1].field_0
}

function bonus() {
    return bonus
}

function sub_81d0e37b(?) {
    return sub_81d0e37b[arg1].field_0, sub_81d0e37b[arg1].field_16
}

function offer() {
    return offer
}

function sub_c48cb020(?) {
    return sub_c48cb020Address
}

function quota() {
    return quota
}

function sub_ef8e2512(?) {
    return bool(sub_ef8e2512[arg1][arg2].field_0), bool(sub_ef8e2512[arg1][arg2].field_8), bool(sub_ef8e2512[arg1][arg2].field_16)
}

function sub_d87a6351(?) {
    require stor0 == msg.sender
    emit 0xe538c189: eth.balance(this.address), stor1, sub_c48cb020Address, stor0
    selfdestruct(stor0)
}

function _fallback() {
    revert 
}

function sub_e9074335(?) {
    require stor0 == msg.sender
    require count >= quota
    sub_3fb32da6 = arg1
    require sub_81d0e37b[arg1].field_0
    bonus = arg2 * count * stor2 / sub_81d0e37b[arg1].field_0 / 100
    emit 0xf66987fc: sub_3fb32da6, arg2 << 248, sub_81d0e37b[arg1].field_0, arg2 * count * stor2 / sub_81d0e37b[arg1].field_0 / 100
}

function sub_b3777154(?) payable {
    require count < quota
    require msg.value == stor2
    require not sub_ef8e2512[arg1][address(msg.sender)].field_0
    sub_ef8e2512[arg1][address(msg.sender)].field_0 = 1
    offers[address(msg.sender)].field_0 = uint16(offer + offers[address(msg.sender)].field_0)
    emit 0x69680774: msg.sender, arg1, arg2
}

function reward() {
    require sub_ef8e2512[stor4][address(msg.sender)].field_16
    require not stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 1
    call msg.sender with:
       value bonus wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Reward(msg.sender);
        return 1
    stor7[address(msg.sender)] = 0
    return 0
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require sub_c48cb020Address == msg.sender
    require stor1 == arg1
    require 0 < arg4.length
    offer = Mask(16, 240, 'd' * mem[128 len 1]) >> 240
    require Mask(16, 240, 'd' * mem[128 len 1])
    quota = uint16(arg2 / Mask(16, 240, 'd' * mem[128 len 1]) >> 240)
    emit 0x180fa6cf: arg2 << 232, offer, arg1, arg3, stor1
}

function vote(bytes32 arg1, bool arg2) {
    require count < quota
    require sub_ef8e2512[arg1][address(msg.sender)].field_0
    require not sub_ef8e2512[arg1][address(msg.sender)].field_8
    sub_ef8e2512[arg1][address(msg.sender)].field_8 = 1
    if arg2:
        sub_ef8e2512[arg1][address(msg.sender)].field_16 = 1
        sub_81d0e37b[arg1].field_0 = uint16(sub_81d0e37b[arg1].field_0 + 1)
    sub_81d0e37b[arg1].field_16 = uint16(sub_81d0e37b[arg1].field_16 + 1)
    count = uint16(count + 1)
    emit 0xfcb0e8de: arg2, msg.sender, arg1
}

function repay() {
    require offers[address(msg.sender)].field_0
    offers[address(msg.sender)].field_0 = 0
    require ext_code.size(sub_c48cb020Address)
    call sub_c48cb020Address.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args stor1, msg.sender, offers[address(msg.sender)].field_0
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0x8146cf1f: msg.sender, offers[address(msg.sender)].field_0
        return 1
    offers[address(msg.sender)].field_0 = 0
    offers[address(msg.sender)].field_256 = 0
    return 0
}



}
