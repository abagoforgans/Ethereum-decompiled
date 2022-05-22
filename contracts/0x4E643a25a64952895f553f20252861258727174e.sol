contract main {




// =====================  Runtime code  =====================


mapping of uint32 stor0;
array of address sub_9e9b99ae;
mapping of uint32 stor2;
array of address stor3;
bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint8 stor4; offset 24
uint256 stor4; offset 16
mapping of uint8 stor5;
address managerAddress;
address stor7;
mapping of uint256 uint;
array of uint256 string;
mapping of address address;
array of uint256 bytes;
mapping of uint8 stor12;
mapping of uint256 int;
address sub_42f6b6ceAddress;
address sub_fed57875Address;
uint256 sub_ee28d7a3;
uint256 sub_717eced5;
mapping of uint256 sub_d44f2e29;
mapping of uint256 sub_bd3184f1;
uint16 sub_1c2fef80;
uint16 sub_d45c47cc; offset 16
uint256 sub_8e628636;
uint256 sub_645cca84;
mapping of uint8 stor23;
array of struct name;
mapping of address creator;
mapping of uint256 balance;
mapping of uint256 sub_39ac0f39;
mapping of uint256 sub_77778db3;
mapping of uint256 sub_2df3f42a;
mapping of uint8 sub_1e78bf08;
mapping of address sub_bc7a17c5;
array of uint256 uRI;
mapping of struct sub_0a432df0;
mapping of uint256 sub_20ec4a86;
mapping of uint8 stor35;
mapping of uint8 stor36;
mapping of address sub_ec9d633d;
mapping of uint8 sub_ff42fe18;
array of uint256 symbol;
mapping of address sub_7d686379;
mapping of uint64 sub_e5230867;
mapping of address sub_42d98f71;
uint256 sub_2797a169;
mapping of struct sub_3a57ec5d;

function sub_0a432df0(?) {
    return Mask(96, 0, sub_0a432df0[arg1].field_40)
}

function getURI(uint256 arg1) {
    return uRI[arg1][0 len uRI[arg1].length]
}

function sub_1c2fef80(?) {
    return sub_1c2fef80
}

function sub_1d0a9c61(?) {
    return uint32(sub_9e9b99ae.length)
}

function sub_1e3a67bf(?) {
    return uint16(sub_0a432df0[arg1].field_0)
}

function sub_1e453367(?) {
    return uint16(sub_0a432df0[arg1].field_16)
}

function sub_1e78bf08(?) {
    return sub_1e78bf08[arg1]
}

function sub_20ec4a86(?) {
    return sub_20ec4a86[arg1]
}

function getAddress(bytes32 arg1) {
    return address[arg1]
}

function sub_2797a169(?) {
    return sub_2797a169
}

function sub_2df3f42a(?) {
    return sub_2df3f42a[arg1]
}

function sub_39ac0f39(?) {
    return sub_39ac0f39[arg1][address(arg2)][address(arg3)]
}

function sub_3a57ec5d(?) {
    return address(sub_3a57ec5d[arg1].field_256)
}

function sub_42d98f71(?) {
    return sub_42d98f71[arg1]
}

function sub_42f6b6ce(?) {
    return sub_42f6b6ceAddress
}

function sub_465b17de(?) {
    return bool(stor23[address(arg1)])
}

function sub_5d63a6df(?) {
    return bool(uint8(stor4.field_0))
}

function sub_5dbc33e7(?) {
    return bool(stor36[arg1][address(arg2)][address(arg3)])
}

function getSymbol(uint256 arg1) {
    return symbol[arg1][0 len symbol[arg1].length]
}

function sub_645cca84(?) {
    return sub_645cca84
}

function getName(uint256 arg1) {
    return uint256(name[256 * arg1][0 len name[256 * arg1].length].field_0)
}

function sub_717eced5(?) {
    return sub_717eced5
}

function sub_73007500(?) {
    return uint8(sub_0a432df0[arg1].field_32)
}

function sub_745c8b45(?) {
    return uint8(name[256 * arg1].field_256)
}

function sub_77778db3(?) {
    return sub_77778db3[arg1]
}

function sub_796cc911(?) {
    return uint64(name[256 * arg1].field_360)
}

function getBool(bytes32 arg1) {
    return bool(stor12[arg1])
}

function sub_7d686379(?) {
    return sub_7d686379[arg1]
}

function getMeltValue(uint256 arg1) {
    return Mask(88, 0, name[256 * arg1].field_424)
}

function sub_8e628636(?) {
    return sub_8e628636
}

function getTotalSupply(uint256 arg1) {
    return uint64(name[256 * arg1].field_296)
}

function getString(bytes32 arg1) {
    return string[arg1][0 len string[arg1].length]
}

function sub_9e9b99ae(?) {
    require arg1 < sub_9e9b99ae.length
    return address(sub_9e9b99ae[arg1])
}

function getBalance(uint256 arg1, address arg2) {
    return balance[arg1][address(arg2)]
}

function isApprovedAddress(address arg1) {
    return bool(stor0[address(arg1)])
}

function sub_bc7a17c5(?) {
    return sub_bc7a17c5[arg1]
}

function getUint(bytes32 arg1) {
    return uint[arg1]
}

function sub_bd3184f1(?) {
    return sub_bd3184f1[arg1][arg2]
}

function getBytes(bytes32 arg1) {
    return bytes[arg1][0 len bytes[arg1].length]
}

function sub_c59694cf(?) {
    return uint8(sub_3a57ec5d[arg1].field_1152)
}

function sub_cbc1a626(?) {
    return address(sub_3a57ec5d[arg1].field_0)
}

function sub_d44f2e29(?) {
    return sub_d44f2e29[arg1][arg2]
}

function sub_d45c47cc(?) {
    return sub_d45c47cc
}

function getCreator(uint256 arg1) {
    return creator[arg1]
}

function getManager() {
    return managerAddress
}

function getInt(bytes32 arg1) {
    return int[arg1]
}

function sub_de2ac4e4(?) {
    return uint128(sub_3a57ec5d[arg1].field_1024)
}

function sub_e5230867(?) {
    return sub_e5230867[arg1]
}

function sub_ec9d633d(?) {
    return sub_ec9d633d[arg1]
}

function sub_ee28d7a3(?) {
    return sub_ee28d7a3
}

function sub_f7250826(?) {
    return bool(stor35[arg1][address(arg2)][address(arg3)])
}

function sub_f8057921(?) {
    return Mask(96, 0, sub_0a432df0[arg1].field_136)
}

function sub_fed57875(?) {
    return sub_fed57875Address
}

function sub_ff42fe18(?) {
    return sub_ff42fe18[arg1]
}

function sub_6a47c80a(?) payable {
  stop
}

function _fallback() {
    revert with 0, '()'
}

function deleteInt(bytes32 arg1) {
    require stor0[msg.sender]
    int[arg1] = 0
}

function deleteUint(bytes32 arg1) {
    require stor0[msg.sender]
    uint[arg1] = 0
}

function deleteBool(bytes32 arg1) {
    require stor0[msg.sender]
    stor12[arg1] = 0
}

function sub_7b129b06(?) {
    require stor0[msg.sender]
    sub_ec9d633d[arg1] = arg2
}

function sub_7e686648(?) {
    require stor0[msg.sender]
    sub_2df3f42a[arg1] = arg2
}

function sub_cd066c1c(?) {
    require stor0[msg.sender]
    sub_42d98f71[arg1] = arg2
}

function sub_fec272c4(?) {
    require stor0[msg.sender]
    sub_77778db3[arg1] = arg2
}

function sub_b920ee00(?) {
    require stor0[msg.sender]
    sub_fed57875Address = arg1
}

function deleteAddress(bytes32 arg1) {
    require stor0[msg.sender]
    address[arg1] = 0
}

function setInt(bytes32 arg1, int256 arg2) {
    require stor0[msg.sender]
    int[arg1] = arg2
}

function sub_9c64c948(?) {
    require msg.sender == managerAddress
    stor5[address(arg1)] = 1
}

function sub_e6dfa245(?) {
    require msg.sender == managerAddress
    uint8(stor4.field_16) = 1
}

function setUint(bytes32 arg1, uint256 arg2) {
    require stor0[msg.sender]
    uint[arg1] = arg2
}

function sub_518a45b5(?) {
    require stor0[msg.sender]
    uint8(sub_3a57ec5d[arg1].field_1152) = arg2
}

function sub_8d0a3a08(?) {
    require msg.sender == managerAddress
    managerAddress = 0
    stor7 = 0
}

function setCreator(uint256 arg1, address arg2) {
    require stor0[msg.sender]
    creator[arg1] = arg2
}

function setBool(bytes32 arg1, bool arg2) {
    require stor0[msg.sender]
    stor12[arg1] = uint8(arg2)
}

function setAddress(bytes32 arg1, address arg2) {
    require stor0[msg.sender]
    address[arg1] = arg2
}

function sub_5a12c0a5(?) {
    require stor0[msg.sender]
    sub_645cca84++
    return (sub_645cca84 + 1)
}

function sub_b10c4d2a(?) {
    require stor0[msg.sender]
    sub_2797a169++
    return (sub_2797a169 + 1)
}

function sub_c9f68037(?) {
    require stor0[msg.sender]
    sub_8e628636++
    return (sub_8e628636 + 1)
}

function sub_696361ec(?) {
    require msg.sender == managerAddress
    stor23[address(arg1)] = uint8(arg2)
}

function setDecimals(uint256 arg1, uint8 arg2) {
    require stor0[msg.sender]
    sub_ff42fe18[arg1] = arg2
}

function sub_a14ecd20(?) {
    require stor0[msg.sender]
    sub_39ac0f39[arg1][address(arg2)][address(arg3)] = arg4
}

function sub_bf73f5b2(?) {
    require stor0[msg.sender]
    stor35[arg1][address(arg2)][address(arg3)] = uint8(arg4)
}

function sub_6c04e3c0(?) {
    require stor0[msg.sender]
    require arg2 <= sub_2df3f42a[arg1]
    sub_2df3f42a[arg1] -= arg2
}

function sub_902a8fc3(?) {
    if not stor0[address(arg1)]:
        revert with 0, 'null'
    return uint32(stor0[address(arg1)] - 1)
}

function setBytes(bytes32 arg1, bytes arg2) {
    require stor0[msg.sender]
    bytes[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function setString(bytes32 arg1, string arg2) {
    require stor0[msg.sender]
    string[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_d5a38eb8(?) {
    require msg.sender == managerAddress
    if arg1 > 10000:
        revert with 0, 'div'
    sub_d45c47cc = arg1
}

function sub_e137a82e(?) {
    require msg.sender == managerAddress
    if arg1 > 10000:
        revert with 0, 'div'
    sub_1c2fef80 = arg1
}

function sub_3f93ee4f(?) {
    require stor0[msg.sender]
    require arg3 <= balance[arg1][address(arg2)]
    balance[arg1][address(arg2)] -= arg3
}

function sub_eaf457dd(?) {
    require stor0[msg.sender]
    require arg2 + sub_2df3f42a[arg1] >= sub_2df3f42a[arg1]
    sub_2df3f42a[arg1] += arg2
}

function transferManager(address arg1) {
    require msg.sender == managerAddress
    if managerAddress == arg1:
        revert with 0, 'same'
    stor7 = arg1
}

function sub_bd143872(?) {
    if sub_42f6b6ceAddress:
        if sub_42f6b6ceAddress != msg.sender:
            revert with 0, 'addr'
    sub_42f6b6ceAddress = arg1
}

function setWhitelisted(uint256 arg1, address arg2, address arg3, bool arg4) {
    require stor0[msg.sender]
    stor36[arg1][address(arg2)][address(arg3)] = uint8(arg4)
}

function acceptManager() {
    if stor7 != msg.sender:
        revert with 0, 'new'
    emit ManagerUpdate(managerAddress, stor7);
    managerAddress = stor7
    stor7 = 0
}

function sub_f807393a(?) {
    require stor0[msg.sender]
    require arg3 + balance[arg1][address(arg2)] >= balance[arg1][address(arg2)]
    balance[arg1][address(arg2)] += arg3
}

function setTransferable(uint256 arg1, uint8 arg2) {
    require stor0[msg.sender]
    if sub_1e78bf08[arg1] <= 0:
        revert with 0, 'permanent'
    sub_1e78bf08[arg1] = arg2
}

function sub_8d42e29c(?) {
    require stor0[msg.sender]
    if arg2 != uint128(arg2):
        revert with 0, 'overflow'
    uint128(sub_3a57ec5d[arg1].field_1024) = uint128(arg2)
}

function sub_620a3cbe(?) {
    require uint64(name[256 * arg1].field_360) <= uint64(name[256 * arg1].field_296)
    return (uint64(name[256 * arg1].field_296) - uint64(name[256 * arg1].field_360))
}

function setTotalSupply(uint256 arg1, uint256 arg2) {
    require stor0[msg.sender]
    if arg2 != uint64(arg2):
        revert with 0, 'overflow'
    uint64(name[256 * arg1].field_296) = uint64(arg2)
}

function setMeltFee(uint256 arg1, uint16 arg2) {
    require stor0[msg.sender]
    if arg2 > uint16(sub_0a432df0[arg1].field_16):
        revert with 0, 'max'
    uint16(sub_0a432df0[arg1].field_0) = arg2
}

function sub_61f861c0(?) {
    require msg.sender == managerAddress
    uint8(stor4.field_8) = 1
    Mask(240, 0, stor4.field_16) = uint8(stor4.field_16)
    uint8(stor4.field_24) = 1
    stor4.field_256 % 1 = 0
}

function sub_7384ce67(?) {
    require stor0[msg.sender]
    require uint64(arg2 + sub_e5230867[arg1]) >= sub_e5230867[arg1]
    sub_e5230867[arg1] = uint64(arg2 + sub_e5230867[arg1])
    return sub_e5230867[arg1]
}

function sub_f521a982(?) {
    if not uint32(name[256 * arg1].field_264):
        return 0
    require 60 * uint32(name[256 * arg1].field_264) / uint32(name[256 * arg1].field_264) == 60
    return (60 * uint32(name[256 * arg1].field_264))
}

function sub_ee6ab318(?) {
    require stor0[msg.sender]
    if arg2 >= sub_77778db3[arg1]:
        sub_77778db3[arg1] = 0
        return sub_77778db3[arg1]
    require arg2 <= sub_77778db3[arg1]
    sub_77778db3[arg1] -= arg2
    return arg2
}

function sub_eab99bb0(?) {
    require stor0[msg.sender]
    sub_7d686379[arg1] = arg2
    require balance[Mask(64, 192, arg1)][address(arg2)] + 1 >= balance[Mask(64, 192, arg1)][address(arg2)]
    balance[Mask(64, 192, arg1)][address(arg2)]++
}

function sub_93fb8f39(?) {
    require stor0[msg.sender]
    if uint32(name[256 * arg1].field_264):
        revert with 0, 'exist'
    creator[arg1] = arg2
    if arg3 > 0:
        stor36[arg1][address(arg2)][1] = 1
        sub_1e78bf08[arg1] = arg3
}

function releaseETH(address arg1, uint256 arg2) {
    require stor0[msg.sender]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f13e6c7d(?) {
    require stor0[msg.sender]
    require arg4 <= sub_39ac0f39[arg1][address(arg2)][address(arg3)]
    sub_39ac0f39[arg1][address(arg2)][address(arg3)] -= arg4
    return (sub_39ac0f39[arg1][address(arg2)][address(arg3)] - arg4)
}

function deleteBytes(bytes32 arg1) {
    require stor0[msg.sender]
    bytes[arg1] = 0
    if 31 < bytes[arg1].length:
        idx = 0
        while bytes[arg1].length + 31 / 32 > idx:
            bytes[arg1][idx] = 0
            idx = idx + 1
            continue 
}

function sub_d2aa85ed(?) {
    require msg.sender == managerAddress
    require 72 * 24 * 3600 <= block.timestamp
    if sub_717eced5 >= block.timestamp - (72 * 24 * 3600):
        revert with 0, 'cooldown'
    sub_ee28d7a3 = arg1
    sub_717eced5 = block.timestamp
}

function deleteString(bytes32 arg1) {
    require stor0[msg.sender]
    string[arg1] = 0
    if 31 < string[arg1].length:
        idx = 0
        while string[arg1].length + 31 / 32 > idx:
            string[arg1][idx] = 0
            idx = idx + 1
            continue 
}

function sub_ffaf6633(?) {
    require stor0[msg.sender]
    require arg4 <= balance[arg1][address(arg2)]
    balance[arg1][address(arg2)] -= arg4
    require arg4 + balance[arg1][arg3] >= balance[arg1][arg3]
    balance[arg1][address(arg3)] = arg4 + balance[arg1][arg3]
}

function sub_76feea52(?) {
    require stor0[msg.sender]
    if arg2 != Mask(96, 0, arg2):
        revert with 0, 'overflow'
    if Mask(96, 0, arg2) > Mask(96, 0, sub_0a432df0[arg1].field_136):
        revert with 0, 'max'
    Mask(96, 0, sub_0a432df0[arg1].field_40) = Mask(96, 0, arg2)
}

function sub_2b3ae9c3(?) {
    require stor0[msg.sender]
    if arg2 >= uint16(sub_0a432df0[arg1].field_16):
        revert with 0, 'decrease'
    if arg2 < uint16(sub_0a432df0[arg1].field_0):
        uint16(sub_0a432df0[arg1].field_0) = arg2
    uint16(sub_0a432df0[arg1].field_16) = arg2
}

function sub_17d26816(?) {
    require stor0[msg.sender]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c1f337cd(?) {
    require msg.sender == managerAddress
    require 72 * 24 * 3600 <= block.timestamp
    if sub_bd3184f1[arg1][arg2] >= block.timestamp - (72 * 24 * 3600):
        revert with 0, 'cooldown'
    sub_d44f2e29[arg1][arg2] = arg3
    sub_bd3184f1[arg1][arg2] = block.timestamp
}

function sub_653ae674(?) {
    require stor0[msg.sender]
    require ext_code.size(arg1)
    call arg1.0xfe99049a with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_69326b68(?) {
    require stor0[msg.sender]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7843e5dd(?) {
    require stor0[msg.sender]
    require ext_code.size(sub_fed57875Address)
    call sub_fed57875Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setURI(uint256 arg1, string arg2) {
    require stor0[msg.sender]
    uRI[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        uRI[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while uRI[arg1].length + 31 / 32 > idx:
        uRI[arg1][idx] = 0
        idx = idx + 1
        continue 
}

function sub_85f8744e(?) {
    require stor0[msg.sender]
    if arg2 != Mask(96, 0, arg2):
        revert with 0, 'overflow'
    if Mask(96, 0, arg2) >= Mask(96, 0, sub_0a432df0[arg1].field_136):
        revert with 0, 'decrease'
    if Mask(96, 0, arg2) < Mask(96, 0, sub_0a432df0[arg1].field_40):
        Mask(96, 0, sub_0a432df0[arg1].field_40) = Mask(96, 0, arg2)
    Mask(96, 0, sub_0a432df0[arg1].field_136) = Mask(96, 0, arg2)
}

function sub_40550b94(?) {
    require stor0[msg.sender]
    symbol[cd[4]] = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        symbol[cd[4]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while symbol[cd[4]].length + 31 / 32 > idx:
        symbol[cd[4]][idx] = 0
        idx = idx + 1
        continue 
}

function setName(uint256 arg1, string arg2) {
    require stor0[msg.sender]
    uint256(name[256 * arg1].field_0) = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        uint256(name[256 * arg1][s].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while name[256 * arg1].length + 31 / 32 > idx:
        uint256(name[256 * arg1][idx].field_0) = 0
        idx = idx + 1
        continue 
}

function addApprovedAddress(address arg1) {
    require msg.sender == managerAddress
    if uint8(stor4.field_0):
        revert with 0, 'lock'
    if uint8(stor4.field_16):
        revert with 0, 'add'
    if not stor0[address(arg1)]:
        if test266151307() <= sub_9e9b99ae.length:
            revert with 0, 'len'
        sub_9e9b99ae.length++
        address(sub_9e9b99ae[sub_9e9b99ae.length]) = arg1
        stor0[address(arg1)] = uint32(sub_9e9b99ae.length + 1)
        emit 0x3c4f2701: address(arg1), 1
}

function sub_caee2b1a(?) {
    require stor0[msg.sender]
    if uint32(name[256 * arg1].field_264):
        revert with 0, 'exist'
    if arg4 > 0:
        sub_20ec4a86[arg1] = arg4
    if arg5 != Mask(96, 0, arg5):
        revert with 0, 'overflow'
    uint16(sub_0a432df0[arg1].field_0) = arg2
    uint16(sub_0a432df0[arg1].field_16) = arg2
    uint8(sub_0a432df0[arg1].field_32) = arg3
    Mask(96, 0, sub_0a432df0[arg1].field_40) = Mask(96, 0, arg5)
    Mask(96, 0, sub_0a432df0[arg1].field_136) = Mask(96, 0, arg5)
}

function sub_95760fb9(?) {
    require stor0[msg.sender]
    if sub_7d686379[arg1] != arg2:
        revert with 0, 'owner'
    if 0xdeaddeaddeaddeaddeaddeaddeaddead0000 == arg2:
        revert with 0, 'owner'
    sub_7d686379[arg1] = arg3
    require 1 <= balance[Mask(64, 192, arg1)][address(arg2)]
    balance[Mask(64, 192, arg1)][address(arg2)]--
    require balance[Mask(64, 192, arg1)][arg3] + 1 >= balance[Mask(64, 192, arg1)][arg3]
    balance[Mask(64, 192, arg1)][address(arg3)] = balance[Mask(64, 192, arg1)][arg3] + 1
}

function sub_270c373e(?) {
    if sub_1e78bf08[arg1] < 2:
        return (sub_1e78bf08[arg1] < 2)
    if stor36[arg1][address(arg2)][1]:
        return bool(stor36[arg1][address(arg2)][1])
    if stor36[arg1][address(arg3)][1]:
        return bool(stor36[arg1][address(arg3)][1])
    if stor36[arg1][address(arg3)][3]:
        return bool(stor36[arg1][address(arg3)][3])
    if stor36[arg1][address(arg2)][2]:
        return bool(stor36[arg1][address(arg2)][2])
    if stor36[arg1][address(arg2)][address(arg3)]:
        return bool(stor36[arg1][address(arg2)][address(arg3)])
    return bool(stor36[arg1][address(arg3)][address(arg2)])
}

function sub_73ab66b2(?) {
    require stor0[msg.sender]
    mem[(32 * arg4.length) + (32 * arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 324] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + 356 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    call arg1.0x17fad7fc with:
         gas gas_remaining wei
        args this.address, address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 324 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c4fa099(?) {
    require stor0[msg.sender]
    if arg7 / 60 <= 0:
        revert with 0, 'exist'
    if uint32(name[256 * arg1].field_264):
        revert with 0, 'exist'
    if arg4 != uint64(arg4):
        revert with 0, 'overflow'
    if arg5 != arg5:
        revert with 0, 'overflow'
    if Mask(88, 0, arg6) != arg6:
        revert with 0, 'overflow'
    if uint32(arg7 / 60) != arg7 / 60:
        revert with 0, 'overflow'
    uint256(name[256 * arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint8(name[256 * arg1].field_256) = uint8(arg1)
    uint32(name[256 * arg1].field_264) = uint32(arg7 / 60)
    uint64(name[256 * arg1].field_296) = uint64(arg4)
    uint64(name[256 * arg1].field_360) = arg5
    Mask(88, 0, name[256 * arg1].field_424) = Mask(88, 0, arg6)
    sub_77778db3[arg1] = arg5
    if arg3 > 0:
        sub_bc7a17c5[arg1] = arg3
}

function sub_06aec0ef(?) {
    require msg.sender == managerAddress
    if uint32(sub_9e9b99ae.length):
        revert with 0, '0'
    s = 0
    idx = 0
    while uint32(idx) < stor3.length:
        if not stor0[address(stor3[uint32(idx)])]:
            if test266151307() <= sub_9e9b99ae.length:
                revert with 0, 'len'
            sub_9e9b99ae.length++
            address(sub_9e9b99ae[sub_9e9b99ae.length]) = address(stor3[uint32(idx)])
            stor0[address(stor3[uint32(idx)])] = uint32(sub_9e9b99ae.length + 1)
        mem[0] = address(stor3[uint32(idx)])
        mem[32] = 2
        stor2[address(stor3[uint32(idx)])] = 0
        s = address(stor3[uint32(idx)])
        idx = idx + 1
        continue 
    stor3.length = 0
    if stor3.length > 0:
        idx = 0
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    uint8(stor4.field_0) = 0
    emit 0xd8d7d71f: 0
}

function removeApprovedAddress(address arg1) {
    require msg.sender == managerAddress
    if uint8(stor4.field_0):
        revert with 0, 'lock'
    if uint8(stor4.field_24):
        revert with 0, 'rem'
    if stor5[address(arg1)]:
        revert with 0, 'freeze'
    if stor0[address(arg1)]:
        if stor0[address(arg1)] < sub_9e9b99ae.length:
            require sub_9e9b99ae.length - 1 < sub_9e9b99ae.length
            require uint32(stor0[address(arg1)] - 1) < sub_9e9b99ae.length
            address(sub_9e9b99ae[uint32(stor0[address(arg1)] - 1)]) = address(sub_9e9b99ae[sub_9e9b99ae.length])
            stor0[address(stor1[stor1.length])] = stor0[address(arg1)]
        stor0[address(arg1)] = 0
        sub_9e9b99ae.length--
        if sub_9e9b99ae.length > sub_9e9b99ae.length - 1:
            idx = sub_9e9b99ae.length - 1
            while sub_9e9b99ae.length > idx:
                uint256(sub_9e9b99ae[idx]) = 0
                idx = idx + 1
                continue 
        emit 0x3c4f2701: address(arg1), 0
}

function sub_8e1f81bb(?) {
    require msg.sender == managerAddress
    if uint8(stor4.field_8):
        revert with 0, 'disabled'
    if uint32(stor3.length):
        revert with 0, '0'
    s = 0
    idx = 0
    while uint32(idx) < sub_9e9b99ae.length:
        if not stor2[address(stor1[uint32(idx)])]:
            if test266151307() <= stor3.length:
                revert with 0, 'len'
            stor3.length++
            address(stor3[stor3.length]) = address(sub_9e9b99ae[uint32(idx)])
            stor2[address(stor1[uint32(idx)])] = uint32(stor3.length + 1)
        mem[0] = address(sub_9e9b99ae[uint32(idx)])
        mem[32] = 0
        stor0[address(stor1[uint32(idx)])] = 0
        s = address(sub_9e9b99ae[uint32(idx)])
        idx = idx + 1
        continue 
    sub_9e9b99ae.length = 0
    if sub_9e9b99ae.length > 0:
        idx = 0
        while sub_9e9b99ae.length > idx:
            uint256(sub_9e9b99ae[idx]) = 0
            idx = idx + 1
            continue 
    uint8(stor4.field_0) = 1
    emit 0xd8d7d71f: 1
}

function sub_eb5f144d(?) {
    if uint256(sub_3a57ec5d[arg1].field_768):
        mem[128] = uint128(sub_3a57ec5d[arg1][3].field_0)
        if (32 * uint256(sub_3a57ec5d[arg1].field_768)) + 32 > 64:
            mem[160] = uint128(sub_3a57ec5d[arg1][3].field_128)
            idx = 160
            s = 16
            t = sha3(sha3(arg1, 44) + 3)
            while (32 * uint256(sub_3a57ec5d[arg1].field_768)) + 96 > idx:
                mem[idx + 32] = uint128(stor[(0.03125 / s + 31) + t].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
                idx = idx + 32
                s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
                t = (s + 31 / 32) + t
                continue 
    mem[(32 * uint256(sub_3a57ec5d[arg1].field_768)) + 128] = 32
    mem[(32 * uint256(sub_3a57ec5d[arg1].field_768)) + 160] = uint256(sub_3a57ec5d[arg1].field_768)
    mem[(32 * uint256(sub_3a57ec5d[arg1].field_768)) + 192 len floor32(uint256(sub_3a57ec5d[arg1].field_768))] = mem[128 len floor32(uint256(sub_3a57ec5d[arg1].field_768))]
    return memory
      from (32 * uint256(sub_3a57ec5d[arg1].field_768)) + 128
       len (96 * uint256(sub_3a57ec5d[arg1].field_768)) + 64
}

function sub_64d4ae28(?) {
    if not uint256(sub_3a57ec5d[arg1].field_512):
        mem[(32 * uint256(sub_3a57ec5d[arg1].field_512)) + 128] = 32
        mem[(32 * uint256(sub_3a57ec5d[arg1].field_512)) + 160] = uint256(sub_3a57ec5d[arg1].field_512)
        mem[(32 * uint256(sub_3a57ec5d[arg1].field_512)) + 192 len floor32(uint256(sub_3a57ec5d[arg1].field_512))] = mem[128 len floor32(uint256(sub_3a57ec5d[arg1].field_512))]
        return memory
          from (32 * uint256(sub_3a57ec5d[arg1].field_512)) + 128
           len (96 * uint256(sub_3a57ec5d[arg1].field_512)) + 64
    mem[128] = uint128(sub_3a57ec5d[arg1][2].field_0)
    idx = 128
    s = 0
    while (32 * uint256(sub_3a57ec5d[arg1].field_512)) + 96 > idx:
        mem[idx + 32] = uint128(sub_3a57ec5d[arg1][2].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
        idx = idx + 32
        s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
        continue 
    mem[(32 * uint256(sub_3a57ec5d[arg1].field_512)) + 192 len floor32(uint256(sub_3a57ec5d[arg1].field_512))] = mem[128 len floor32(uint256(sub_3a57ec5d[arg1].field_512))]
    return Array(len=uint256(sub_3a57ec5d[arg1].field_512), data=mem[128 len floor32(uint256(sub_3a57ec5d[arg1].field_512))], mem[(32 * uint256(sub_3a57ec5d[arg1].field_512)) + floor32(uint256(sub_3a57ec5d[arg1].field_512)) + 192 len (32 * uint256(sub_3a57ec5d[arg1].field_512)) - floor32(uint256(sub_3a57ec5d[arg1].field_512))]), 
}

function sub_1427cb84(?) {
    require stor0[msg.sender]
    mem[320 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 320] = arg5.length
    mem[(32 * arg4.length) + 352 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    address(sub_3a57ec5d[arg1].field_0) = arg2
    address(sub_3a57ec5d[arg1].field_256) = arg3
    uint256(sub_3a57ec5d[arg1].field_512) = arg4.length
    if not arg4.length:
        idx = 0
        while uint256(sub_3a57ec5d[arg1].field_512) + 1 / 2 > idx:
            uint128(sub_3a57ec5d[arg1][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 320
        while (32 * arg4.length) + 320 > idx:
            uint256(sub_3a57ec5d[arg1][2].field_0) = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and uint256(sub_3a57ec5d[arg1][2].field_0)
            s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
            idx = idx + 32
            continue 
        idx = floor32(arg4.length) >> 1
        s = sha3(sha3(arg1, 44) + 2)
        while idx:
            uint256(stor[s].field_0) = !(test266151307() * 256^idx) and uint256(stor[s].field_0)
            idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
            s = (idx + 31 / 32) + s
            continue 
        idx = (floor32(arg4.length) >> 1) + Mask(248, 4, None + -(floor32(arg4.length) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(arg4.length) >> 1) + 17) >> 4
        while uint256(sub_3a57ec5d[arg1].field_512) + 1 / 2 > idx:
            uint128(sub_3a57ec5d[arg1][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
    uint256(sub_3a57ec5d[arg1].field_768) = arg5.length
    if not arg5.length:
        idx = 0
        while uint256(sub_3a57ec5d[arg1].field_768) + 1 / 2 > idx:
            uint128(sub_3a57ec5d[arg1][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + 352
        while (32 * arg4.length) + (32 * arg5.length) + 352 > idx:
            uint256(sub_3a57ec5d[arg1][3].field_0) = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and uint256(sub_3a57ec5d[arg1][3].field_0)
            s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
            idx = idx + 32
            continue 
        idx = floor32(arg5.length) >> 1
        s = sha3(sha3(arg1, 44) + 3)
        while idx:
            uint256(stor[s].field_0) = !(test266151307() * 256^idx) and uint256(stor[s].field_0)
            idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
            s = (idx + 31 / 32) + s
            continue 
        idx = (floor32(arg5.length) >> 1) + Mask(248, 4, None + -(floor32(arg5.length) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(arg5.length) >> 1) + 17) >> 4
        while uint256(sub_3a57ec5d[arg1].field_768) + 1 / 2 > idx:
            uint128(sub_3a57ec5d[arg1][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    Mask(136, 0, sub_3a57ec5d[arg1].field_1024) = 0
    sub_3a57ec5d[arg1].field_1280 % 1 = 0
    sub_3a57ec5d[arg1].field_1280 % 1 = 0
}



}
