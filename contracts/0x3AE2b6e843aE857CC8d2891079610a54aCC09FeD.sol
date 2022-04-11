contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor3;
uint8 stor4;
uint256 stor5;
array of uint256 stor7;
uint8 stor8;
array of uint256 stor9;
array of uint256 stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;

function _fallback() payable {
    bool(stor10.length) = 0
    stor10.length.field_1 = 4
    stor10.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11 = 0xfab873f0f71dca84ca33d959c8f017f886e10c63
    stor12 = 0xe16d779615b862c088a1c96d84f9958de5b7837e
    stor13 = 0x25ca1d22b2a9c66b3d57032ff8bbdf006e74c4e9
    stor14 = 0x98b4330430c56a15734e68c100d66f3e8b08bc2f
    stor15 = 0x8554e627bd7e46f2b1390ee8383481e5e5fd189d
    require not msg.value
    bool(stor7.length) = 0
    stor7.length.field_1 = 21
    stor7.length.field_8 = 'ChainRanx Real Estate' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 8
    bool(stor9.length) = 0
    stor9.length.field_1 = 3
    stor9.length.field_8 = 'RST' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 67 * 10^6
    stor4 = 1
    stor5 = 234375 * 10^9
    stor0[stor14] = 7705 * 10^11
    stor0[stor15] = 7705 * 10^11
    return code.data[1168 len 5480]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 sub_2163837f;
uint8 funding;
uint256 price;
uint256 sub_8a5396a3;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_2163837f(?) {
    return sub_2163837f
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8a5396a3(?) {
    return sub_8a5396a3
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function funding() {
    return bool(funding)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}

function _fallback() payable {
    require funding
    require msg.value >= price
    require price
    if msg.value - (msg.value / price * price) > 0:
        call msg.sender with:
           value msg.value - (msg.value / price * price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    sub_8a5396a3 += msg.value / price * price
    call stor11 with:
       value msg.value / price * price / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor12 with:
       value msg.value / price * price / 20 wei
         gas 2300 * is_zero(value) wei
    call stor13 with:
       value msg.value / price * price / 20 wei
         gas 2300 * is_zero(value) wei
    call stor14 with:
       value (msg.value / price * price) - (3 * msg.value / price * price / 20) / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor15 with:
       value (msg.value / price * price) - (3 * msg.value / price * price / 20) - ((msg.value / price * price) - (3 * msg.value / price * price / 20) / 2) wei
         gas 2300 * is_zero(value) wei
    if totalSupply + (msg.value / price) <= sub_2163837f:
        totalSupply += msg.value / price
        balanceOf[address(msg.sender)] += 100 * 10^6 * msg.value / price
        if sub_8a5396a3 < 1875 * 10^18:
            if sub_8a5396a3 >= 59270833333333300 * 10^6:
                funding = 0
            else:
                if totalSupply >= sub_2163837f:
                    funding = 0
        else:
            price = 625 * 10^12
            if sub_8a5396a3 < 15625 * 10^14 * 3600:
                if sub_8a5396a3 >= 59270833333333300 * 10^6:
                    funding = 0
                else:
                    if totalSupply >= sub_2163837f:
                        funding = 0
            else:
                price = 729166666666667
                if sub_8a5396a3 < 10729166666666700 * 10^6:
                    if sub_8a5396a3 >= 59270833333333300 * 10^6:
                        funding = 0
                    else:
                        if totalSupply >= sub_2163837f:
                            funding = 0
                else:
                    price = 833333333333333
                    if sub_8a5396a3 < 17395833333333300 * 10^6:
                        if sub_8a5396a3 >= 59270833333333300 * 10^6:
                            funding = 0
                        else:
                            if totalSupply >= sub_2163837f:
                                funding = 0
                    else:
                        price = 9375 * 10^11
                        if sub_8a5396a3 < 6915509259259250000 * 3600:
                            if sub_8a5396a3 >= 59270833333333300 * 10^6:
                                funding = 0
                            else:
                                if totalSupply >= sub_2163837f:
                                    funding = 0
                        else:
                            price = 1041666666666670
                            if sub_8a5396a3 < 353125 * 10^17:
                                if sub_8a5396a3 >= 59270833333333300 * 10^6:
                                    funding = 0
                                else:
                                    if totalSupply >= sub_2163837f:
                                        funding = 0
                            else:
                                price = 1145833333333330
                                if sub_8a5396a3 >= 46770833333333300 * 10^6:
                                    price = 125 * 10^13
                                if sub_8a5396a3 >= 59270833333333300 * 10^6:
                                    funding = 0
                                else:
                                    if totalSupply >= sub_2163837f:
                                        funding = 0
        emit tokenBought(100 * 10^6 * msg.value / price, msg.value / price * price);
    else:
        totalSupply = sub_2163837f
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (100 * 10^6 * sub_2163837f) - (100 * 10^6 * totalSupply)
        if sub_8a5396a3 < 1875 * 10^18:
            if sub_8a5396a3 >= 59270833333333300 * 10^6:
                funding = 0
            else:
                if totalSupply >= sub_2163837f:
                    funding = 0
        else:
            price = 625 * 10^12
            if sub_8a5396a3 < 15625 * 10^14 * 3600:
                if sub_8a5396a3 >= 59270833333333300 * 10^6:
                    funding = 0
                else:
                    if totalSupply >= sub_2163837f:
                        funding = 0
            else:
                price = 729166666666667
                if sub_8a5396a3 < 10729166666666700 * 10^6:
                    if sub_8a5396a3 >= 59270833333333300 * 10^6:
                        funding = 0
                    else:
                        if totalSupply >= sub_2163837f:
                            funding = 0
                else:
                    price = 833333333333333
                    if sub_8a5396a3 < 17395833333333300 * 10^6:
                        if sub_8a5396a3 >= 59270833333333300 * 10^6:
                            funding = 0
                        else:
                            if totalSupply >= sub_2163837f:
                                funding = 0
                    else:
                        price = 9375 * 10^11
                        if sub_8a5396a3 < 6915509259259250000 * 3600:
                            if sub_8a5396a3 >= 59270833333333300 * 10^6:
                                funding = 0
                            else:
                                if totalSupply >= sub_2163837f:
                                    funding = 0
                        else:
                            price = 1041666666666670
                            if sub_8a5396a3 < 353125 * 10^17:
                                if sub_8a5396a3 >= 59270833333333300 * 10^6:
                                    funding = 0
                                else:
                                    if totalSupply >= sub_2163837f:
                                        funding = 0
                            else:
                                price = 1145833333333330
                                if sub_8a5396a3 >= 46770833333333300 * 10^6:
                                    price = 125 * 10^13
                                if sub_8a5396a3 >= 59270833333333300 * 10^6:
                                    funding = 0
                                else:
                                    if totalSupply >= sub_2163837f:
                                        funding = 0
        emit tokenBought((100 * 10^6 * sub_2163837f) - (100 * 10^6 * totalSupply), msg.value / price * price);
}



}
