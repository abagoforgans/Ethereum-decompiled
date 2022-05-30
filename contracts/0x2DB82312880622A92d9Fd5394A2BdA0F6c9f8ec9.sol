contract main {




// =====================  Runtime code  =====================


#
#  - shareBonus()
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 sub_642f567a;
uint256 sub_b7ff15a6;
mapping of struct user;
mapping of address stor7;
mapping of uint8 stor8;
array of address stor9;
array of address stor10;
array of uint256 stor11;
array of address stor12;
uint256 sub_a57f657f;
uint256 sub_c82e2025;
uint256 sub_cc61bdcf;
uint256 sub_969b9fbc;
uint256 sub_412b4158;
uint256 sub_262ca62f;
uint256 sub_f19dbe7a;
uint256 sub_6902c9ab;

function sub_262ca62f(?) {
    return sub_262ca62f
}

function sub_412b4158(?) {
    return sub_412b4158
}

function sub_642f567a(?) {
    return sub_642f567a
}

function sub_6902c9ab(?) {
    return sub_6902c9ab
}

function getUser() {
    return user[address(msg.sender)].field_0, 
           user[address(msg.sender)].field_256,
           user[address(msg.sender)].field_512,
           user[address(msg.sender)].field_768,
           user[address(msg.sender)].field_1024,
           user[address(msg.sender)].field_1280,
           user[address(msg.sender)].field_1536,
           user[address(msg.sender)].field_1792,
           user[address(msg.sender)].field_2048
}

function owner() {
    return owner
}

function sub_969b9fbc(?) {
    return sub_969b9fbc
}

function isExit() {
    return bool(stor8[address(msg.sender)])
}

function sub_a57f657f(?) {
    return sub_a57f657f
}

function getUserCount() {
    return stor9.length
}

function sub_b7ff15a6(?) {
    return sub_b7ff15a6
}

function sub_c82e2025(?) {
    return sub_c82e2025
}

function sub_cc61bdcf(?) {
    return sub_cc61bdcf
}

function sub_f19dbe7a(?) {
    return sub_f19dbe7a
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getAllBonus() {
    if stor11.length <= 0:
        return 0
    require stor11.length - 1 < stor11.length
    return stor11[stor11.length]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBonusParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require msg.sender == owner
    sub_a57f657f = arg1
    sub_c82e2025 = arg2
    sub_cc61bdcf = arg3
    sub_969b9fbc = arg4
    sub_412b4158 = arg5
    sub_262ca62f = arg6
    sub_f19dbe7a = arg7
    sub_6902c9ab = arg8
}

function getLucy() {
    if stor12.length <= 0:
        return 0
    require stor12.length - 1 < stor12.length
    return address(stor12[stor12.length]), 
           address(stor12[stor12.length]),
           address(stor12[stor12.length]),
           uint256(stor12[stor12.length]),
           uint256(stor12[stor12.length]),
           uint256(stor12[stor12.length])
}

function safeWithdrawal() {
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wallet account is on the blacklist.'
    require user[address(msg.sender)].field_1536 <= user[address(msg.sender)].field_1280
    if user[address(msg.sender)].field_1280 - user[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'No cash withdrawals available.'
    require user[address(msg.sender)].field_1280 >= user[address(msg.sender)].field_1536
    user[address(msg.sender)].field_1536 = user[address(msg.sender)].field_1280
    call msg.sender with:
       value user[address(msg.sender)].field_1280 - user[address(msg.sender)].field_1536 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal((user[address(msg.sender)].field_1280 - user[address(msg.sender)].field_1536), msg.sender);
}

function sign(uint256 arg1) {
    if user[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The wallet account has been registered.'
    if not stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The invitation code does not exist.'
    require stor2 + 1 >= stor2
    stor2++
    user[address(msg.sender)].field_0 = msg.sender
    user[address(msg.sender)].field_256 = stor2
    user[address(msg.sender)].field_512 = arg1
    user[address(msg.sender)].field_768 = 0
    user[address(msg.sender)].field_1024 = 0
    user[address(msg.sender)].field_1280 = 0
    user[address(msg.sender)].field_1536 = 0
    user[address(msg.sender)].field_1792 = 0
    user[address(msg.sender)].field_2048 = 0
    stor7[stor2] = msg.sender
    stor9.length++
    stor9[stor9.length] = msg.sender
    emit Sign(arg1, msg.sender);
    if arg1 != stor1:
        require user[stor7[arg1]].field_2048 + 1 >= user[stor7[arg1]].field_2048
        user[stor7[arg1]].field_2048++
}

function safeExit() {
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wallet account is on the blacklist.'
    if user[address(msg.sender)].field_1280 >= user[address(msg.sender)].field_768:
        revert with 0, 'Cost recovered.'
    require user[address(msg.sender)].field_1536 <= user[address(msg.sender)].field_768
    require user[address(msg.sender)].field_1536 <= user[address(msg.sender)].field_1280
    require sub_b7ff15a6 <= sub_642f567a
    require user[address(msg.sender)].field_1280 - user[address(msg.sender)].field_1536 >= 0
    if user[address(msg.sender)].field_768 > sub_642f567a - sub_b7ff15a6 + user[address(msg.sender)].field_1280:
        revert with 0, 'Lack of funds.'
    user[address(msg.sender)].field_1536 = user[address(msg.sender)].field_768
    require user[address(msg.sender)].field_768 <= sub_642f567a
    sub_642f567a -= user[address(msg.sender)].field_768
    require user[address(msg.sender)].field_1280 <= sub_b7ff15a6
    sub_b7ff15a6 -= user[address(msg.sender)].field_1280
    stor8[stor6[address(msg.sender)].field_0] = 1
    call msg.sender with:
       value user[address(msg.sender)].field_768 - user[address(msg.sender)].field_1536 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Exit((user[address(msg.sender)].field_768 - user[address(msg.sender)].field_1536), msg.sender);
}

function buy() payable {
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wallet account is on the blacklist.'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The purchase must be greater than zero.'
    require user[address(msg.sender)].field_768 + msg.value >= user[address(msg.sender)].field_768
    if user[address(msg.sender)].field_768 + msg.value > 10 * 10^18:
        revert with 0, 'Exceeding the maximum limit.'
    require sub_642f567a + msg.value >= sub_642f567a
    sub_642f567a += msg.value
    user[address(msg.sender)].field_768 += msg.value
    require user[address(msg.sender)].field_768 + msg.value
    user[address(msg.sender)].field_1024 = 20 * 10^18 / user[address(msg.sender)].field_768 + msg.value
    emit Buy(msg.value, msg.sender);
    if not sub_6902c9ab:
        if user[address(msg.sender)].field_768 + msg.value >= 0:
            stor10.length++
            stor10[stor10.length] = msg.sender
    else:
        require sub_6902c9ab
        require 10^18 * sub_6902c9ab / sub_6902c9ab == 10^18
        if user[address(msg.sender)].field_768 + msg.value >= 10^18 * sub_6902c9ab:
            stor10.length++
            stor10[stor10.length] = msg.sender
    if not stor8[stor7[stor6[address(msg.sender)].field_512]]:
        if user[address(msg.sender)].field_512 != stor1:
            if user[stor7[user[address(msg.sender)].field_512]].field_1792 < 5:
                if msg.value > 0:
                    require sub_b7ff15a6 + (msg.value / 100) >= sub_b7ff15a6
                    sub_b7ff15a6 += msg.value / 100
                    require user[stor7[user[address(msg.sender)].field_512]].field_1280 + (msg.value / 100) >= user[stor7[user[address(msg.sender)].field_512]].field_1280
                    user[stor7[user[address(msg.sender)].field_512]].field_1280 += msg.value / 100
                    require user[stor7[user[address(msg.sender)].field_512]].field_1792 + 1 >= user[stor7[user[address(msg.sender)].field_512]].field_1792
                    user[stor7[user[address(msg.sender)].field_512]].field_1792++
                    emit Reward((msg.value / 100), stor7[stor6[address(msg.sender)].field_512]);
            if user[stor7[user[address(msg.sender)].field_512]].field_1024 > 0:
                require user[stor7[user[address(msg.sender)].field_512]].field_1024
                require sub_b7ff15a6 + (msg.value / user[stor7[user[address(msg.sender)].field_512]].field_1024) >= sub_b7ff15a6
                sub_b7ff15a6 += msg.value / user[stor7[user[address(msg.sender)].field_512]].field_1024
                require user[stor7[user[address(msg.sender)].field_512]].field_1280 + (msg.value / user[stor7[user[address(msg.sender)].field_512]].field_1024) >= user[stor7[user[address(msg.sender)].field_512]].field_1280
                user[stor7[user[address(msg.sender)].field_512]].field_1280 += msg.value / user[stor7[user[address(msg.sender)].field_512]].field_1024
                emit Reward((msg.value / user[stor7[user[address(msg.sender)].field_512]].field_1024), stor7[stor6[address(msg.sender)].field_512]);
}



}
