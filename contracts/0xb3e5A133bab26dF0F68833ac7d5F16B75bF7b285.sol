contract main {


// =======================  Init code  ======================


array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint128 stor10; offset 160
address stor10;
uint256 stor11;
mapping of uint256 stor15;

function _fallback() {
    address(stor10.field_0) = msg.sender
    stor7 = 18
    stor8 = 100000000 * 10^18
    bool(stor5.length) = 0
    stor5.length.field_1 = 7
    stor5.length.field_8 = 'GoldCub' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'GCTX' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor15[address(stor10.field_0)] = stor8
    stor11 = block.timestamp
    Mask(96, 0, stor10.field_160) = 1
    stor9 = 900
    return code.data[627 len 15497]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 perTokenPrice;
uint8 stor10; offset 160
uint128 stor10; offset 160
address owner;
address stor12;
mapping of address stor13;
mapping of uint256 stor14;
mapping of uint256 balanceOf;
mapping of uint8 stor16;
mapping of uint256 stor17;
mapping of uint256 stor18;
mapping of uint256 allowance;
uint256 totalTokensSold;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function totalTokensSold() {
    return totalTokensSold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function perTokenPrice() {
    return perTokenPrice
}

function checkOwnerAllowance(address arg1) {
    return bool(stor16[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allowOwner() {
    stor16[address(msg.sender)] = 1
}

function disallowOwner() {
    stor16[address(msg.sender)] = 0
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function endICO() {
    require msg.sender == owner
    Mask(96, 0, stor10.field_160) = 0
}

function set_centralAccount(address arg1) {
    require msg.sender == owner
    stor12 = arg1
}

function balanceDetails(address arg1) {
    return stor17[address(arg1)], stor18[address(arg1)], balanceOf[address(arg1)]
}

function fixSpecications(uint256 arg1, bool arg2) {
    require msg.sender == owner
    if arg1:
        perTokenPrice = arg1
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg2)
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function allBonus(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(stor10.field_0)] -= arg2
    balanceOf[address(arg1)] += arg2
    stor18[address(arg1)] += arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    balanceOf[address(arg1)] += balanceOf[address(stor10.field_0)]
    balanceOf[address(stor10.field_0)] = 0
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if bool(uint8(stor10.field_160)) == 1:
        require arg2 <= stor18[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if arg2 == this.address:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_2b621bfb(?) {
    require msg.sender == stor12
    require bool(stor16[address(arg1)]) == 1
    if bool(uint8(stor10.field_160)) == 1:
        require arg3 <= stor18[address(arg1)]
        stor18[address(arg1)] -= arg3
        stor18[address(arg2)] += arg3
        balanceOf[address(arg1)] -= arg3
    else:
        if uint8(stor10.field_160):
            return 0
        if balanceOf[address(arg1)] < arg3:
            return 0
        if bool(stor16[address(arg1)]) != 1:
            return 0
        if arg3 <= 0:
            return 0
        if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
            return 0
        balanceOf[address(arg1)] -= arg3
        allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function stringToUint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] != 46:
            if mem[idx + 128 len 1] < 48:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            else:
                if mem[idx + 128 len 1] > 57:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
                else:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
        else:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            continue 
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if bool(uint8(stor10.field_160)) != 1:
        require not uint8(stor10.field_160)
        if balanceOf[address(msg.sender)] < arg2:
            return 0
        if arg2 <= 0:
            return 0
        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
    else:
        if msg.sender == owner:
            require balanceOf[address(stor10.field_0)] >= arg2
            require arg2 > 0
            require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
            balanceOf[address(stor10.field_0)] -= arg2
            balanceOf[address(arg1)] += arg2
            stor17[address(arg1)] += 95 * arg2 / 100
            stor18[address(arg1)] += 5 * arg2 / 100
        else:
            if bool(uint8(stor10.field_160)) != 1:
                require not uint8(stor10.field_160)
                if balanceOf[address(msg.sender)] < arg2:
                    return 0
                if arg2 <= 0:
                    return 0
                if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                    return 0
                balanceOf[address(msg.sender)] -= arg2
            else:
                if owner != msg.sender:
                    require stor18[address(msg.sender)] >= arg2
                    stor18[address(msg.sender)] -= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    stor18[address(arg1)] += arg2
                else:
                    require not uint8(stor10.field_160)
                    if balanceOf[address(msg.sender)] < arg2:
                        return 0
                    if arg2 <= 0:
                        return 0
                    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                        return 0
                    balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require bool(uint8(stor10.field_160)) == 1
    require totalTokensSold <= 50000000 * 10^18
    if owner != msg.sender:
        if msg.value > 0:
            if not stor0:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 11
                    stor2.length.field_8 = 'eth_mainnet' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 12
                        stor2.length.field_8 = 'eth_ropsten3' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 9
                            stor2.length.field_8 = 'eth_kovan' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                bool(stor2.length) = 0
                                stor2.length.field_1 = 11
                                stor2.length.field_8 = 'eth_rinkeby' / 256
                                idx = 0
                                while stor2.length + 31 / 32 > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                if not ext_code.size(stor0):
                    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                        stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_mainnet' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                            stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 12
                            stor2.length.field_8 = 'eth_ropsten3' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                bool(stor2.length) = 0
                                stor2.length.field_1 = 9
                                stor2.length.field_8 = 'eth_kovan' / 256
                                idx = 0
                                while stor2.length + 31 / 32 > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                    else:
                                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                        else:
                                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                else:
                                    stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                    bool(stor2.length) = 0
                                    stor2.length.field_1 = 11
                                    stor2.length.field_8 = 'eth_rinkeby' / 256
                                    idx = 0
                                    while stor2.length + 31 / 32 > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string rg1) with:
                 gas gas_remaining - 710 wei
                args 'URL'
            require ext_call.success
            if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                stor13[0] = msg.sender
                stor14[0] = msg.value
            else:
                require ext_code.size(address(stor1))
                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9710 wei
                    args 0, 96, 160, 3, 'URL' << 232, 68, 'json(https://poloniex.com/public', '?command=returnTicker).USDT_ETH.', 'last' >> 256, Mask(32, -512, 'json(https://poloniex.com/public', '?command=returnTicker).USDT_ETH.', 'last') << 512
                require ext_call.success
                stor13[ext_call.return_data[0]] = msg.sender
                stor14[ext_call.return_data[0]] = msg.value
}



}
