contract main {


// =======================  Init code  ======================


array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor11;
uint256 stor16;
uint256 stor18;
uint256 stor19;
address stor20;
address stor21;
address stor22;
address stor23;
address stor24;
mapping of uint256 stor25;

function _fallback() payable {
    bool(stor6.length) = 0
    stor6.length.field_1 = 8
    stor6.length.field_8 = 'RiceCoin' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'RCC' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 4
    stor9 = 5 * 10^12
    stor16 = 2
    stor18 = 500000
    stor19 = 200000
    stor20 = 0x7a6977742db3badfa2ff76a1a0a838e6c70839e6
    stor21 = 0x90405ab3fc17cba2b80704ff5508531699b78395
    stor22 = 0x44f994297de6a9f2d9ee7f7beff94802531df3c2
    stor23 = 0xd1d6f0c93eb7c2c4a4b8a38b7cd1da9c81875306
    stor24 = 0xe390fa8e1b30258feb0a01e9c32e9c56ebf7e786
    require not msg.value
    stor11 = msg.sender
    stor25[stor11] = stor9
    return code.data[997 len 13685]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint256 price;
address owner;
address stor12;
mapping of address stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
address stor20;
address stor21;
address stor22;
address stor23;
address stor24;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function set_centralAccount(address arg1) {
    require msg.sender == owner
    stor12 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
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
    require (arg2 * stor19 / 100 * 10^6) + arg2 > 0
    require balanceOf[address(msg.sender)] >= (arg2 * stor19 / 100 * 10^6) + arg2
    require (arg2 * stor19 / 100 * 10^6) + arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * stor19 / 100 * 10^6) - arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require balanceOf[stor20] + (arg2 * stor19 / 100 * 10^6 / 5) >= balanceOf[stor20]
    balanceOf[stor20] += arg2 * stor19 / 100 * 10^6 / 5
    require balanceOf[stor21] + (arg2 * stor19 / 100 * 10^6 / 5) >= balanceOf[stor21]
    balanceOf[stor21] += arg2 * stor19 / 100 * 10^6 / 5
    require balanceOf[stor22] + (arg2 * stor19 / 100 * 10^6 / 5) >= balanceOf[stor22]
    balanceOf[stor22] += arg2 * stor19 / 100 * 10^6 / 5
    require balanceOf[stor23] + (arg2 * stor19 / 100 * 10^6 / 5) >= balanceOf[stor23]
    balanceOf[stor23] += arg2 * stor19 / 100 * 10^6 / 5
    require balanceOf[stor24] + (arg2 * stor19 / 100 * 10^6 / 5) >= balanceOf[stor24]
    balanceOf[stor24] += arg2 * stor19 / 100 * 10^6 / 5
    emit Transfer((arg2 * stor19 / 100 * 10^6 / 5), msg.sender, stor20);
    emit Transfer((arg2 * stor19 / 100 * 10^6 / 5), msg.sender, stor21);
    emit Transfer((arg2 * stor19 / 100 * 10^6 / 5), msg.sender, stor22);
    emit Transfer((arg2 * stor19 / 100 * 10^6 / 5), msg.sender, stor23);
    emit Transfer((arg2 * stor19 / 100 * 10^6 / 5), msg.sender, stor24);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
            call stor1.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor2) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            mem[ceil32(arg2.length) + 224] = 0
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
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
                require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                call stor20 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call stor21 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                call stor22 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                call stor23 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                call stor24 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                emit Transfer(eth.balance(this.address), this.address, owner);
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
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
                call stor1.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor2) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
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
                    require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                    balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                    balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                    call stor20 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor21 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    call stor22 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    call stor23 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    call stor24 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                    emit Transfer(eth.balance(this.address), this.address, owner);
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
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
                    call stor1.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor2) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
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
                        require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                        balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                        balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                        call stor20 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        call stor21 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        call stor22 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        call stor23 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        call stor24 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                        emit Transfer(eth.balance(this.address), this.address, owner);
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
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
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        mem[ceil32(arg2.length) + 160] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
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
                            require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                            balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                            balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                            call stor20 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call stor21 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor22 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor23 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor24 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                            emit Transfer(eth.balance(this.address), this.address, owner);
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
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
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
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
                            require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                            balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                            balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                            call stor20 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call stor21 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor22 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor23 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor24 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                            emit Transfer(eth.balance(this.address), this.address, owner);
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor2) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            mem[ceil32(arg2.length) + 160] = 0
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
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
                require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                call stor20 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call stor21 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                call stor22 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                call stor23 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                call stor24 with:
                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                     gas 2300 * is_zero(value) wei
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                emit Transfer(eth.balance(this.address), this.address, owner);
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
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
                call stor1.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor2) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
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
                    require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                    balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                    balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                    emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                    call stor20 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor21 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    call stor22 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    call stor23 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    call stor24 with:
                       value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                         gas 2300 * is_zero(value) wei
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                    emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                    emit Transfer(eth.balance(this.address), this.address, owner);
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
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
                    call stor1.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor2) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
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
                        require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                        balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                        balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                        emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                        call stor20 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        call stor21 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        call stor22 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        call stor23 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        call stor24 with:
                           value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                             gas 2300 * is_zero(value) wei
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                        emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                        emit Transfer(eth.balance(this.address), this.address, owner);
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
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
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
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
                            require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                            balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                            balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                            emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                            call stor20 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            call stor21 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor22 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor23 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            call stor24 with:
                               value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                 gas 2300 * is_zero(value) wei
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                            emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                            emit Transfer(eth.balance(this.address), this.address, owner);
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
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
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor2) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            mem[ceil32(arg2.length) + 160] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
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
                                require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                                balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                                call stor20 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                call stor21 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                call stor22 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                call stor23 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                call stor24 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                                emit Transfer(eth.balance(this.address), this.address, owner);
                                call owner with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
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
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor2) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            mem[ceil32(arg2.length) + 224] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
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
                                require balanceOf[stor11] >= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                require stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16 <= balanceOf[stor11]
                                balanceOf[stor11] -= stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                require balanceOf[stor13[arg1]] + (stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16) >= balanceOf[stor13[arg1]]
                                balanceOf[stor13[arg1]] += stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16
                                emit Transfer((stor17 * stor14[stor13[arg1]] / 10000 * 10^18 * stor16), owner, stor13[arg1]);
                                call stor20 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                call stor21 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                call stor22 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                call stor23 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                call stor24 with:
                                   value stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5 wei
                                     gas 2300 * is_zero(value) wei
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor20);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor21);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor22);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor23);
                                emit Transfer((stor14[stor13[arg1]] * stor18 / 100 * 10^6 / 5), this.address, stor24);
                                emit Transfer(eth.balance(this.address), this.address, owner);
                                call owner with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
}



}
