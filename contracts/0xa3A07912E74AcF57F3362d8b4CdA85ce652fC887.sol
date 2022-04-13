contract main {


// =======================  Init code  ======================


uint256 stor8;
mapping of uint256 stor9;
address stor12;
uint256 stor16;
uint8 stor20;

function _fallback() payable {
    stor8 = 15 * 10^10
    stor16 = 1
    stor20 = 0
    require not msg.value
    stor12 = msg.sender
    stor9[stor12] = 6 * 10^10
    stor9[address(this.address)] = 25 * 10^6 * 3600
    return code.data[319 len 12217]
}



// =====================  Runtime code  =====================


const name = 'Solomon Exchange'

const decimals = 4

const symbol = 'SMNX'


address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
array of address addresses;
mapping of address userStructs;
uint256 total_Supply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
address stor12;
mapping of address stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor20;

function totalSupply() {
    return total_Supply
}

function userStructs(address arg1) {
    return userStructs[arg1]
}

function getRewardStatus(address arg1) {
    return bool(stor11[address(arg1)])
}

function getarray_length() {
    return addresses.length
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getAddress(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function gettotal_Supply() {
    return total_Supply
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setRewardStatus(address arg1, bool arg2) {
    stor11[address(arg1)] = uint8(arg2)
}

function start_ICO() {
    require msg.sender == stor12
    stor20 = 1
    stor18 = block.timestamp
    stor19 = stor18 + (720 * 24 * 3600)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == stor12
    call stor12 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require msg.sender == stor12
    stor12 = arg1
    balanceOf[stor12] = balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
}

function rewarded_refresh() {
    idx = 0
    while idx < addresses.length:
        mem[0] = address(addresses[idx])
        mem[32] = 11
        stor11[address(stor6[idx])] = 1
        idx = idx + 1
        continue 
}

function end_crowdsale() {
    require msg.sender == stor12
    if balanceOf[address(this.address)] > 0:
        balanceOf[address(this.address)] = 0
        total_Supply -= balanceOf[address(this.address)]
    stor20 = 0
}

function transferby(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor12
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
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
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if addresses.length <= 0:
        userStructs[address(arg1)] = arg1
        addresses.length++
        if not addresses.length <= addresses.length + 1:
            idx = addresses.length + 1
            while addresses.length > idx:
                uint256(addresses[idx]) = 0
                idx = idx + 1
                continue 
        address(addresses[addresses.length]) = arg1
    else:
        if userStructs[address(arg1)] != arg1:
            userStructs[address(arg1)] = arg1
            addresses.length++
            if not addresses.length <= addresses.length + 1:
                idx = addresses.length + 1
                while addresses.length > idx:
                    uint256(addresses[idx]) = 0
                    idx = idx + 1
                    continue 
            address(addresses[addresses.length]) = arg1
    return 1
}

function _fallback() payable {
    require stor20
    if stor12 != msg.sender:
        if block.timestamp > stor19:
            if stor12 != msg.sender:
                require block.timestamp <= stor19
        else:
            emit TRANS(msg.sender, msg.value);
            if not stor1:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 11
                    stor3.length.field_8 = 'eth_mainnet' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 12
                        stor3.length.field_8 = 'eth_ropsten3' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 9
                            stor3.length.field_8 = 'eth_kovan' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                bool(stor3.length) = 0
                                stor3.length.field_1 = 11
                                stor3.length.field_8 = 'eth_rinkeby' / 256
                                idx = 0
                                while stor3.length + 31 / 32 > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                if not ext_code.size(stor1):
                    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                        stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_mainnet' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                            stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 12
                            stor3.length.field_8 = 'eth_ropsten3' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                bool(stor3.length) = 0
                                stor3.length.field_1 = 9
                                stor3.length.field_8 = 'eth_kovan' / 256
                                idx = 0
                                while stor3.length + 31 / 32 > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                        stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                    else:
                                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                            stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                        else:
                                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                else:
                                    stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                    bool(stor3.length) = 0
                                    stor3.length.field_1 = 11
                                    stor3.length.field_8 = 'eth_rinkeby' / 256
                                    idx = 0
                                    while stor3.length + 31 / 32 > idx:
                                        stor3[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            require ext_code.size(stor1)
            call stor1.0x38cc4831 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).getPrice(string rg1) with:
                 gas gas_remaining - 710 wei
                args 'URL'
            require ext_call.success
            if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                stor13[0] = msg.sender
                stor14[address(msg.sender)] = msg.value
                stor15[0] = 0
            else:
                require ext_code.size(address(stor2))
                call address(stor2).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9710 wei
                    args 0, 96, 160, 3, 'URL' << 232, 68, 'json(https://poloniex.com/public', '?command=returnTicker).USDT_ETH.', 'last' >> 256, Mask(32, -512, 'json(https://poloniex.com/public', '?command=returnTicker).USDT_ETH.', 'last') << 512
                require ext_call.success
                stor13[ext_call.return_data[0]] = msg.sender
                stor14[address(msg.sender)] = msg.value
                stor15[ext_call.return_data[0]] = ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.0x38cc4831 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[ceil32(arg2.length) + 224] = 1
            mem[ceil32(arg2.length) + 256] = arg2.length
            mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
            mem[0] = arg1
            mem[32] = 15
            if stor15[arg1] == arg1:
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
                s = 0
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
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
                stor17 = 0
                require 10000 * 10^18 * stor16
                require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                if addresses.length <= 0:
                    userStructs[stor13[arg1]] = stor13[arg1]
                    addresses.length++
                    if not addresses.length <= addresses.length + 1:
                        idx = addresses.length + 1
                        while addresses.length > idx:
                            uint256(addresses[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(addresses[addresses.length]) = stor13[arg1]
                else:
                    if userStructs[stor13[arg1]] != stor13[arg1]:
                        userStructs[stor13[arg1]] = stor13[arg1]
                        addresses.length++
                        if not addresses.length <= addresses.length + 1:
                            idx = addresses.length + 1
                            while addresses.length > idx:
                                uint256(addresses[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(addresses[addresses.length]) = stor13[arg1]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.0x38cc4831 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[ceil32(arg2.length) + 224] = 1
                mem[ceil32(arg2.length) + 256] = arg2.length
                mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                mem[0] = arg1
                mem[32] = 15
                if stor15[arg1] == arg1:
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                    s = 0
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
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
                    stor17 = 0
                    require 10000 * 10^18 * stor16
                    require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                    if addresses.length <= 0:
                        userStructs[stor13[arg1]] = stor13[arg1]
                        addresses.length++
                        if not addresses.length <= addresses.length + 1:
                            idx = addresses.length + 1
                            while addresses.length > idx:
                                uint256(addresses[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(addresses[addresses.length]) = stor13[arg1]
                    else:
                        if userStructs[stor13[arg1]] != stor13[arg1]:
                            userStructs[stor13[arg1]] = stor13[arg1]
                            addresses.length++
                            if not addresses.length <= addresses.length + 1:
                                idx = addresses.length + 1
                                while addresses.length > idx:
                                    uint256(addresses[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(addresses[addresses.length]) = stor13[arg1]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.0x38cc4831 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[ceil32(arg2.length) + 224] = 1
                    mem[ceil32(arg2.length) + 256] = arg2.length
                    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                    mem[0] = arg1
                    mem[32] = 15
                    if stor15[arg1] == arg1:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                        s = 0
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
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
                        stor17 = 0
                        require 10000 * 10^18 * stor16
                        require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                        if addresses.length <= 0:
                            userStructs[stor13[arg1]] = stor13[arg1]
                            addresses.length++
                            if not addresses.length <= addresses.length + 1:
                                idx = addresses.length + 1
                                while addresses.length > idx:
                                    uint256(addresses[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(addresses[addresses.length]) = stor13[arg1]
                        else:
                            if userStructs[stor13[arg1]] != stor13[arg1]:
                                userStructs[stor13[arg1]] = stor13[arg1]
                                addresses.length++
                                if not addresses.length <= addresses.length + 1:
                                    idx = addresses.length + 1
                                    while addresses.length > idx:
                                        uint256(addresses[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(addresses[addresses.length]) = stor13[arg1]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[ceil32(arg2.length) + 160] = 1
                        mem[ceil32(arg2.length) + 128] = 64
                        mem[ceil32(arg2.length) + 192] = arg2.length
                        mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                        mem[0] = arg1
                        mem[32] = 15
                        if stor15[arg1] == arg1:
                            mem[64] = ceil32(arg2.length) + 160
                            mem[ceil32(arg2.length) + 128] = 0
                            s = 0
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
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
                            stor17 = 0
                            require 10000 * 10^18 * stor16
                            require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                            if addresses.length <= 0:
                                userStructs[stor13[arg1]] = stor13[arg1]
                                addresses.length++
                                if not addresses.length <= addresses.length + 1:
                                    idx = addresses.length + 1
                                    while addresses.length > idx:
                                        uint256(addresses[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(addresses[addresses.length]) = stor13[arg1]
                            else:
                                if userStructs[stor13[arg1]] != stor13[arg1]:
                                    userStructs[stor13[arg1]] = stor13[arg1]
                                    addresses.length++
                                    if not addresses.length <= addresses.length + 1:
                                        idx = addresses.length + 1
                                        while addresses.length > idx:
                                            uint256(addresses[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(addresses[addresses.length]) = stor13[arg1]
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = arg2.length
                        mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                        mem[0] = arg1
                        mem[32] = 15
                        if stor15[arg1] == arg1:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
                            s = 0
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
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
                            stor17 = 0
                            require 10000 * 10^18 * stor16
                            require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                            if addresses.length <= 0:
                                userStructs[stor13[arg1]] = stor13[arg1]
                                addresses.length++
                                if not addresses.length <= addresses.length + 1:
                                    idx = addresses.length + 1
                                    while addresses.length > idx:
                                        uint256(addresses[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(addresses[addresses.length]) = stor13[arg1]
                            else:
                                if userStructs[stor13[arg1]] != stor13[arg1]:
                                    userStructs[stor13[arg1]] = stor13[arg1]
                                    addresses.length++
                                    if not addresses.length <= addresses.length + 1:
                                        idx = addresses.length + 1
                                        while addresses.length > idx:
                                            uint256(addresses[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(addresses[addresses.length]) = stor13[arg1]
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.0x38cc4831 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[ceil32(arg2.length) + 160] = 1
            mem[ceil32(arg2.length) + 128] = 64
            mem[ceil32(arg2.length) + 192] = arg2.length
            mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
            mem[0] = arg1
            mem[32] = 15
            if stor15[arg1] == arg1:
                mem[64] = ceil32(arg2.length) + 160
                mem[ceil32(arg2.length) + 128] = 0
                s = 0
                idx = 0
                while idx < arg2.length:
                    require idx < arg2.length
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
                stor17 = 0
                require 10000 * 10^18 * stor16
                require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                if addresses.length <= 0:
                    userStructs[stor13[arg1]] = stor13[arg1]
                    addresses.length++
                    if not addresses.length <= addresses.length + 1:
                        idx = addresses.length + 1
                        while addresses.length > idx:
                            uint256(addresses[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(addresses[addresses.length]) = stor13[arg1]
                else:
                    if userStructs[stor13[arg1]] != stor13[arg1]:
                        userStructs[stor13[arg1]] = stor13[arg1]
                        addresses.length++
                        if not addresses.length <= addresses.length + 1:
                            idx = addresses.length + 1
                            while addresses.length > idx:
                                uint256(addresses[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(addresses[addresses.length]) = stor13[arg1]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.0x38cc4831 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[ceil32(arg2.length) + 224] = 1
                mem[ceil32(arg2.length) + 256] = arg2.length
                mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                mem[0] = arg1
                mem[32] = 15
                if stor15[arg1] == arg1:
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                    s = 0
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
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
                    stor17 = 0
                    require 10000 * 10^18 * stor16
                    require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                    if addresses.length <= 0:
                        userStructs[stor13[arg1]] = stor13[arg1]
                        addresses.length++
                        if not addresses.length <= addresses.length + 1:
                            idx = addresses.length + 1
                            while addresses.length > idx:
                                uint256(addresses[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(addresses[addresses.length]) = stor13[arg1]
                    else:
                        if userStructs[stor13[arg1]] != stor13[arg1]:
                            userStructs[stor13[arg1]] = stor13[arg1]
                            addresses.length++
                            if not addresses.length <= addresses.length + 1:
                                idx = addresses.length + 1
                                while addresses.length > idx:
                                    uint256(addresses[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(addresses[addresses.length]) = stor13[arg1]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.0x38cc4831 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[ceil32(arg2.length) + 224] = 1
                    mem[ceil32(arg2.length) + 256] = arg2.length
                    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                    mem[0] = arg1
                    mem[32] = 15
                    if stor15[arg1] == arg1:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                        s = 0
                        idx = 0
                        while idx < arg2.length:
                            require idx < arg2.length
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
                        stor17 = 0
                        require 10000 * 10^18 * stor16
                        require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                        if addresses.length <= 0:
                            userStructs[stor13[arg1]] = stor13[arg1]
                            addresses.length++
                            if not addresses.length <= addresses.length + 1:
                                idx = addresses.length + 1
                                while addresses.length > idx:
                                    uint256(addresses[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(addresses[addresses.length]) = stor13[arg1]
                        else:
                            if userStructs[stor13[arg1]] != stor13[arg1]:
                                userStructs[stor13[arg1]] = stor13[arg1]
                                addresses.length++
                                if not addresses.length <= addresses.length + 1:
                                    idx = addresses.length + 1
                                    while addresses.length > idx:
                                        uint256(addresses[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(addresses[addresses.length]) = stor13[arg1]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.0x38cc4831 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = arg2.length
                        mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                        mem[0] = arg1
                        mem[32] = 15
                        if stor15[arg1] == arg1:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
                            s = 0
                            idx = 0
                            while idx < arg2.length:
                                require idx < arg2.length
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
                            stor17 = 0
                            require 10000 * 10^18 * stor16
                            require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                            if addresses.length <= 0:
                                userStructs[stor13[arg1]] = stor13[arg1]
                                addresses.length++
                                if not addresses.length <= addresses.length + 1:
                                    idx = addresses.length + 1
                                    while addresses.length > idx:
                                        uint256(addresses[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(addresses[addresses.length]) = stor13[arg1]
                            else:
                                if userStructs[stor13[arg1]] != stor13[arg1]:
                                    userStructs[stor13[arg1]] = stor13[arg1]
                                    addresses.length++
                                    if not addresses.length <= addresses.length + 1:
                                        idx = addresses.length + 1
                                        while addresses.length > idx:
                                            uint256(addresses[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(addresses[addresses.length]) = stor13[arg1]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[ceil32(arg2.length) + 160] = 1
                            mem[ceil32(arg2.length) + 128] = 64
                            mem[ceil32(arg2.length) + 192] = arg2.length
                            mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                            mem[0] = arg1
                            mem[32] = 15
                            if stor15[arg1] == arg1:
                                mem[64] = ceil32(arg2.length) + 160
                                mem[ceil32(arg2.length) + 128] = 0
                                s = 0
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
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
                                stor17 = 0
                                require 10000 * 10^18 * stor16
                                require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                                if addresses.length <= 0:
                                    userStructs[stor13[arg1]] = stor13[arg1]
                                    addresses.length++
                                    if not addresses.length <= addresses.length + 1:
                                        idx = addresses.length + 1
                                        while addresses.length > idx:
                                            uint256(addresses[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(addresses[addresses.length]) = stor13[arg1]
                                else:
                                    if userStructs[stor13[arg1]] != stor13[arg1]:
                                        userStructs[stor13[arg1]] = stor13[arg1]
                                        addresses.length++
                                        if not addresses.length <= addresses.length + 1:
                                            idx = addresses.length + 1
                                            while addresses.length > idx:
                                                uint256(addresses[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(addresses[addresses.length]) = stor13[arg1]
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.0x38cc4831 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[ceil32(arg2.length) + 224] = 1
                            mem[ceil32(arg2.length) + 256] = arg2.length
                            mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            emit Tokens(Array(len=arg2.length, data=arg2[all]), 1);
                            mem[0] = arg1
                            mem[32] = 15
                            if stor15[arg1] == arg1:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 192] = 0
                                s = 0
                                idx = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
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
                                stor17 = 0
                                require 10000 * 10^18 * stor16
                                require balanceOf[address(this.address)] > stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                balanceOf[address(this.address)] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), this.address, stor13[arg1]);
                                if addresses.length <= 0:
                                    userStructs[stor13[arg1]] = stor13[arg1]
                                    addresses.length++
                                    if not addresses.length <= addresses.length + 1:
                                        idx = addresses.length + 1
                                        while addresses.length > idx:
                                            uint256(addresses[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(addresses[addresses.length]) = stor13[arg1]
                                else:
                                    if userStructs[stor13[arg1]] != stor13[arg1]:
                                        userStructs[stor13[arg1]] = stor13[arg1]
                                        addresses.length++
                                        if not addresses.length <= addresses.length + 1:
                                            idx = addresses.length + 1
                                            while addresses.length > idx:
                                                uint256(addresses[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(addresses[addresses.length]) = stor13[arg1]
}



}
