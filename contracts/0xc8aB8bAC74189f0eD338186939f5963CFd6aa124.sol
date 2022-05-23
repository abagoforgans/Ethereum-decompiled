contract main {




// =====================  Runtime code  =====================


#
#  - contribute(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#  - sub_91fd8349(?)
#
const sub_14cee1ce(?) = 3500

const sub_c75a3fd9(?) = 500000000 * 10^18

const CROWDSALE_MAX_ACES = 500000000 * 10^18

const TOTAL_SUPPLY_ACES = 1000000000 * 10^18


address owner;
uint256 sub_61a51392;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 contributors;
uint256 sub_76760991;
mapping of struct sub_c5e0534a;
uint256 sub_475efeaf;
address walletAddress;
uint8 stor9; offset 160
uint8 stor9; offset 168
uint128 stor9; offset 168
uint128 stor9; offset 160
address tokenAddress;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
array of struct sub_f0ce53ec;

function sub_1c100d62(?) {
    return bool(uint8(stor9.field_160))
}

function contributors(address arg1) {
    return contributors[arg1]
}

function sub_475efeaf(?) {
    return sub_475efeaf
}

function wallet() {
    return walletAddress
}

function sub_61a51392(?) {
    return sub_61a51392
}

function sub_76760991(?) {
    return sub_76760991
}

function owner() {
    return owner
}

function sub_950debd2(?) {
    return bool(uint8(stor9.field_168))
}

function sub_c5e0534a(?) {
    return sub_c5e0534a[arg1].field_0, bool(sub_c5e0534a[arg1].field_256)
}

function sub_f0ce53ec(?) {
    require arg1 < sub_f0ce53ec.length
    return sub_f0ce53ec[arg1].field_0, sub_f0ce53ec[arg1].field_256
}

function sub_f280fb1d(?) {
    return bool(stor2[arg1])
}

function token() {
    return tokenAddress
}

function agents(address arg1) {
    return bool(stor3[arg1])
}

function sub_741b1141(?) {
    return stor18, stor19
}

function ico() {
    return stor10, stor11, stor12, stor13
}

function presale() {
    return stor14, stor15, stor16, stor17
}

function _fallback() payable {
    revert with 0, 'contribute function only'
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_aee5e5a6(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    require arg1
    require bool(stor2[address(arg1)]) == 1
    stor2[address(arg1)] = 0
    require 1 <= sub_61a51392
    sub_61a51392--
}

function sub_45ff9b3b(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    require arg1
    require bool(stor2[address(arg1)]) != 1
    stor2[address(arg1)] = 1
    require sub_61a51392 + 1 >= sub_61a51392
    sub_61a51392++
}

function sub_ec60710d(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    if block.timestamp >= stor12 + 1:
        revert with 0, 'already released'
    require arg1 == 440164909
    require block.timestamp < arg3
    require arg3 < arg4
    if arg2 == 1:
        require arg4 < stor11
        stor15 = arg3
        stor16 = arg4
    if arg2 == 2:
        require arg3 > stor16
        stor11 = arg3
        stor12 = arg4
}

function sub_836be1c2(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    require not uint8(stor9.field_160)
    require not uint8(stor9.field_168)
    require block.timestamp > stor12
    require arg1 == 440164909
    require stor17 <= 500000000 * 10^18
    require stor13 <= -stor17 + 500000000 * 10^18
    sub_475efeaf = -stor17 + -stor13 + 500000000 * 10^18
    require sub_475efeaf <= 500000000000000000000000000 * 10^18
    Mask(88, 0, stor9.field_168) = 1
}

function sub_71dc22df(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    if block.timestamp >= stor12 + 1:
        revert with 0, 'already released'
    require arg1
    require arg2 <= sub_c5e0534a[address(arg1)].field_0
    require sub_c5e0534a[address(arg1)].field_0 - arg2 >= 0
    require arg2 <= sub_76760991
    require sub_76760991 - arg2 >= 0
    require arg2 <= sub_c5e0534a[address(arg1)].field_0
    sub_c5e0534a[address(arg1)].field_0 -= arg2
    require arg2 <= sub_76760991
    sub_76760991 -= arg2
}

function sub_563e03c3(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    require bool(uint8(stor9.field_160)) == 1
    require block.timestamp > stor16
    require arg1 == 440164909
    require stor17 <= stor19
    if stor19 - stor17 <= 0:
        sub_f0ce53ec.length++
        sub_f0ce53ec[sub_f0ce53ec.length].field_0 = 0
        sub_f0ce53ec[sub_f0ce53ec.length].field_256 = 0
    else:
        require stor17 <= stor19
        sub_f0ce53ec.length++
        sub_f0ce53ec[sub_f0ce53ec.length].field_0 = 0
        sub_f0ce53ec[sub_f0ce53ec.length].field_256 = stor19 - stor17
    Mask(96, 0, stor9.field_160) = 0
}

function sub_f013e322(?) {
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'agent required'
    if block.timestamp >= stor12 + 1:
        revert with 0, 'already released'
    require arg1
    require sub_c5e0534a[address(arg1)].field_0 + arg2 >= sub_c5e0534a[address(arg1)].field_0
    require sub_c5e0534a[address(arg1)].field_0 + arg2 <= 1000000000 * 10^18
    require sub_76760991 + arg2 >= sub_76760991
    require sub_76760991 + arg2 <= 500000000 * 10^18
    require sub_c5e0534a[address(arg1)].field_0 + arg2 >= sub_c5e0534a[address(arg1)].field_0
    sub_c5e0534a[address(arg1)].field_0 += arg2
    require sub_76760991 + arg2 >= sub_76760991
    sub_76760991 += arg2
}

function sub_cc2484f8(?) {
    require bool(uint8(stor9.field_168)) == 1
    require block.timestamp > stor12
    require sub_475efeaf > 0
    require sub_c5e0534a[address(msg.sender)].field_0 > 0
    require not sub_c5e0534a[address(msg.sender)].field_256
    sub_c5e0534a[address(msg.sender)].field_256 = 1
    require sub_76760991 + stor17 >= sub_76760991
    require stor13 >= 0
    if not sub_c5e0534a[address(msg.sender)].field_0:
        require sub_76760991 + stor17 + stor13
        if not sub_475efeaf:
            emit Airdrop(msg.sender, 0);
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require sub_475efeaf
            require sub_475efeaf * 0 / sub_76760991 + stor17 + stor13 / sub_475efeaf == 0 / sub_76760991 + stor17 + stor13
            emit Airdrop(msg.sender, sub_475efeaf * 0 / sub_76760991 + stor17 + stor13 / 100 * 10^18);
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, sub_475efeaf * 0 / sub_76760991 + stor17 + stor13 / 100 * 10^18
    else:
        require sub_c5e0534a[address(msg.sender)].field_0
        require 100 * 10^18 * sub_c5e0534a[address(msg.sender)].field_0 / sub_c5e0534a[address(msg.sender)].field_0 == 100 * 10^18
        require sub_76760991 + stor17 + stor13
        if not sub_475efeaf:
            emit Airdrop(msg.sender, 0);
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require sub_475efeaf
            require sub_475efeaf * 100 * 10^18 * sub_c5e0534a[address(msg.sender)].field_0 / sub_76760991 + stor17 + stor13 / sub_475efeaf == 100 * 10^18 * sub_c5e0534a[address(msg.sender)].field_0 / sub_76760991 + stor17 + stor13
            emit Airdrop(msg.sender, sub_475efeaf * 100 * 10^18 * sub_c5e0534a[address(msg.sender)].field_0 / sub_76760991 + stor17 + stor13 / 100 * 10^18);
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, sub_475efeaf * 100 * 10^18 * sub_c5e0534a[address(msg.sender)].field_0 / sub_76760991 + stor17 + stor13 / 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'mint failed'
}



}
