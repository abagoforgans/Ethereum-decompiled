contract main {




// =====================  Runtime code  =====================


uint128 companyName;
uint128 sub_1c790e9c; offset 128
uint128 sub_76ff023b;
uint128 sub_d351b7c2; offset 128
uint128 sub_73849735;
address CEOAddress;
uint128 sub_ae204be1;
address CFOAddress;
uint128 sub_99130b8b;
address sub_bf1179adAddress;
uint256 threshold;
array of address stor9;
mapping of struct sub_cc8076f7;
mapping of uint8 stor11;
mapping of uint256 stor12;
uint256 sub_e7ccd0ec;
array of address stor14;
mapping of uint8 stor15;
uint8 decimals; offset 224
uint128 symbol; offset 160
address nameAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct sub_b3686d23;

function name() {
    return Mask(160, 96, nameAddress)
}

function totalSupply() {
    return totalSupply
}

function sub_1c790e9c(?) {
    return (sub_1c790e9c << 128)
}

function CFO() {
    return CFOAddress
}

function decimals() {
    return decimals
}

function threshold() {
    return threshold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_73849735(?) {
    return Mask(128, 128, sub_73849735)
}

function sub_76ff023b(?) {
    return Mask(128, 128, sub_76ff023b)
}

function symbol() {
    return (symbol << 192)
}

function sub_99130b8b(?) {
    return Mask(128, 128, sub_99130b8b)
}

function checkWhiteList(address arg1) {
    return bool(stor11[address(arg1)])
}

function CEO() {
    return CEOAddress
}

function sub_ae204be1(?) {
    return Mask(128, 128, sub_ae204be1)
}

function sub_b3686d23(?) {
    require arg1 < sub_b3686d23.length
    require sub_b3686d23[arg1].field_768 <= 2
    return sub_b3686d23[arg1].field_0, 
           sub_b3686d23[arg1].field_256,
           sub_b3686d23[arg1].field_512,
           sub_b3686d23[arg1].field_768,
           sub_b3686d23[arg1].field_1024,
           sub_b3686d23[arg1].field_1280
}

function sub_bf1179ad(?) {
    return sub_bf1179adAddress
}

function totalUsers() {
    return stor9.length
}

function sub_c31b2d27(?) {
    return bool(stor15[address(arg1)])
}

function sub_cc8076f7(?) {
    require msg.sender == arg1
    require stor11[address(arg1)]
    return Mask(160, 96, sub_cc8076f7[address(arg1)].field_0), 
           sub_cc8076f7[address(arg1)].field_0,
           sub_cc8076f7[address(arg1)].field_256
}

function sub_d351b7c2(?) {
    return (sub_d351b7c2 << 128)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7ccd0ec(?) {
    return sub_e7ccd0ec
}

function companyName() {
    return Mask(128, 128, companyName)
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

function sub_6461ac6f(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    stor15[address(arg1)] = 0
    emit 0x468a5c1c: arg1
    return 1
}

function unlockUser(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    stor12[address(arg1)] = 0
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

function sub_33779423(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    emit 0xddba8f8a: Mask(128, 128, sub_99130b8b), Mask(128, 128, arg1)
    sub_99130b8b = arg1
}

function sub_e6a686b5(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    emit 0x94736ff8: Mask(128, 128, sub_ae204be1), Mask(128, 128, arg1)
    sub_ae204be1 = arg1
}

function deleteUser(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require stor11[address(arg1)]
    stor11[address(arg1)] = 0
    emit UserRemoved(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != sub_bf1179adAddress
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_dbfa9630(?) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require not stor15[address(arg1)]
    stor14.length++
    stor14[stor14.length] = arg1
    stor15[address(arg1)] = 1
    emit 0x9f70989a: arg1
    return 1
}

function addUser(address arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    require not stor11[address(arg1)]
    stor9.length++
    stor9[stor9.length] = arg1
    stor11[address(arg1)] = 1
    emit 0x57b45623: arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg1 != sub_bf1179adAddress
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function addUsers(address[] arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    idx = 0
    while idx < arg1.length:
        stor9.length++
        mem[0] = 9
        stor9[stor9.length] = address(cd[((32 * idx) + arg1 + 36)])
        emit 0x57b45623: address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
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

function sub_14049e7c(?) {
    require stor11[address(arg1)]
    if arg1 != msg.sender:
        if CEOAddress != msg.sender:
            require msg.sender == CFOAddress
    sub_cc8076f7[address(arg1)].field_0 = Mask(160, 96, arg2) >> 96
    sub_cc8076f7[address(arg1)].field_160 = arg3
    sub_cc8076f7[address(arg1)].field_256 = arg4
    emit 0x776267e8: Mask(160, 96, arg2), arg3 << 240, arg4, arg1
    return 1
}

function lockUser(address arg1) {
    if not stor15[address(msg.sender)]:
        if CEOAddress != msg.sender:
            require msg.sender == CFOAddress
    if not block.timestamp:
        stor12[address(arg1)] = 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        stor12[address(arg1)] = 1000 * block.timestamp
    emit 0xc365f207: arg1
    return 1
}

function mint(uint256 arg1) {
    if CEOAddress != msg.sender:
        require msg.sender == CFOAddress
    balanceOf[stor3] += arg1
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
        require stor12[address(arg1)] <= 0
        if -stor12[address(arg1)] >= sub_e7ccd0ec:
            return 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        require stor12[address(arg1)] <= 1000 * block.timestamp
        if (1000 * block.timestamp) - stor12[address(arg1)] >= sub_e7ccd0ec:
            return 0
    return 1
}

function getPendingTxIDs() {
    idx = 0
    s = 0
    while idx < sub_b3686d23.length:
        require idx < sub_b3686d23.length
        mem[0] = 20
        require sub_b3686d23[idx].field_768 <= 2
        if sub_b3686d23[idx].field_768 != 2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if uint32(s):
        mem[128 len 32 * uint32(s)] = code.data[20537 len 32 * uint32(s)]
    idx = 0
    t = 0
    while idx < sub_b3686d23.length:
        require idx < sub_b3686d23.length
        mem[0] = 20
        require sub_b3686d23[idx].field_768 <= 2
        if sub_b3686d23[idx].field_768 != 2:
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require sub_bf1179adAddress != msg.sender
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require stor11[address(arg1)]
    require stor11[address(arg2)]
    if not block.timestamp:
        require stor12[address(arg1)] <= 0
        require -stor12[address(arg1)] >= sub_e7ccd0ec
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        require stor12[address(arg1)] <= 1000 * block.timestamp
        require (1000 * block.timestamp) - stor12[address(arg1)] >= sub_e7ccd0ec
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
        sub_b3686d23[sub_b3686d23.length].field_0 = arg1
        sub_b3686d23[sub_b3686d23.length].field_256 = arg2
        sub_b3686d23[sub_b3686d23.length].field_512 = arg3
        sub_b3686d23[sub_b3686d23.length].field_768 = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        sub_b3686d23.length++
        sub_b3686d23[sub_b3686d23.length].field_0 = arg1
        sub_b3686d23[sub_b3686d23.length].field_256 = arg2
        sub_b3686d23[sub_b3686d23.length].field_512 = arg3
        sub_b3686d23[sub_b3686d23.length].field_768 = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 1000 * block.timestamp
    sub_b3686d23[sub_b3686d23.length].field_1280 = sub_bf1179adAddress
    if allowance[address(msg.sender)][stor7] <= 0:
        allowance[address(msg.sender)][stor7] = arg3
    else:
        require allowance[address(msg.sender)][stor7] + arg3 >= allowance[address(msg.sender)][stor7]
        allowance[address(msg.sender)][stor7] += arg3
    emit 0xa34ea2d2: arg3, msg.sender, sub_bf1179adAddress, arg2
    emit Transfer(0, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require stor11[address(msg.sender)]
    require stor11[address(arg1)]
    if not block.timestamp:
        require stor12[address(msg.sender)] <= 0
        require -stor12[address(msg.sender)] >= sub_e7ccd0ec
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        require stor12[address(msg.sender)] <= 1000 * block.timestamp
        require (1000 * block.timestamp) - stor12[address(msg.sender)] >= sub_e7ccd0ec
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
        sub_b3686d23[sub_b3686d23.length].field_0 = msg.sender
        sub_b3686d23[sub_b3686d23.length].field_256 = arg1
        sub_b3686d23[sub_b3686d23.length].field_512 = arg2
        sub_b3686d23[sub_b3686d23.length].field_768 = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 0
    else:
        require block.timestamp
        require 1000 * block.timestamp / block.timestamp == 1000
        sub_b3686d23.length++
        sub_b3686d23[sub_b3686d23.length].field_0 = msg.sender
        sub_b3686d23[sub_b3686d23.length].field_256 = arg1
        sub_b3686d23[sub_b3686d23.length].field_512 = arg2
        sub_b3686d23[sub_b3686d23.length].field_768 = 2
        sub_b3686d23[sub_b3686d23.length].field_1024 = 1000 * block.timestamp
    sub_b3686d23[sub_b3686d23.length].field_1280 = sub_bf1179adAddress
    if allowance[address(msg.sender)][stor7] <= 0:
        allowance[address(msg.sender)][stor7] = arg2
    else:
        require allowance[address(msg.sender)][stor7] + arg2 >= allowance[address(msg.sender)][stor7]
        allowance[address(msg.sender)][stor7] += arg2
    emit 0xa34ea2d2: arg2, msg.sender, sub_bf1179adAddress, arg1
    emit Transfer(0, msg.sender, arg1);
    return 1
}

function sub_f33c11ab(?) {
    require msg.sender == sub_bf1179adAddress
    require arg1 < sub_b3686d23.length
    require sub_b3686d23[arg1].field_768 <= 2
    require sub_b3686d23[arg1].field_768 == 2
    require sub_b3686d23[arg1].field_1280 == sub_bf1179adAddress
    if not arg2:
        sub_b3686d23[arg1].field_768 = 0
        require msg.sender == sub_bf1179adAddress
        require sub_b3686d23[arg1].field_0
        require sub_b3686d23[arg1].field_512 <= allowance[stor20[arg1].field_0][stor7]
        allowance[stor20[arg1].field_0][stor7] -= sub_b3686d23[arg1].field_512
        emit 0x6538ba77: sub_b3686d23[arg1].field_512, sub_b3686d23[arg1].field_0, sub_bf1179adAddress
    else:
        require sub_b3686d23[arg1].field_512 <= allowance[stor20[arg1].field_0][stor7]
        require sub_b3686d23[arg1].field_512 <= allowance[stor20[arg1].field_0][stor7]
        allowance[stor20[arg1].field_0][stor7] -= sub_b3686d23[arg1].field_512
        require sub_b3686d23[arg1].field_256
        require balanceOf[stor20[arg1].field_0] >= sub_b3686d23[arg1].field_512
        require balanceOf[stor20[arg1].field_256] + sub_b3686d23[arg1].field_512 >= balanceOf[stor20[arg1].field_256]
        require balanceOf[stor20[arg1].field_256] + sub_b3686d23[arg1].field_512 > balanceOf[stor20[arg1].field_256]
        require stor11[stor20[arg1].field_0]
        require stor11[stor20[arg1].field_256]
        if not block.timestamp:
            require stor12[stor20[arg1].field_0] <= 0
            require -stor12[stor20[arg1].field_0] >= sub_e7ccd0ec
        else:
            require block.timestamp
            require 1000 * block.timestamp / block.timestamp == 1000
            require stor12[stor20[arg1].field_0] <= 1000 * block.timestamp
            require (1000 * block.timestamp) - stor12[stor20[arg1].field_0] >= sub_e7ccd0ec
        if balanceOf[stor20[arg1].field_0] < threshold:
            require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
            require sub_b3686d23[arg1].field_512 <= balanceOf[stor20[arg1].field_0]
            balanceOf[stor20[arg1].field_0] -= sub_b3686d23[arg1].field_512
            require balanceOf[stor20[arg1].field_256] + sub_b3686d23[arg1].field_512 >= balanceOf[stor20[arg1].field_256]
            balanceOf[stor20[arg1].field_256] += sub_b3686d23[arg1].field_512
            emit Transfer(sub_b3686d23[arg1].field_512, sub_b3686d23[arg1].field_0, sub_b3686d23[arg1].field_256);
            require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
            require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] == balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256]
        else:
            if msg.sender == CEOAddress:
                require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
                require sub_b3686d23[arg1].field_512 <= balanceOf[stor20[arg1].field_0]
                balanceOf[stor20[arg1].field_0] -= sub_b3686d23[arg1].field_512
                require balanceOf[stor20[arg1].field_256] + sub_b3686d23[arg1].field_512 >= balanceOf[stor20[arg1].field_256]
                balanceOf[stor20[arg1].field_256] += sub_b3686d23[arg1].field_512
                emit Transfer(sub_b3686d23[arg1].field_512, sub_b3686d23[arg1].field_0, sub_b3686d23[arg1].field_256);
                require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
                require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] == balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256]
            else:
                if msg.sender == CFOAddress:
                    require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
                    require sub_b3686d23[arg1].field_512 <= balanceOf[stor20[arg1].field_0]
                    balanceOf[stor20[arg1].field_0] -= sub_b3686d23[arg1].field_512
                    require balanceOf[stor20[arg1].field_256] + sub_b3686d23[arg1].field_512 >= balanceOf[stor20[arg1].field_256]
                    balanceOf[stor20[arg1].field_256] += sub_b3686d23[arg1].field_512
                    emit Transfer(sub_b3686d23[arg1].field_512, sub_b3686d23[arg1].field_0, sub_b3686d23[arg1].field_256);
                    require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
                    require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] == balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256]
                else:
                    if msg.sender == sub_bf1179adAddress:
                        require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
                        require sub_b3686d23[arg1].field_512 <= balanceOf[stor20[arg1].field_0]
                        balanceOf[stor20[arg1].field_0] -= sub_b3686d23[arg1].field_512
                        require balanceOf[stor20[arg1].field_256] + sub_b3686d23[arg1].field_512 >= balanceOf[stor20[arg1].field_256]
                        balanceOf[stor20[arg1].field_256] += sub_b3686d23[arg1].field_512
                        emit Transfer(sub_b3686d23[arg1].field_512, sub_b3686d23[arg1].field_0, sub_b3686d23[arg1].field_256);
                        require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] >= balanceOf[stor20[arg1].field_0]
                        require balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256] == balanceOf[stor20[arg1].field_0] + balanceOf[stor20[arg1].field_256]
                    else:
                        if not block.timestamp:
                            sub_b3686d23.length++
                            sub_b3686d23[sub_b3686d23.length].field_0 = sub_b3686d23[arg1].field_0
                            sub_b3686d23[sub_b3686d23.length].field_256 = sub_b3686d23[arg1].field_256
                            sub_b3686d23[sub_b3686d23.length].field_512 = sub_b3686d23[arg1].field_512
                            sub_b3686d23[sub_b3686d23.length].field_768 = 2
                            sub_b3686d23[sub_b3686d23.length].field_1024 = 0
                        else:
                            require block.timestamp
                            require 1000 * block.timestamp / block.timestamp == 1000
                            sub_b3686d23.length++
                            sub_b3686d23[sub_b3686d23.length].field_0 = sub_b3686d23[arg1].field_0
                            sub_b3686d23[sub_b3686d23.length].field_256 = sub_b3686d23[arg1].field_256
                            sub_b3686d23[sub_b3686d23.length].field_512 = sub_b3686d23[arg1].field_512
                            sub_b3686d23[sub_b3686d23.length].field_768 = 2
                            sub_b3686d23[sub_b3686d23.length].field_1024 = 1000 * block.timestamp
                        sub_b3686d23[sub_b3686d23.length].field_1280 = sub_bf1179adAddress
                        if allowance[address(msg.sender)][stor7] <= 0:
                            allowance[address(msg.sender)][stor7] = sub_b3686d23[arg1].field_512
                        else:
                            require allowance[address(msg.sender)][stor7] + sub_b3686d23[arg1].field_512 >= allowance[address(msg.sender)][stor7]
                            allowance[address(msg.sender)][stor7] += sub_b3686d23[arg1].field_512
                        emit 0xa34ea2d2: sub_b3686d23[arg1].field_512, msg.sender, sub_bf1179adAddress, sub_b3686d23[arg1].field_256
                        emit Transfer(0, sub_b3686d23[arg1].field_0, sub_b3686d23[arg1].field_256);
        sub_b3686d23[arg1].field_768 = 1
    return 1
}



}
