contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[63 len 6080]
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    return code.data[6143 len 736]
}



// =====================  Runtime code  =====================


const blockNum = block.number


address owner;
uint256 stor0;
array of uint256 stor1;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 stor9;
uint256 totalBurned;
uint256 minerReward;
uint256 totalSold;
uint256 tokenValue;
uint256 stor15;
uint256 stor16;
uint256 stor17;
mapping of uint256 stor18;
array of address stor19;
array of address stor39211734754957317787651514792503372559041001677350214350465551966328082397708;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function tokenValue() payable {
    return tokenValue
}

function decimals() payable {
    return decimals
}

function standard() payable {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function owner() payable {
    return address(owner)
}

function totalSold() payable {
    return totalSold
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function minerReward() payable {
    return minerReward
}

function totalBurned() payable {
    return totalBurned
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function sub_4827798c(?) payable {
    if 0 == msg.value:
        return (stor9.length - totalBurned)
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return (stor9.length - totalBurned)
}

function available() payable {
    if 0 == msg.value:
        return balanceOf[address(this.address)]
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return balanceOf[address(this.address)]
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_259da3ea(?) payable {
    require address(owner) == tx.origin
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor56B1[idx] != arg1:
            if arg1 != this.address:
                idx = idx + 1
                continue 
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            if stor56B1[idx] != arg1:
                idx = idx + 1
                continue 
            require idx < stor1.length
            stor56B1[idx] = 0
}

function addSpender(address arg1) payable {
    uint256(stor19[address(arg1)])++
    if not uint256(stor19[address(arg1)]) <= uint256(stor19[address(arg1)]) + 1:
        idx = uint256(stor19[address(arg1)]) + 1
        while uint256(stor19[address(arg1)]) > idx:
            uint256(stor19[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor19[address(arg1)][uint256(stor19[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(stor19[address(arg1)][uint256(stor19[address(arg1)])]))
}

function collect() payable {
    require address(owner) == tx.origin
    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
    require balanceOf[address(this.address)] + balanceOf[address(stor0)] >= balanceOf[address(stor0)]
    balanceOf[address(this.address)] = 0
    balanceOf[address(stor0)] += balanceOf[address(this.address)]
    allowance[address(this.address)][address(msg.sender)] -= balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, address(owner));
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_5cdf1649(?) payable {
    require tx.origin == address(owner)
    idx = 0
    while idx < stor1.length:
        if stor56B1[idx] == arg1:
        stor1.length++
        if not stor1.length > stor1.length + 1:
            mem[0] = 1
            stor1[stor1.length] = arg1 or Mask(96, 160, stor1[stor1.length])
            idx = idx + 1
            continue 
        s = stor1.length + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0d
        while stor1.length + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        mem[0] = 1
        stor1[stor1.length] = arg1 or Mask(96, 160, stor1[stor1.length])
        s = stor1.length + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0d
        continue 
}

function sub_d6bb77bc(?) payable {
    if msg.value != 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    if balanceOf[address(msg.sender)] < 1:
        require uint256(stor19[address(msg.sender)])
        mem[0] = msg.sender
        mem[32] = 19
        idx = 0
        while idx < uint256(stor19[address(msg.sender)]):
            require idx < uint256(stor[sha3(mem[0 len 64])])
            mem[0] = sha3(mem[0 len 64])
            if address(stor[sha3(mem[0]) + idx]) <= 1:
                mem[0] = msg.sender
                mem[32] = 19
                idx = idx + 1
                continue 
            require idx < uint256(stor19[address(msg.sender)])
            require address(stor19[address(msg.sender)][idx]) != msg.sender
            balanceOf[address(stor19[address(msg.sender)][idx])]--
            totalBurned++
            totalSupply--
            require totalBurned < stor9.length
            emit 0x62e5484e: arg1, arg2, (stor9[stor11] % arg2) + arg1
            return ((stor9[stor11] % arg2) + arg1)
        require msg.sender != msg.sender
    balanceOf[address(msg.sender)]--
    totalBurned++
    totalSupply--
    require totalBurned < stor9.length
    emit 0x62e5484e: arg1, arg2, (stor9[stor11] % arg2) + arg1
    return ((stor9[stor11] % arg2) + arg1)
}

function changeOwner(address arg1) payable {
    require tx.origin == address(owner)
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor56B1[idx] != msg.sender:
            if msg.sender != this.address:
                idx = idx + 1
                continue 
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0d
            while stor1.length + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        stor1[stor1.length] = arg1 or Mask(96, 160, stor1[stor1.length])
        require address(owner) == tx.origin
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            if stor56B1[idx] != address(owner):
                if address(owner) != this.address:
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                if stor56B1[idx] != address(owner):
                    idx = idx + 1
                    continue 
                require idx < stor1.length
                stor56B1[idx] = 0
                uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
                return arg1
            uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
            return arg1
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        return arg1
    return 0
}

function _fallback() payable {
    require msg.value >= tokenValue
    call msg.sender with:
       value msg.value % tokenValue wei
         gas 0 wei
    require ext_call.success
    if balanceOf[address(this.address)] > msg.value - (msg.value % tokenValue) / tokenValue:
        require balanceOf[address(this.address)] >= msg.value - (msg.value % tokenValue) / tokenValue
        require (msg.value - (msg.value % tokenValue) / tokenValue) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(this.address)] -= msg.value - (msg.value % tokenValue) / tokenValue
        balanceOf[msg.sender] += msg.value - (msg.value % tokenValue) / tokenValue
        allowance[address(this.address)][address(msg.sender)] -= msg.value - (msg.value % tokenValue) / tokenValue
        emit Transfer((msg.value - (msg.value % tokenValue) / tokenValue), this.address, msg.sender);
        stor18[address(this.address)] = msg.value - (msg.value % tokenValue) + stor18[address(this.address)]
    else:
        if balanceOf[address(stor0)] <= msg.value - (msg.value % tokenValue) / tokenValue:
            require balanceOf[0] >= msg.value - (msg.value % tokenValue) / tokenValue
            require (msg.value - (msg.value % tokenValue) / tokenValue) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[0] -= msg.value - (msg.value % tokenValue) / tokenValue
            balanceOf[msg.sender] += msg.value - (msg.value % tokenValue) / tokenValue
            allowance[0][address(msg.sender)] -= msg.value - (msg.value % tokenValue) / tokenValue
            emit Transfer((msg.value - (msg.value % tokenValue) / tokenValue), 0, msg.sender);
            stor18[0] = msg.value - (msg.value % tokenValue) + stor18[0]
        else:
            require balanceOf[address(stor0)] >= msg.value - (msg.value % tokenValue) / tokenValue
            require (msg.value - (msg.value % tokenValue) / tokenValue) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(stor0)] -= msg.value - (msg.value % tokenValue) / tokenValue
            balanceOf[msg.sender] += msg.value - (msg.value % tokenValue) / tokenValue
            allowance[address(stor0)][address(msg.sender)] -= msg.value - (msg.value % tokenValue) / tokenValue
            emit Transfer((msg.value - (msg.value % tokenValue) / tokenValue), address(owner), msg.sender);
            stor18[address(stor0)] = msg.value - (msg.value % tokenValue) + stor18[address(stor0)]
}

function sub_3776c2bd(?) payable {
    mem[64] = 96
    require block.number >= 255
    if stor9.length < stor17:
        s = 0
        s = 0
        idx = 0
        while idx < stor17:
            mem[mem[64] + 32] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 10
            mem[mem[64] + 96] = 'darkmatter'
            emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp);
            if stor9.length < stor17:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            else:
                require 0 < stor9.length
                stor9 = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = stor9
            s = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            s = (idx * stor16) + stor15
            idx = idx + 1
            continue 
    else:
        require totalBurned < stor9.length
        emit 0x62e5484e: 0, stor9.length, stor9[stor11] % stor9.length
        balanceOf[address(this.address)]--
        s = 0
        s = 0
        idx = 0
        while idx < stor17:
            mem[mem[64] + 32] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 10
            mem[mem[64] + 96] = 'darkmatter'
            emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp);
            if stor9.length < stor17:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            else:
                require stor9[stor11] % stor9.length < stor9.length
                stor9[stor9[stor11] % stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = stor9[stor9[stor11] % stor9.length]
            s = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            s = (idx * stor16) + stor15
            idx = idx + 1
            continue 
    balanceOf[address(arg1)] += minerReward
    balanceOf[this.address] = stor17 - minerReward + balanceOf[this.address]
    totalSupply += stor17
    require totalBurned < stor9.length
    emit 0x62e5484e: 1, stor17, (stor9[stor11] % stor17) + 1
    stor16 = (stor9[stor11] % stor17) + 1
    balanceOf[address(this.address)]--
    totalBurned++
    totalSupply--
    emit 0x62e5484e: 0, -(2 * stor16 * stor17) + 255, stor9[stor11] % -(2 * stor16 * stor17) + 255
    stor15 = stor9[stor11] % -(2 * stor16 * stor17) + 255
    balanceOf[address(this.address)]--
    totalBurned++
    totalSupply--
    emit Mined(stor17, arg1);
    emit Log(string rg1, uint256 rg2):
             64,
             0,
             9,
             'gas usage',
}

function mine() payable {
    mem[64] = 96
    if msg.value != 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    require block.number >= 255
    if stor9.length < stor17:
        s = 0
        s = 0
        idx = 0
        while idx < stor17:
            mem[mem[64] + 32] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 10
            mem[mem[64] + 96] = 'darkmatter'
            emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp);
            if stor9.length < stor17:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            else:
                require 0 < stor9.length
                stor9 = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = stor9
            s = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            s = (idx * stor16) + stor15
            idx = idx + 1
            continue 
    else:
        require totalBurned < stor9.length
        emit 0x62e5484e: 0, stor9.length, stor9[stor11] % stor9.length
        balanceOf[address(this.address)]--
        s = 0
        s = 0
        idx = 0
        while idx < stor17:
            mem[mem[64] + 32] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 10
            mem[mem[64] + 96] = 'darkmatter'
            emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp);
            if stor9.length < stor17:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            else:
                require stor9[stor11] % stor9.length < stor9.length
                stor9[stor9[stor11] % stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = stor9[stor9[stor11] % stor9.length]
            s = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            s = (idx * stor16) + stor15
            idx = idx + 1
            continue 
    balanceOf[address(msg.sender)] += minerReward
    balanceOf[this.address] = stor17 - minerReward + balanceOf[this.address]
    totalSupply += stor17
    require totalBurned < stor9.length
    emit 0x62e5484e: 1, stor17, (stor9[stor11] % stor17) + 1
    stor16 = (stor9[stor11] % stor17) + 1
    balanceOf[address(this.address)]--
    totalBurned++
    totalSupply--
    emit 0x62e5484e: 0, -(2 * stor16 * stor17) + 255, stor9[stor11] % -(2 * stor16 * stor17) + 255
    stor15 = stor9[stor11] % -(2 * stor16 * stor17) + 255
    balanceOf[address(this.address)]--
    totalBurned++
    totalSupply--
    emit Mined(stor17, msg.sender);
    emit Log(string rg1, uint256 rg2):
             64,
             0,
             9,
             'gas usage',
}

function myBalance() payable {
    mem[64] = 96
    if msg.value != 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    require block.number >= 255
    if stor9.length < stor17:
        s = 0
        s = 0
        idx = 0
        while idx < stor17:
            mem[mem[64] + 32] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 10
            mem[mem[64] + 96] = 'darkmatter'
            emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp);
            if stor9.length < stor17:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            else:
                require 0 < stor9.length
                stor9 = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = stor9
            s = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            s = (idx * stor16) + stor15
            idx = idx + 1
            continue 
    else:
        require totalBurned < stor9.length
        emit 0x62e5484e: 0, stor9.length, stor9[stor11] % stor9.length
        balanceOf[address(this.address)]--
        s = 0
        s = 0
        idx = 0
        while idx < stor17:
            mem[mem[64] + 32] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 10
            mem[mem[64] + 96] = 'darkmatter'
            emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp);
            if stor9.length < stor17:
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            else:
                require stor9[stor11] % stor9.length < stor9.length
                stor9[stor9[stor11] % stor9.length] = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
                stor9.length++
                if not stor9.length <= stor9.length + 1:
                    s = sha3(9) + stor9.length + 1
                    while sha3(9) + stor9.length > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                mem[0] = 9
                stor9[stor9.length] = stor9[stor9[stor11] % stor9.length]
            s = block.hash(block.number - (idx * stor16) - stor15) / block.timestamp * block.hash(block.number - (idx * stor16) - stor15 - stor16) / block.timestamp
            s = (idx * stor16) + stor15
            idx = idx + 1
            continue 
    balanceOf[address(this.address)] += minerReward
    balanceOf[this.address] = stor17 - minerReward + balanceOf[this.address]
    totalSupply += stor17
    require totalBurned < stor9.length
    emit 0x62e5484e: 1, stor17, (stor9[stor11] % stor17) + 1
    stor16 = (stor9[stor11] % stor17) + 1
    balanceOf[address(this.address)]--
    totalBurned++
    totalSupply--
    emit 0x62e5484e: 0, -(2 * stor16 * stor17) + 255, stor9[stor11] % -(2 * stor16 * stor17) + 255
    stor15 = stor9[stor11] % -(2 * stor16 * stor17) + 255
    balanceOf[address(this.address)]--
    totalBurned++
    totalSupply--
    emit Mined(stor17, this.address);
    emit Log(string rg1, uint256 rg2):
             64,
             0,
             9,
             'gas usage',
    return balanceOf[address(msg.sender)]
}

function sub_1e97d1bb(?) payable {
    mem[64] = 96
    if msg.value != 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    idx = 0
    while idx < arg1:
        if 0 == msg.value:
            require block.number >= 255
            if stor9.length < stor17:
                t = 0
                t = 0
                s = 0
                while s < stor17:
                    mem[mem[64] + 32] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 10
                    mem[mem[64] + 96] = 'darkmatter'
                    emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp);
                    if stor9.length < stor17:
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    else:
                        require 0 < stor9.length
                        stor9 = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = stor9
                    t = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    t = (s * stor16) + stor15
                    s = s + 1
                    continue 
            else:
                require totalBurned < stor9.length
                mem[mem[64] + 32] = stor9.length
                mem[mem[64] + 64] = stor9[stor11] % stor9.length
                emit 0x62e5484e: 0, stor9.length, stor9[stor11] % stor9.length
                mem[0] = this.address
                balanceOf[address(this.address)]--
                t = 0
                t = 0
                s = 0
                while s < stor17:
                    mem[mem[64] + 32] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 10
                    mem[mem[64] + 96] = 'darkmatter'
                    emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp);
                    if stor9.length < stor17:
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    else:
                        require stor9[stor11] % stor9.length < stor9.length
                        stor9[stor9[stor11] % stor9.length] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = stor9[stor9[stor11] % stor9.length]
                    t = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    t = (s * stor16) + stor15
                    s = s + 1
                    continue 
        else:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
            require block.number >= 255
            if stor9.length < stor17:
                t = 0
                t = 0
                s = 0
                while s < stor17:
                    mem[mem[64] + 32] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 10
                    mem[mem[64] + 96] = 'darkmatter'
                    emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp);
                    if stor9.length < stor17:
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    else:
                        require 0 < stor9.length
                        stor9 = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = stor9
                    t = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    t = (s * stor16) + stor15
                    s = s + 1
                    continue 
            else:
                require totalBurned < stor9.length
                mem[mem[64] + 32] = stor9.length
                mem[mem[64] + 64] = stor9[stor11] % stor9.length
                emit 0x62e5484e: 0, stor9.length, stor9[stor11] % stor9.length
                mem[0] = this.address
                balanceOf[address(this.address)]--
                t = 0
                t = 0
                s = 0
                while s < stor17:
                    mem[mem[64] + 32] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 10
                    mem[mem[64] + 96] = 'darkmatter'
                    emit Log(Array(len=10, data='darkmatter'), block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp);
                    if stor9.length < stor17:
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            idx = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    else:
                        require stor9[stor11] % stor9.length < stor9.length
                        stor9[stor9[stor11] % stor9.length] = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                        stor9.length++
                        if not stor9.length <= stor9.length + 1:
                            t = sha3(9) + stor9.length + 1
                            while sha3(9) + stor9.length > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        mem[0] = 9
                        stor9[stor9.length] = stor9[stor9[stor11] % stor9.length]
                    t = block.hash(block.number - (s * stor16) - stor15) / block.timestamp * block.hash(block.number - (s * stor16) - stor15 - stor16) / block.timestamp
                    t = (s * stor16) + stor15
                    s = s + 1
                    continue 
        mem[32] = 7
        balanceOf[address(msg.sender)] += minerReward
        balanceOf[this.address] = stor17 - minerReward + balanceOf[this.address]
        totalSupply += stor17
        require totalBurned < stor9.length
        mem[mem[64] + 64] = (stor9[stor11] % stor17) + 1
        emit 0x62e5484e: 1, stor17, (stor9[stor11] % stor17) + 1
        stor16 = (stor9[stor11] % stor17) + 1
        mem[32] = 7
        balanceOf[address(this.address)]--
        totalBurned++
        totalSupply--
        mem[mem[64] + 32] = -(2 * stor16 * stor17) + 255
        mem[mem[64] + 64] = stor9[stor11] % -(2 * stor16 * stor17) + 255
        emit 0x62e5484e: 0, -(2 * stor16 * stor17) + 255, stor9[stor11] % -(2 * stor16 * stor17) + 255
        stor15 = stor9[stor11] % -(2 * stor16 * stor17) + 255
        mem[0] = this.address
        mem[32] = 7
        balanceOf[address(this.address)]--
        totalBurned++
        totalSupply--
        emit Mined(stor17, msg.sender);
        mem[mem[64] + 32] = 0
        mem[mem[64]] = 64
        mem[mem[64] + 64] = 9
        mem[mem[64] + 96] = 'gas usage'
        emit Log(string rg1, uint256 rg2):
                 64,
                 0,
                 9,
                 'gas usage',
        idx = idx + 1
        continue 
}



}
