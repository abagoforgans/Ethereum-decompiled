contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint16 stor7;
address stor7; offset 16
uint256 stor7; offset 16

function _fallback() {
    stor1 = code.data[2335 len 20]
    stor0 = msg.sender
    uint16(stor7.field_0) = 0
    Mask(240, 0, stor7.field_16) = 0
    address(stor7.field_16) = code.data[2367 len 20]
    return code.data[139 len 2184]
}



// =====================  Runtime code  =====================


const STAGE_TWO_TIME_END = (168 * 24 * 3600)

const STAGE_ONE_TIME_END = (24 * 3600)

const STAGE_THREE_TIME_END = (672 * 24 * 3600)


address owner;
address beneficiaryAddress;
uint256 price;
uint256 deadline;
uint256 sub_9c3acf00;
uint256 tokenCount;
uint256 sub_8b165489;
uint8 stor7;
uint8 stor7; offset 8
uint16 stor7;
address stor7; offset 16

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_69c07894(?) {
    return bool(uint8(stor7.field_8))
}

function sub_8b165489(?) {
    return sub_8b165489
}

function owner() {
    return owner
}

function sub_9c3acf00(?) {
    return sub_9c3acf00
}

function tokenCount() {
    return tokenCount
}

function price() {
    return price
}

function isGoalReached() {
    return bool(uint8(stor7.field_0))
}

function balanceOf(address arg1) {
    require ext_code.size(address(stor7.field_16))
    call address(stor7.field_16).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function finalyze() {
    require owner == msg.sender
    require ext_code.size(address(stor7.field_16))
    call address(stor7.field_16).0x9bae5782 with:
         gas gas_remaining - 710 wei
        args sub_8b165489
    require ext_call.success
    uint8(stor7.field_8) = 1
}

function sub_b5695e8e(?) {
    require arg3 <= arg4
    deadline = arg2
    sub_8b165489 = 0
    sub_9c3acf00 = 100 * arg3
    tokenCount = 100 * arg4
    uint16(stor7.field_0) = 0
    require ext_code.size(address(stor7.field_16))
    call address(stor7.field_16).0xe1a44749 with:
         gas gas_remaining - 710 wei
        args (100 * arg4)
    require ext_call.success
    price = 10^18
    price = 10^16
    require arg1
    price = 10^16 / arg1
}

function bounty(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor7.field_8)
    require sub_8b165489 < sub_9c3acf00
    require arg2 + sub_8b165489 <= sub_9c3acf00
    sub_8b165489 += arg2
    require ext_code.size(address(stor7.field_16))
    call address(stor7.field_16).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if sub_8b165489 == sub_9c3acf00:
        uint8(stor7.field_0) = 1
        emit GoalReached(owner, sub_9c3acf00);
}

function _fallback() payable {
    require price
    require not uint8(stor7.field_8)
    require sub_8b165489 + (msg.value / price) < sub_9c3acf00
    sub_8b165489 += msg.value / price
    require ext_code.size(address(stor7.field_16))
    call address(stor7.field_16).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if sub_8b165489 == sub_9c3acf00:
        uint8(stor7.field_0) = 1
        emit GoalReached(owner, sub_9c3acf00);
}



}
