contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of uint256 stor13;
array of uint256 stor14;
uint256 stor19;
uint8 stor20;

function _fallback() payable {
    stor20 = 0
    require not msg.value
    mem[96 len -8735] = code.data[9433 len -8735]
    mem[64] = -8639
    stor0 = msg.sender
    stor3 = mem[192]
    stor1[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor2[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor0 = msg.sender
    stor13[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor14[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    require stor0 == msg.sender
    stor6 = 0
    stor7 = mem[160]
    stor19 = mem[288]
    stor12 = mem[320]
    stor9 = (60 * mem[128]) + block.timestamp
    stor10 = mem[192]
    emit FundTransfer(mem[108 len 20], 0, mem[192], 1);
    stor0 = mem[108 len 20]
    stor11 = 1
    stor4[address(mem[96])] = mem[192]
    return code.data[698 len 8735]
}



// =====================  Runtime code  =====================


#
#  - sub_3b81e317(?)
#
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor8;
uint256 crowdsaleDeadline;
uint256 tokensDistributed;
uint256 sub_4992f1b1;
uint256 sub_840233bb;
array of struct sub_f0bbe916;
array of uint256 sub_3d49bc2c;
mapping of uint256 sub_93b45253;
mapping of uint256 sub_9439e3fe;
mapping of address sub_3b3df417;
mapping of uint256 sub_83fd5f2c;
uint8 stor20;

function name() {
    return name[0 len name.length]
}

function tokensDistributed() {
    return tokensDistributed
}

function totalSupply() {
    return totalSupply
}

function crowdsaleDeadline() {
    return crowdsaleDeadline
}

function sub_3b3df417(?) {
    return sub_3b3df417[arg1][arg2]
}

function sub_3d49bc2c(?) {
    return sub_3d49bc2c[0 len sub_3d49bc2c.length]
}

function sub_4992f1b1(?) {
    return sub_4992f1b1
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_83fd5f2c(?) {
    return sub_83fd5f2c[arg1][arg2]
}

function sub_840233bb(?) {
    return sub_840233bb
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function sub_93b45253(?) {
    return sub_93b45253[arg1]
}

function sub_9439e3fe(?) {
    return sub_9439e3fe[arg1][arg2]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function sub_f0bbe916(?) {
    return sub_f0bbe916[0 len sub_f0bbe916.length].field_0
}

function getBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_643e1b4f(?) {
    require totalSupply
    return (100000 * balanceOf[address(arg1)] / totalSupply)
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function sub_52464d1c(?) {
    if block.timestamp >= crowdsaleDeadline:
        emit 0xf763a771: owner, tokensDistributed, sub_4992f1b1
        stor20 = 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_563abf1d(?) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit FundTransfer(owner, arg1, 0, 0);
}

function sub_c599fad8(?) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length < 32
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_1da9a6b2(?) {
    require balanceOf[address(msg.sender)] > 0
    require totalSupply
    emit 0x67f3b292: address(msg.sender), balanceOf[address(msg.sender)], 100000 * balanceOf[address(msg.sender)] / totalSupply, arg1, arg2
}

function sub_30fcdebd(?) {
    require owner == msg.sender
    if not balanceOf[address(arg1)]:
        sub_4992f1b1++
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, this.address, arg1);
    tokensDistributed += arg2
}

function sub_1e5eb4ee(?) {
    require balanceOf[address(msg.sender)] >= 1
    emit 0xcb359581: msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, arg3
    require balanceOf[address(msg.sender)] >= 1
    balanceOf[address(msg.sender)]--
    totalSupply--
    if not balanceOf[address(msg.sender)]:
        sub_4992f1b1--
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_0e3d2122(?) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length < 32
    require balanceOf[address(msg.sender)] >= 10
    require arg1.length < 32
    sub_93b45253[address(msg.sender)] = mem[128]
    emit 0xf5ba39e0: msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, arg3
    require balanceOf[address(msg.sender)] >= 10
    balanceOf[address(msg.sender)] -= 10
    totalSupply -= 10
    if not balanceOf[address(msg.sender)]:
        sub_4992f1b1--
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= stor5[address(arg1)][address(msg.sender)]
    stor5[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_9f6cbc97(?) {
    require owner == msg.sender
    sub_840233bb = arg1
    mem[320] = uint256(sub_f0bbe916.field_0)
    idx = 320
    s = 0
    while sub_f0bbe916.length + 320 > idx + 32:
        mem[idx + 32] = sub_f0bbe916[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xf30bb228: msg.sender, 96, 192, 55, 'The maximum of daily reward is n', 'ow updated for token ->', sub_f0bbe916.length, mem[320 len sub_f0bbe916.length + (floor32(sub_f0bbe916.length - 1) + -sub_f0bbe916.length + 32 % 32)]
}

function sub_63235d24(?) {
    require owner == msg.sender
    crowdsaleDeadline = (60 * arg1) + block.timestamp
    stor20 = 0
    mem[320] = uint256(sub_f0bbe916.field_0)
    idx = 320
    s = 0
    while sub_f0bbe916.length + 320 > idx + 32:
        mem[idx + 32] = sub_f0bbe916[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xf30bb228: msg.sender, 96, 192, 38, 'The crowdsale is extended for to', 'ken ->', sub_f0bbe916.length, mem[320 len sub_f0bbe916.length + (floor32(sub_f0bbe916.length - 1) + -sub_f0bbe916.length + 32 % 32)]
}

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor8[address(msg.sender)]
    require not stor8[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    if sellPrice > 0:
        call msg.sender with:
           value arg1 * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    totalSupply -= arg1
}

function sub_a0dc4814(?) {
    if not balanceOf[address(arg1)]:
        sub_4992f1b1++
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require totalSupply
    emit 0x67f3b292: address(arg1), balanceOf[address(arg1)], 100000 * balanceOf[address(arg1)] / totalSupply, 'unknown', 'unknown'
    emit 0x67f3b292: address(msg.sender), balanceOf[address(msg.sender)], 100000 * balanceOf[address(msg.sender)] / totalSupply, arg3, arg4
    if not balanceOf[address(msg.sender)]:
        sub_4992f1b1--
}

function _fallback() payable {
    if not stor20:
        require buyPrice
        if not balanceOf[address(msg.sender)]:
            sub_4992f1b1++
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        tokensDistributed += msg.value / buyPrice
        emit FundTransfer(address(msg.sender), msg.value, msg.value / buyPrice, 1);
    else:
        mem[320] = uint256(sub_f0bbe916.field_0)
        idx = 320
        s = 0
        while sub_f0bbe916.length + 320 > idx + 32:
            mem[idx + 32] = sub_f0bbe916[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf30bb228: msg.sender, 96, 192, 57, 'Sorry: The crowdsale has ended. ', 'You cannot buy anymore ->', sub_f0bbe916.length, mem[320 len sub_f0bbe916.length + (floor32(sub_f0bbe916.length - 1) + -sub_f0bbe916.length + 32 % 32)]
        require not stor20
        require buyPrice
        if not balanceOf[address(msg.sender)]:
            sub_4992f1b1++
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        tokensDistributed += msg.value / buyPrice
        emit FundTransfer(msg.sender, msg.value, msg.value / buyPrice, 1);
    if block.timestamp >= crowdsaleDeadline:
        emit 0xf763a771: owner, tokensDistributed, sub_4992f1b1
        stor20 = 1
}

function sub_37cecde4(?) payable {
    if not stor20:
        require buyPrice
        if not balanceOf[address(msg.sender)]:
            sub_4992f1b1++
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        tokensDistributed += msg.value / buyPrice
        emit FundTransfer(address(msg.sender), msg.value, msg.value / buyPrice, 1);
    else:
        mem[320] = uint256(sub_f0bbe916.field_0)
        idx = 320
        s = 0
        while sub_f0bbe916.length + 320 > idx + 32:
            mem[idx + 32] = sub_f0bbe916[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf30bb228: msg.sender, 96, 192, 57, 'Sorry: The crowdsale has ended. ', 'You cannot buy anymore ->', sub_f0bbe916.length, mem[320 len sub_f0bbe916.length + (floor32(sub_f0bbe916.length - 1) + -sub_f0bbe916.length + 32 % 32)]
        require not stor20
        require buyPrice
        if not balanceOf[address(msg.sender)]:
            sub_4992f1b1++
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        tokensDistributed += msg.value / buyPrice
        emit FundTransfer(msg.sender, msg.value, msg.value / buyPrice, 1);
    if block.timestamp >= crowdsaleDeadline:
        emit 0xf763a771: owner, tokensDistributed, sub_4992f1b1
        stor20 = 1
}

function sub_08f3b208(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s
    mem[64] = (_msize + 224) + ceil32(s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + ceil32(s) + 32] = 32
    mem[(_msize + 224) + ceil32(s) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + ceil32(s) + 96 len ceil32(mem[_msize + 224])] = mem[(_msize + 224) + 32 len ceil32(mem[_msize + 224])]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + ceil32(s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[(_msize + 224) + ceil32(s) + 64 len floor32(mem[_msize + 224]) + 64]
}

function sub_669edcdc(?) payable {
    if not stor20:
        require buyPrice
        if not balanceOf[address(msg.sender)]:
            sub_4992f1b1++
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        tokensDistributed += msg.value / buyPrice
        emit FundTransfer(address(msg.sender), msg.value, msg.value / buyPrice, 1);
        if block.timestamp >= crowdsaleDeadline:
            emit 0xf763a771: owner, tokensDistributed, sub_4992f1b1
            stor20 = 1
        require totalSupply
        emit 0x67f3b292: address(msg.sender), balanceOf[address(msg.sender)], 100000 * balanceOf[address(msg.sender)] / totalSupply, arg1, arg2
    else:
        mem[320] = uint256(sub_f0bbe916.field_0)
        idx = 320
        s = 0
        while sub_f0bbe916.length + 320 > idx + 32:
            mem[idx + 32] = sub_f0bbe916[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf30bb228: msg.sender, 96, 192, 57, 'Sorry: The crowdsale has ended. ', 'You cannot buy anymore ->', sub_f0bbe916.length, mem[320 len sub_f0bbe916.length + (floor32(sub_f0bbe916.length - 1) + -sub_f0bbe916.length + 32 % 32)]
        require not stor20
        require buyPrice
        if not balanceOf[address(msg.sender)]:
            sub_4992f1b1++
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        tokensDistributed += msg.value / buyPrice
        emit FundTransfer(msg.sender, msg.value, msg.value / buyPrice, 1);
        if block.timestamp >= crowdsaleDeadline:
            emit 0xf763a771: owner, tokensDistributed, sub_4992f1b1
            stor20 = 1
        require totalSupply
        emit 0x67f3b292: msg.sender, balanceOf[address(msg.sender)], 100000 * balanceOf[address(msg.sender)] / totalSupply, arg1, arg2
}

function getToday() payable {
    mem[64] = 96
    require not msg.value
    s = (block.timestamp / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((block.timestamp / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(block.timestamp / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > block.timestamp:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(s - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if 1 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var50001:
                    if uint8(var50009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var50009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var50009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var50009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var50009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var50009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var50009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var50009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var50009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var50009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var50009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var50009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var50009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var50009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var50011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var50001 = 1 == uint8(idx)
                        var50009 = var50009 + 1
                        var50011 = var50011 + (24 * 3600)
                        continue 
                    var50001 = 3 == uint8(idx)
                    var50009 = var50009 + 1
                    var50011 = var50011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var50009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var50009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var56001:
                if uint8(var56009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var56009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var56009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var56009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var56009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var56009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var56009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var56009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var56009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var56009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var56009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var56009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var56009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var56009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var56011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var56001 = 1 == uint8(idx)
                    var56009 = var56009 + 1
                    var56011 = var56011 + (24 * 3600)
                    continue 
                var55009 = var56009 + 1
                var55011 = var56011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var56009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var56009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 3 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var51001:
                    if uint8(var51009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var51009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var51009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var51009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var51009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var51009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var51009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var51009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var51009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var51009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var51009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var51009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var51009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var51009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var51011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var51001 = 1 == uint8(idx)
                        var51009 = var51009 + 1
                        var51011 = var51011 + (24 * 3600)
                        continue 
                    var51001 = 3 == uint8(idx)
                    var51009 = var51009 + 1
                    var51011 = var51011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var51009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var51009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var57001:
                if uint8(var57009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var57009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var57009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var57009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var57009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var57009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var57009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var57009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var57009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var57009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var57009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var57009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var57009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var57009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var57011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var57001 = 1 == uint8(idx)
                    var57009 = var57009 + 1
                    var57011 = var57011 + (24 * 3600)
                    continue 
                var56009 = var57009 + 1
                var56011 = var57011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var57009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var57009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 5 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var52001:
                    if uint8(var52009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var52009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var52009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var52009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var52009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var52009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var52009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var52009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var52009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var52009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var52009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var52009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var52009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var52009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var52011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var52001 = 1 == uint8(idx)
                        var52009 = var52009 + 1
                        var52011 = var52011 + (24 * 3600)
                        continue 
                    var52001 = 3 == uint8(idx)
                    var52009 = var52009 + 1
                    var52011 = var52011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var52009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var52009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var58001:
                if uint8(var58009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var58009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var58009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var58009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var58009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var58009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var58009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var58009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var58009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var58009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var58009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var58009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var58009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var58009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var58011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var58001 = 1 == uint8(idx)
                    var58009 = var58009 + 1
                    var58011 = var58011 + (24 * 3600)
                    continue 
                var57009 = var58009 + 1
                var57011 = var58011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var58009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var58009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 7 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var53001:
                    if uint8(var53009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var53009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var53009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var53009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var53009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var53009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var53009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var53009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var53009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var53009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var53009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var53009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var53009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var53009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var53011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var53001 = 1 == uint8(idx)
                        var53009 = var53009 + 1
                        var53011 = var53011 + (24 * 3600)
                        continue 
                    var53001 = 3 == uint8(idx)
                    var53009 = var53009 + 1
                    var53011 = var53011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var53009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var53009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var59001:
                if uint8(var59009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var59009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var59009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var59009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var59009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var59009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var59009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var59009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var59009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var59009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var59009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var59009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var59009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var59009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var59011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var59001 = 1 == uint8(idx)
                    var59009 = var59009 + 1
                    var59011 = var59011 + (24 * 3600)
                    continue 
                var58009 = var59009 + 1
                var58011 = var59011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var59009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var59009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 8 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var54001:
                    if uint8(var54009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var54009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var54009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var54009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var54009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var54009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var54009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var54009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var54009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var54009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var54009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var54009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var54009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var54009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var54011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var54001 = 1 == uint8(idx)
                        var54009 = var54009 + 1
                        var54011 = var54011 + (24 * 3600)
                        continue 
                    var54001 = 3 == uint8(idx)
                    var54009 = var54009 + 1
                    var54011 = var54011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var54009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var54009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var60001:
                if uint8(var60009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var60009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var60009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var60009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var60009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var60009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var60009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var60009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var60009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var60009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var60009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var60009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var60009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var60009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var60011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var60001 = 1 == uint8(idx)
                    var60009 = var60009 + 1
                    var60011 = var60011 + (24 * 3600)
                    continue 
                var59009 = var60009 + 1
                var59011 = var60011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var60009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var60009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 10 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var55001:
                    if uint8(var55009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var55009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var55009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var55009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var55009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var55009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var55009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var55009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var55009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var55009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var55009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var55009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var55009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var55009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var55011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var55001 = 1 == uint8(idx)
                        var55009 = var55009 + 1
                        var55011 = var55011 + (24 * 3600)
                        continue 
                    var55001 = 3 == uint8(idx)
                    var55009 = var55009 + 1
                    var55011 = var55011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var55009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var55009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var61001:
                if uint8(var61009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var61009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var61009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var61009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var61009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var61009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var61009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var61009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var61009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var61009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var61009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var61009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var61009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var61009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var61011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var61001 = 1 == uint8(idx)
                    var61009 = var61009 + 1
                    var61011 = var61011 + (24 * 3600)
                    continue 
                var60009 = var61009 + 1
                var60011 = var61011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var61009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var61009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 12 == uint8(idx):
            if t + (744 * 24 * 3600) <= block.timestamp:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var56001:
                    if uint8(var56009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var56009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var56009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var56009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var56009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var56009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var56009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var56009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var56009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var56009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var56009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var56009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var56009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var56009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var56011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var56001 = 1 == uint8(idx)
                        var56009 = var56009 + 1
                        var56011 = var56011 + (24 * 3600)
                        continue 
                    var56001 = 3 == uint8(idx)
                    var56009 = var56009 + 1
                    var56011 = var56011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var56009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var56009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var62001:
                if uint8(var62009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var62009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var62009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var62009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var62009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var62009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var62009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var62009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var62009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var62009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var62009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var62009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var62009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var62009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var62011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var62001 = 1 == uint8(idx)
                    var62009 = var62009 + 1
                    var62011 = var62011 + (24 * 3600)
                    continue 
                var61009 = var62009 + 1
                var61011 = var62011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var62009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var62009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 4 == uint8(idx):
            if t + (720 * 24 * 3600) <= block.timestamp:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var60001:
                    if uint8(var60009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var60009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var60009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var60009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var60009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var60009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var60009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var60009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var60009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var60009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var60009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var60009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var60009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var60009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var60011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var60001 = 1 == uint8(idx)
                        var60009 = var60009 + 1
                        var60011 = var60011 + (24 * 3600)
                        continue 
                    var60001 = 3 == uint8(idx)
                    var60009 = var60009 + 1
                    var60011 = var60011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var60009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var60009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var66001:
                if uint8(var66009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var66009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var66009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var66009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var66009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var66009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var66009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var66009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var66009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var66009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var66009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var66009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var66009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var66009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var66011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var66001 = 1 == uint8(idx)
                    var66009 = var66009 + 1
                    var66011 = var66011 + (24 * 3600)
                    continue 
                var65009 = var66009 + 1
                var65011 = var66011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var66009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var66009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 6 == uint8(idx):
            if t + (720 * 24 * 3600) <= block.timestamp:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var61001:
                    if uint8(var61009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var61009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var61009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var61009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var61009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var61009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var61009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var61009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var61009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var61009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var61009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var61009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var61009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var61009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var61011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var61001 = 1 == uint8(idx)
                        var61009 = var61009 + 1
                        var61011 = var61011 + (24 * 3600)
                        continue 
                    var61001 = 3 == uint8(idx)
                    var61009 = var61009 + 1
                    var61011 = var61011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var61009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var61009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var67001:
                if uint8(var67009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var67009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var67009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var67009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var67009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var67009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var67009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var67009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var67009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var67009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var67009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var67009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var67009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var67009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var67011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var67001 = 1 == uint8(idx)
                    var67009 = var67009 + 1
                    var67011 = var67011 + (24 * 3600)
                    continue 
                var66009 = var67009 + 1
                var66011 = var67011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var67009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var67009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 9 == uint8(idx):
            if t + (720 * 24 * 3600) <= block.timestamp:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var62001:
                    if uint8(var62009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var62009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var62009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var62009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var62009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var62009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var62009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var62009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var62009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var62009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var62009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var62009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var62009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var62009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var62011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var62001 = 1 == uint8(idx)
                        var62009 = var62009 + 1
                        var62011 = var62011 + (24 * 3600)
                        continue 
                    var62001 = 3 == uint8(idx)
                    var62009 = var62009 + 1
                    var62011 = var62011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var62009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var62009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var68001:
                if uint8(var68009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var68009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var68009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var68009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var68009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var68009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var68009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var68009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var68009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var68009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var68009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var68009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var68009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var68009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var68011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var68001 = 1 == uint8(idx)
                    var68009 = var68009 + 1
                    var68011 = var68011 + (24 * 3600)
                    continue 
                var67009 = var68009 + 1
                var67011 = var68011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var68009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var68009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if 11 == uint8(idx):
            if t + (720 * 24 * 3600) <= block.timestamp:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var63001:
                    if uint8(var63009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var63009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var63009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var63009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var63009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var63009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var63009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var63009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var63009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var63009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var63009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var63009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var63009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var63009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var63011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var63001 = 1 == uint8(idx)
                        var63009 = var63009 + 1
                        var63011 = var63011 + (24 * 3600)
                        continue 
                    var63001 = 3 == uint8(idx)
                    var63009 = var63009 + 1
                    var63011 = var63011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var63009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var63009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var69001:
                if uint8(var69009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var69009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var69009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var69009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var69009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var69009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var69009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var69009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var69009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var69009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var69009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var69009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var69009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var69009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var69011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var69001 = 1 == uint8(idx)
                    var69009 = var69009 + 1
                    var69011 = var69011 + (24 * 3600)
                    continue 
                var68009 = var69009 + 1
                var68011 = var69011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var69009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var69009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if s % 4:
            if t + (672 * 24 * 3600) <= block.timestamp:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var68001:
                    if uint8(var68009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var68009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var68009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var68009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var68009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var68009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var68009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var68009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var68009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var68009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var68009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var68009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var68009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var68009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var68011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var68001 = 1 == uint8(idx)
                        var68009 = var68009 + 1
                        var68011 = var68011 + (24 * 3600)
                        continue 
                    var68001 = 3 == uint8(idx)
                    var68009 = var68009 + 1
                    var68011 = var68011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var68009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var68009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var74001:
                if uint8(var74009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var74009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var74009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var74009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var74009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var74009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var74009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var74009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var74009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var74009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var74009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var74009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var74009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var74009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var74011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var74001 = 1 == uint8(idx)
                    var74009 = var74009 + 1
                    var74011 = var74011 + (24 * 3600)
                    continue 
                var73009 = var74009 + 1
                var73011 = var74011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var74009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var74009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if uint16(uint16(s) % 100):
            if t + (696 * 24 * 3600) <= block.timestamp:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var69001:
                    if uint8(var69009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var69009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var69009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var69009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var69009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var69009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var69009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var69009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var69009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var69009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var69009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var69009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var69009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var69009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var69011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var69001 = 1 == uint8(idx)
                        var69009 = var69009 + 1
                        var69011 = var69011 + (24 * 3600)
                        continue 
                    var69001 = 3 == uint8(idx)
                    var69009 = var69009 + 1
                    var69011 = var69011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var69009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var69009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var75001:
                if uint8(var75009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var75009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var75009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var75009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var75009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var75009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var75009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var75009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var75009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var75009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var75009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var75009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var75009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var75009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var75011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var75001 = 1 == uint8(idx)
                    var75009 = var75009 + 1
                    var75011 = var75011 + (24 * 3600)
                    continue 
                var74009 = var75009 + 1
                var74011 = var75011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var75009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var75009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if not uint16(uint16(s) % 400):
            if t + (696 * 24 * 3600) <= block.timestamp:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            if 1 == uint8(idx):
                if var69001:
                    if uint8(var69009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 5 == uint8(idx):
                        if uint8(var69009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 7 == uint8(idx):
                            if uint8(var69009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 8 == uint8(idx):
                                if uint8(var69009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 10 == uint8(idx):
                                    if uint8(var69009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 12 == uint8(idx):
                                        if uint8(var69009) > 31:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 4 == uint8(idx):
                                            if uint8(var69009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 6 == uint8(idx):
                                                if uint8(var69009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 9 == uint8(idx):
                                                    if uint8(var69009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if 11 == uint8(idx):
                                                        if uint8(var69009) > 30:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if s % 4:
                                                            if uint8(var69009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint16(uint16(s) % 100):
                                                                if uint8(var69009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if not uint16(uint16(s) % 400):
                                                                    if uint8(var69009) > 29:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                                else:
                                                                    if uint8(var69009) > 28:
                                                                        if uint8(idx) >= 10:
                                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                if var69011 + (24 * 3600) <= block.timestamp:
                    if 1 == uint8(idx):
                        var69001 = 1 == uint8(idx)
                        var69009 = var69009 + 1
                        var69011 = var69011 + (24 * 3600)
                        continue 
                    var69001 = 3 == uint8(idx)
                    var69009 = var69009 + 1
                    var69011 = var69011 + (24 * 3600)
                    continue 
                if uint8(idx) >= 10:
                    return (uint8(var69009) + (10 * uint8(idx)) + (10000 * uint16(s)))
                return (uint8(var69009) + (100 * uint8(idx)) + (10000 * uint16(s)))
            if var75001:
                if uint8(var75009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var75009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var75009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var75009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var75009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var75009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var75009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var75009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var75009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var75009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var75009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var75009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var75009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var75009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var75011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var75001 = 1 == uint8(idx)
                    var75009 = var75009 + 1
                    var75011 = var75011 + (24 * 3600)
                    continue 
                var74009 = var75009 + 1
                var74011 = var75011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var75009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var75009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if t + (672 * 24 * 3600) <= block.timestamp:
            t = 672 * 24 * 3600
            idx = idx + 1
            t = t + (672 * 24 * 3600)
            continue 
        if 1 == uint8(idx):
            if var70001:
                if uint8(var70009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 5 == uint8(idx):
                    if uint8(var70009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 7 == uint8(idx):
                        if uint8(var70009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 8 == uint8(idx):
                            if uint8(var70009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 10 == uint8(idx):
                                if uint8(var70009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 12 == uint8(idx):
                                    if uint8(var70009) > 31:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 4 == uint8(idx):
                                        if uint8(var70009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 6 == uint8(idx):
                                            if uint8(var70009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 9 == uint8(idx):
                                                if uint8(var70009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if 11 == uint8(idx):
                                                    if uint8(var70009) > 30:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if s % 4:
                                                        if uint8(var70009) > 28:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if uint16(uint16(s) % 100):
                                                            if uint8(var70009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if not uint16(uint16(s) % 400):
                                                                if uint8(var70009) > 29:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                            else:
                                                                if uint8(var70009) > 28:
                                                                    if uint8(idx) >= 10:
                                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            if var70011 + (24 * 3600) <= block.timestamp:
                if 1 == uint8(idx):
                    var70001 = 1 == uint8(idx)
                    var70009 = var70009 + 1
                    var70011 = var70011 + (24 * 3600)
                    continue 
                var70001 = 3 == uint8(idx)
                var70009 = var70009 + 1
                var70011 = var70011 + (24 * 3600)
                continue 
            if uint8(idx) >= 10:
                return (uint8(var70009) + (10 * uint8(idx)) + (10000 * uint16(s)))
            return (uint8(var70009) + (100 * uint8(idx)) + (10000 * uint16(s)))
        if var76001:
            if uint8(var76009) > 31:
                if uint8(idx) >= 10:
                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                return ((100 * uint8(idx)) + (10000 * uint16(s)))
        else:
            if 5 == uint8(idx):
                if uint8(var76009) > 31:
                    if uint8(idx) >= 10:
                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
            else:
                if 7 == uint8(idx):
                    if uint8(var76009) > 31:
                        if uint8(idx) >= 10:
                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                else:
                    if 8 == uint8(idx):
                        if uint8(var76009) > 31:
                            if uint8(idx) >= 10:
                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                    else:
                        if 10 == uint8(idx):
                            if uint8(var76009) > 31:
                                if uint8(idx) >= 10:
                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                        else:
                            if 12 == uint8(idx):
                                if uint8(var76009) > 31:
                                    if uint8(idx) >= 10:
                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                            else:
                                if 4 == uint8(idx):
                                    if uint8(var76009) > 30:
                                        if uint8(idx) >= 10:
                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                else:
                                    if 6 == uint8(idx):
                                        if uint8(var76009) > 30:
                                            if uint8(idx) >= 10:
                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                    else:
                                        if 9 == uint8(idx):
                                            if uint8(var76009) > 30:
                                                if uint8(idx) >= 10:
                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                        else:
                                            if 11 == uint8(idx):
                                                if uint8(var76009) > 30:
                                                    if uint8(idx) >= 10:
                                                        return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                    return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                            else:
                                                if s % 4:
                                                    if uint8(var76009) > 28:
                                                        if uint8(idx) >= 10:
                                                            return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                        return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                else:
                                                    if uint16(uint16(s) % 100):
                                                        if uint8(var76009) > 29:
                                                            if uint8(idx) >= 10:
                                                                return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                            return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                    else:
                                                        if not uint16(uint16(s) % 400):
                                                            if uint8(var76009) > 29:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
                                                        else:
                                                            if uint8(var76009) > 28:
                                                                if uint8(idx) >= 10:
                                                                    return ((10 * uint8(idx)) + (10000 * uint16(s)))
                                                                return ((100 * uint8(idx)) + (10000 * uint16(s)))
        if var76011 + (24 * 3600) <= block.timestamp:
            if 1 == uint8(idx):
                var76001 = 1 == uint8(idx)
                var76009 = var76009 + 1
                var76011 = var76011 + (24 * 3600)
                continue 
            var75009 = var76009 + 1
            var75011 = var76011 + (24 * 3600)
            continue 
        if uint8(idx) >= 10:
            return (uint8(var76009) + (10 * uint8(idx)) + (10000 * uint16(s)))
        return (uint8(var76009) + (100 * uint8(idx)) + (10000 * uint16(s)))
    if s % 4:
        if uint8(var55009) > 28:
            return (10000 * uint16(s))
    else:
        if uint16(uint16(s) % 100):
            if uint8(var55009) > 29:
                return (10000 * uint16(s))
        else:
            if not uint16(uint16(s) % 400):
                if uint8(var55009) > 29:
                    return (10000 * uint16(s))
            else:
                if uint8(var55009) > 28:
                    return (10000 * uint16(s))
    if var55011 + (24 * 3600) <= block.timestamp:
        var55009 = var55009 + 1
        var55011 = var55011 + (24 * 3600)
        continue 
    return (uint8(var55009) + (10000 * uint16(s)))
}



}
