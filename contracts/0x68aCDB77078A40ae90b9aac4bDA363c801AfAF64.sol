contract main {




// =====================  Runtime code  =====================


#
#  - sub_cc8076f7(?)
#
array of uint256 companyName;
array of uint256 sub_1c790e9c;
array of uint256 sub_76ff023b;
array of uint256 sub_d351b7c2;
array of uint256 sub_73849735;
address CEOAddress;
array of struct sub_ae204be1;
address CFOAddress;
array of struct sub_99130b8b;
address sub_bf1179adAddress;
uint256 threshold;
array of address stor11;
array of struct stor12;
mapping of uint256 stor13;
uint256 sub_e7ccd0ec;
array of address stor15;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct sub_b3686d23;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1c790e9c(?) {
    return sub_1c790e9c[0 len sub_1c790e9c.length]
}

function CFO() {
    return CFOAddress
}

function threshold() {
    return threshold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_73849735(?) {
    return sub_73849735[0 len sub_73849735.length]
}

function sub_76ff023b(?) {
    return sub_76ff023b[0 len sub_76ff023b.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_99130b8b(?) {
    return sub_99130b8b[0 len sub_99130b8b.length].field_0
}

function CEO() {
    return CEOAddress
}

function sub_ae204be1(?) {
    return sub_ae204be1[0 len sub_ae204be1.length].field_0
}

function sub_b3686d23(?) {
    require arg1 < sub_b3686d23.length
    require uint8(sub_b3686d23[arg1].field_768) <= 2
    return address(sub_b3686d23[arg1].field_0), 
           address(sub_b3686d23[arg1].field_256),
           sub_b3686d23[arg1].field_512,
           uint8(sub_b3686d23[arg1].field_768),
           sub_b3686d23[arg1].field_1024,
           address(sub_b3686d23[arg1].field_1280)
}

function sub_bf1179ad(?) {
    return sub_bf1179adAddress
}

function totalUsers() {
    return stor11.length
}

function sub_d351b7c2(?) {
    return sub_d351b7c2[0 len sub_d351b7c2.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7ccd0ec(?) {
    return sub_e7ccd0ec
}

function companyName() {
    return companyName[0 len companyName.length]
}

function _fallback() payable {
    revert
}

function sub_ae93f969(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    sub_e7ccd0ec = arg1
    emit 0x954e9aa2: arg1
    return 1
}

function unlockUser(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    stor13[address(arg1)] = 0
    emit 0xf7702fc8: arg1
    return 1
}

function sub_9483b03f(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require arg1
    emit CEOTransferred(CFOAddress, arg1);
    CFOAddress = arg1
}

function changeCEO(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require arg1
    emit CEOTransferred(CEOAddress, arg1);
    CEOAddress = arg1
}

function sub_6369fa0a(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require arg1
    emit 0x8f9afb42: sub_bf1179adAddress, arg1
    sub_bf1179adAddress = arg1
}

function sub_c31b2d27(?) {
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if address(stor15[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != sub_bf1179adAddress
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkWhiteList(address arg1) {
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if arg1 != address(stor11[idx]):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg1 != sub_bf1179adAddress
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_dbfa9630(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        require address(stor15[idx]) != arg1
        idx = idx + 1
        continue 
    stor15.length++
    address(stor15[stor15.length]) = arg1
    emit 0x9f70989a: arg1
    return 1
}

function unlockToken() {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    sub_e7ccd0ec = 0
    if not block.timestamp:
        emit TokenUnlocked(0);
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        emit TokenUnlocked((1000 * block.timestamp));
    return 1
}

function addUser(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        require arg1 != address(stor11[idx])
        idx = idx + 1
        continue 
    stor11.length++
    address(stor11[stor11.length]) = arg1
    emit 0x57b45623: arg1
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg1 != sub_bf1179adAddress
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function addUsers(address[] arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    idx = 0
    while idx < arg1.length:
        stor11.length++
        mem[0] = 11
        address(stor11[stor11.length]) = address(cd[((32 * idx) + arg1 + 36)])
        emit 0x57b45623: address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function mint(uint256 arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    balanceOf[stor5] += arg1
    totalSupply += arg1
    if not totalSupply:
        threshold = 0
    else:
        require totalSupply
        require 10 * totalSupply / totalSupply == 10
        require 10 * totalSupply == 100 * 10 * totalSupply / 100
        threshold = 10 * totalSupply / 100
    emit Mint(arg1, 0, CEOAddress);
    return 1
}

function sub_509699ba(?) {
    if not block.timestamp:
        require stor13[address(arg1)] <= 0
        if -stor13[address(arg1)] >= sub_e7ccd0ec:
            return 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        require stor13[address(arg1)] <= 1000 * block.timestamp
        if (1000 * block.timestamp) - stor13[address(arg1)] >= sub_e7ccd0ec:
            return 0
    return 1
}

function lockUser(address arg1) {
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if address(stor15[idx]) != msg.sender:
            idx = idx + 1
            continue 
        if not block.timestamp:
            stor13[address(arg1)] = 0
        else:
            require block.timestamp
            require 1000 * block.timestamp / block.timestamp == 1000
            stor13[address(arg1)] = 1000 * block.timestamp
        emit 0xc365f207: arg1
        return 1
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    if not block.timestamp:
        stor13[address(arg1)] = 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        stor13[address(arg1)] = 1000 * block.timestamp
    emit 0xc365f207: arg1
    return 1
}

function getPendingTxIDs() {
    idx = 0
    s = 0
    while idx < sub_b3686d23.length:
        require idx < sub_b3686d23.length
        mem[0] = 21
        require uint8(sub_b3686d23[idx].field_768) <= 2
        if uint8(sub_b3686d23[idx].field_768) != 2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if uint32(s):
        mem[128 len 32 * uint32(s)] = code.data[24092 len 32 * uint32(s)]
    idx = 0
    t = 0
    while idx < sub_b3686d23.length:
        require idx < sub_b3686d23.length
        mem[0] = 21
        require uint8(sub_b3686d23[idx].field_768) <= 2
        if uint8(sub_b3686d23[idx].field_768) != 2:
            idx = idx + 1
            t = t
            continue 
        require uint32(t) < uint32(s)
        mem[(32 * uint32(t)) + 128] = idx
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * uint32(s)) + 192 len Mask(27, 5, s)] = mem[128 len Mask(27, 5, s)]
    return Array(len=s << 224, data=mem[128 len Mask(27, 5, s)], mem[(32 * uint32(s)) + Mask(27, 5, s) + 192 len (32 * uint32(s)) - Mask(27, 5, s)]), 
}

function sub_6461ac6f(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require 0 < stor15.length
    idx = 0
    while address(stor15[idx]) != arg1:
        require idx + 1 < stor15.length
        mem[0] = 15
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if address(stor15[idx]) != arg1:
            idx = idx + 1
            continue 
        require stor15.length - 1 < stor15.length
        require idx < stor15.length
        address(stor15[idx]) = address(stor15[stor15.length])
        require stor15.length - 1 < stor15.length
        address(stor15[stor15.length]) = 0
        stor15.length--
        if stor15.length > stor15.length - 1:
            idx = sha3(15) + stor15.length - 1
            while sha3(15) + stor15.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit 0x468a5c1c: arg1
        return 1
    require stor15.length - 1 < stor15.length
    require idx < stor15.length
    address(stor15[idx]) = address(stor15[stor15.length])
    require stor15.length - 1 < stor15.length
    address(stor15[stor15.length]) = 0
    stor15.length--
    if stor15.length > stor15.length - 1:
        idx = stor15.length - 1
        while stor15.length > idx:
            uint256(stor15[idx]) = 0
            idx = idx + 1
            continue 
    emit 0x468a5c1c: arg1
    return 1
}

function deleteUser(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require 0 < stor11.length
    idx = 0
    while arg1 != address(stor11[idx]):
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if arg1 != address(stor11[idx]):
            idx = idx + 1
            continue 
        require stor11.length - 1 < stor11.length
        require idx < stor11.length
        address(stor11[idx]) = address(stor11[stor11.length])
        require stor11.length - 1 < stor11.length
        address(stor11[stor11.length]) = 0
        stor11.length--
        if stor11.length > stor11.length - 1:
            idx = sha3(11) + stor11.length - 1
            while sha3(11) + stor11.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit UserRemoved(arg1);
        return 1
    require stor11.length - 1 < stor11.length
    require idx < stor11.length
    address(stor11[idx]) = address(stor11[stor11.length])
    require stor11.length - 1 < stor11.length
    address(stor11[stor11.length]) = 0
    stor11.length--
    if stor11.length > stor11.length - 1:
        idx = stor11.length - 1
        while stor11.length > idx:
            uint256(stor11[idx]) = 0
            idx = idx + 1
            continue 
    emit UserRemoved(arg1);
    return 1
}

function sub_32d67165(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require 0 < stor11.length
    idx = 0
    while address(cd[4]) != address(stor11[idx]):
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    stor12[address(cd[4])].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor12[address(cd[4])][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor12[address(cd[4])].length + 31 / 32 > idx:
        stor12[address(cd[4])][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor12[address(cd[4])].field_256 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        stor12[address(cd[4])][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while stor12[address(cd[4])][1].length + 31 / 32 > idx:
        stor12[address(cd[4])][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor12[address(cd[4])].field_512 = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        stor12[address(cd[4])][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while stor12[address(cd[4])][2].length + 31 / 32 > idx:
        stor12[address(cd[4])][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x318a3003: Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), ('cd', 36).length + 128, ('cd', 36).length + ('cd', 68).length + 160, address(cd[4])
    return 1
}

function sub_862dff2d(?) {
    mem[128 len arg1.length] = arg1[all]
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 224] = uint256(sub_99130b8b.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + sub_99130b8b.length + 224 > idx + 32:
        mem[idx + 32] = sub_99130b8b[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 224] = arg1.length
    mem[ceil32(arg1.length) + sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x32bbd4fd: Array(len=sub_99130b8b.length, data=mem[ceil32(arg1.length) + 224 len sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 96
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit 0x32bbd4fd: Array(len=sub_99130b8b.length, data=mem[ceil32(arg1.length) + 224 len sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), sub_99130b8b.length + (floor32(sub_99130b8b.length - 1) + -sub_99130b8b.length + 32 % 32) + 96
    sub_99130b8b[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_d026370b(?) {
    mem[128 len arg1.length] = arg1[all]
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 224] = uint256(sub_ae204be1.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + sub_ae204be1.length + 224 > idx + 32:
        mem[idx + 32] = sub_ae204be1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 224] = arg1.length
    mem[ceil32(arg1.length) + sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x8c0300a4: Array(len=sub_ae204be1.length, data=mem[ceil32(arg1.length) + 224 len sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 96
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit 0x8c0300a4: Array(len=sub_ae204be1.length, data=mem[ceil32(arg1.length) + 224 len sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), sub_ae204be1.length + (floor32(sub_ae204be1.length - 1) + -sub_ae204be1.length + 32 % 32) + 96
    sub_ae204be1[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require sub_bf1179adAddress != msg.sender
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require 0 < stor11.length
    idx = 0
    while arg1 != address(stor11[idx]):
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    require 0 < stor11.length
    idx = 0
    while arg2 != address(stor11[idx]):
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    if not block.timestamp:
        require stor13[address(arg1)] <= 0
        require -stor13[address(arg1)] >= sub_e7ccd0ec
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        require stor13[address(arg1)] <= 1000 * block.timestamp
        require (1000 * block.timestamp) - stor13[address(arg1)] >= sub_e7ccd0ec
    if balanceOf[address(arg1)] < threshold:
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
        return 1
    if msg.sender == CEOAddress:
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
        return 1
    if msg.sender == CFOAddress:
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
        return 1
    if msg.sender == sub_bf1179adAddress:
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
        return 1
    if not block.timestamp:
        sub_b3686d23.length++
        address(sub_b3686d23[sub_b3686d23.length].field_0) = arg1
        address(sub_b3686d23[sub_b3686d23.length].field_256) = arg2
        sub_b3686d23[sub_b3686d23.length].field_512 = arg3
        uint8(sub_b3686d23[sub_b3686d23.length].field_768) = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        sub_b3686d23.length++
        address(sub_b3686d23[sub_b3686d23.length].field_0) = arg1
        address(sub_b3686d23[sub_b3686d23.length].field_256) = arg2
        sub_b3686d23[sub_b3686d23.length].field_512 = arg3
        uint8(sub_b3686d23[sub_b3686d23.length].field_768) = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 1000 * block.timestamp
    address(sub_b3686d23[sub_b3686d23.length].field_1280) = sub_bf1179adAddress
    if allowance[address(msg.sender)][stor9] <= 0:
        allowance[address(msg.sender)][stor9] = arg3
    else:
        require allowance[address(msg.sender)][stor9] + arg3 >= allowance[address(msg.sender)][stor9]
        allowance[address(msg.sender)][stor9] += arg3
    emit 0xa34ea2d2: arg3, msg.sender, sub_bf1179adAddress, arg2
    emit Transfer(0, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require 0 < stor11.length
    idx = 0
    while address(stor11[idx]) != msg.sender:
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    require 0 < stor11.length
    idx = 0
    while arg1 != address(stor11[idx]):
        require idx + 1 < stor11.length
        mem[0] = 11
        idx = idx + 1
        continue 
    if not block.timestamp:
        require stor13[address(msg.sender)] <= 0
        require -stor13[address(msg.sender)] >= sub_e7ccd0ec
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        require stor13[address(msg.sender)] <= 1000 * block.timestamp
        require (1000 * block.timestamp) - stor13[address(msg.sender)] >= sub_e7ccd0ec
    if balanceOf[address(msg.sender)] < threshold:
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
        return 1
    if msg.sender == CEOAddress:
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
        return 1
    if msg.sender == CFOAddress:
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
        return 1
    if msg.sender == sub_bf1179adAddress:
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
        return 1
    if not block.timestamp:
        sub_b3686d23.length++
        address(sub_b3686d23[sub_b3686d23.length].field_0) = msg.sender
        address(sub_b3686d23[sub_b3686d23.length].field_256) = arg1
        sub_b3686d23[sub_b3686d23.length].field_512 = arg2
        uint8(sub_b3686d23[sub_b3686d23.length].field_768) = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        sub_b3686d23.length++
        address(sub_b3686d23[sub_b3686d23.length].field_0) = msg.sender
        address(sub_b3686d23[sub_b3686d23.length].field_256) = arg1
        sub_b3686d23[sub_b3686d23.length].field_512 = arg2
        uint8(sub_b3686d23[sub_b3686d23.length].field_768) = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 1000 * block.timestamp
    address(sub_b3686d23[sub_b3686d23.length].field_1280) = sub_bf1179adAddress
    if allowance[address(msg.sender)][stor9] <= 0:
        allowance[address(msg.sender)][stor9] = arg2
    else:
        require allowance[address(msg.sender)][stor9] + arg2 >= allowance[address(msg.sender)][stor9]
        allowance[address(msg.sender)][stor9] += arg2
    emit 0xa34ea2d2: arg2, msg.sender, sub_bf1179adAddress, arg1
    emit Transfer(0, msg.sender, arg1);
    return 1
}

function sub_f33c11ab(?) {
    require msg.sender == sub_bf1179adAddress
    require arg1 < sub_b3686d23.length
    require uint8(sub_b3686d23[arg1].field_768) <= 2
    require uint8(sub_b3686d23[arg1].field_768) == 2
    require address(sub_b3686d23[arg1].field_1280) == sub_bf1179adAddress
    if not arg2:
        uint8(sub_b3686d23[arg1].field_768) = 0
        require msg.sender == sub_bf1179adAddress
        require address(sub_b3686d23[arg1].field_0)
        require sub_b3686d23[arg1].field_512 <= allowance[address(stor21[arg1].field_0)][stor9]
        allowance[address(stor21[arg1].field_0)][stor9] -= sub_b3686d23[arg1].field_512
        emit 0x6538ba77: sub_b3686d23[arg1].field_512, address(sub_b3686d23[arg1].field_0), sub_bf1179adAddress
    else:
        require sub_b3686d23[arg1].field_512 <= allowance[address(stor21[arg1].field_0)][stor9]
        require sub_b3686d23[arg1].field_512 <= allowance[address(stor21[arg1].field_0)][stor9]
        allowance[address(stor21[arg1].field_0)][stor9] -= sub_b3686d23[arg1].field_512
        require address(sub_b3686d23[arg1].field_256)
        require balanceOf[address(stor21[arg1].field_0)] >= sub_b3686d23[arg1].field_512
        require balanceOf[address(stor21[arg1].field_256)] + sub_b3686d23[arg1].field_512 >= balanceOf[address(stor21[arg1].field_256)]
        require balanceOf[address(stor21[arg1].field_256)] + sub_b3686d23[arg1].field_512 > balanceOf[address(stor21[arg1].field_256)]
        require 0 < stor11.length
        idx = 0
        while address(sub_b3686d23[arg1].field_0) != address(stor11[idx]):
            require idx + 1 < stor11.length
            mem[0] = 11
            idx = idx + 1
            continue 
        require 0 < stor11.length
        idx = 0
        while address(sub_b3686d23[arg1].field_256) != address(stor11[idx]):
            require idx + 1 < stor11.length
            mem[0] = 11
            idx = idx + 1
            continue 
        if not block.timestamp:
            require stor13[address(stor21[arg1].field_0)] <= 0
            require -stor13[address(stor21[arg1].field_0)] >= sub_e7ccd0ec
        else:
            require block.timestamp
            require 1000 * block.timestamp / block.timestamp == 1000
            require stor13[address(stor21[arg1].field_0)] <= 1000 * block.timestamp
            require (1000 * block.timestamp) - stor13[address(stor21[arg1].field_0)] >= sub_e7ccd0ec
        if balanceOf[address(stor21[arg1].field_0)] < threshold:
            require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
            require sub_b3686d23[arg1].field_512 <= balanceOf[address(stor21[arg1].field_0)]
            balanceOf[address(stor21[arg1].field_0)] -= sub_b3686d23[arg1].field_512
            require balanceOf[address(stor21[arg1].field_256)] + sub_b3686d23[arg1].field_512 >= balanceOf[address(stor21[arg1].field_256)]
            balanceOf[address(stor21[arg1].field_256)] += sub_b3686d23[arg1].field_512
            emit Transfer(sub_b3686d23[arg1].field_512, address(sub_b3686d23[arg1].field_0), address(sub_b3686d23[arg1].field_256));
            require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
            require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] == balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)]
        else:
            if msg.sender == CEOAddress:
                require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
                require sub_b3686d23[arg1].field_512 <= balanceOf[address(stor21[arg1].field_0)]
                balanceOf[address(stor21[arg1].field_0)] -= sub_b3686d23[arg1].field_512
                require balanceOf[address(stor21[arg1].field_256)] + sub_b3686d23[arg1].field_512 >= balanceOf[address(stor21[arg1].field_256)]
                balanceOf[address(stor21[arg1].field_256)] += sub_b3686d23[arg1].field_512
                emit Transfer(sub_b3686d23[arg1].field_512, address(sub_b3686d23[arg1].field_0), address(sub_b3686d23[arg1].field_256));
                require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
                require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] == balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)]
            else:
                if msg.sender == CFOAddress:
                    require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
                    require sub_b3686d23[arg1].field_512 <= balanceOf[address(stor21[arg1].field_0)]
                    balanceOf[address(stor21[arg1].field_0)] -= sub_b3686d23[arg1].field_512
                    require balanceOf[address(stor21[arg1].field_256)] + sub_b3686d23[arg1].field_512 >= balanceOf[address(stor21[arg1].field_256)]
                    balanceOf[address(stor21[arg1].field_256)] += sub_b3686d23[arg1].field_512
                    emit Transfer(sub_b3686d23[arg1].field_512, address(sub_b3686d23[arg1].field_0), address(sub_b3686d23[arg1].field_256));
                    require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
                    require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] == balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)]
                else:
                    if msg.sender == sub_bf1179adAddress:
                        require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
                        require sub_b3686d23[arg1].field_512 <= balanceOf[address(stor21[arg1].field_0)]
                        balanceOf[address(stor21[arg1].field_0)] -= sub_b3686d23[arg1].field_512
                        require balanceOf[address(stor21[arg1].field_256)] + sub_b3686d23[arg1].field_512 >= balanceOf[address(stor21[arg1].field_256)]
                        balanceOf[address(stor21[arg1].field_256)] += sub_b3686d23[arg1].field_512
                        emit Transfer(sub_b3686d23[arg1].field_512, address(sub_b3686d23[arg1].field_0), address(sub_b3686d23[arg1].field_256));
                        require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] >= balanceOf[address(stor21[arg1].field_0)]
                        require balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)] == balanceOf[address(stor21[arg1].field_0)] + balanceOf[address(stor21[arg1].field_256)]
                    else:
                        if not block.timestamp:
                            sub_b3686d23.length++
                            address(sub_b3686d23[sub_b3686d23.length].field_0) = address(sub_b3686d23[arg1].field_0)
                            address(sub_b3686d23[sub_b3686d23.length].field_256) = address(sub_b3686d23[arg1].field_256)
                            sub_b3686d23[sub_b3686d23.length].field_512 = sub_b3686d23[arg1].field_512
                            uint8(sub_b3686d23[sub_b3686d23.length].field_768) = 2
                            sub_b3686d23[sub_b3686d23.length].field_1024 = 0
                        else:
                            require block.timestamp
                            require 1000 * block.timestamp / block.timestamp == 1000
                            sub_b3686d23.length++
                            address(sub_b3686d23[sub_b3686d23.length].field_0) = address(sub_b3686d23[arg1].field_0)
                            address(sub_b3686d23[sub_b3686d23.length].field_256) = address(sub_b3686d23[arg1].field_256)
                            sub_b3686d23[sub_b3686d23.length].field_512 = sub_b3686d23[arg1].field_512
                            uint8(sub_b3686d23[sub_b3686d23.length].field_768) = 2
                            sub_b3686d23[sub_b3686d23.length].field_1024 = 1000 * block.timestamp
                        address(sub_b3686d23[sub_b3686d23.length].field_1280) = sub_bf1179adAddress
                        if allowance[address(msg.sender)][stor9] <= 0:
                            allowance[address(msg.sender)][stor9] = sub_b3686d23[arg1].field_512
                        else:
                            require allowance[address(msg.sender)][stor9] + sub_b3686d23[arg1].field_512 >= allowance[address(msg.sender)][stor9]
                            allowance[address(msg.sender)][stor9] += sub_b3686d23[arg1].field_512
                        emit 0xa34ea2d2: sub_b3686d23[arg1].field_512, msg.sender, sub_bf1179adAddress, address(sub_b3686d23[arg1].field_256)
                        emit Transfer(0, address(sub_b3686d23[arg1].field_0), address(sub_b3686d23[arg1].field_256));
        uint8(sub_b3686d23[arg1].field_768) = 1
    return 1
}



}
