contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 9314]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct sub_6435917c;
array of struct orders;
array of struct balance;
array of uint256 stor4;
array of address stor5;

function getOrder(bytes32 arg1) payable {
    return orders[arg1].field_256, 
           uint8(orders[arg1].field_512),
           orders[arg1].field_768,
           orders[arg1].field_1024,
           address(orders[arg1].field_1280)
}

function sub_6435917c(?) payable {
    return sub_6435917c[arg1].field_1792
}

function orders(bytes32 arg1) payable {
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           uint8(orders[arg1].field_512),
           orders[arg1].field_768,
           orders[arg1].field_1024,
           address(orders[arg1].field_1280),
           orders[arg1].field_1536,
           orders[arg1].field_1792,
           orders[arg1].field_2048
}

function getBalance(uint256 arg1, address arg2) payable {
    return balance[address(arg2)][arg1].field_0
}

function markets(uint256 arg1) payable {
    return sub_6435917c[arg1].field_0, 
           sub_6435917c[arg1].field_256,
           address(sub_6435917c[arg1].field_512),
           sub_6435917c[arg1].field_768,
           sub_6435917c[arg1].field_1024,
           sub_6435917c[arg1].field_1280,
           sub_6435917c[arg1].field_1536,
           sub_6435917c[arg1].field_1792
}

function balances(address arg1, uint256 arg2) payable {
    return balance[arg1][arg2].field_0, balance[arg1][arg2].field_256
}

function getMarket(uint256 arg1) payable {
    return sub_6435917c[arg1].field_256, 
           address(sub_6435917c[arg1].field_512),
           sub_6435917c[arg1].field_1024,
           sub_6435917c[arg1].field_768,
           sub_6435917c[arg1].field_1280
}

function sub_f171e6e7(?) payable {
    return orders[arg1].field_1792
}

function _fallback() payable {
  stop
}

function min(uint256 arg1, uint256 arg2) payable {
    if arg1 >= arg2:
        return arg2
    return arg1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    call address(sub_6435917c[arg1].field_512).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    balance[address(msg.sender)][arg1].field_0 += arg2
    emit Deposit(arg1, msg.sender, arg2);
    return 1
}

function sub_ac84508c(?) payable {
    stor0++
    sub_6435917c[stor0].field_0 = stor0
    sub_6435917c[stor0].field_256 = arg1
    sub_6435917c[stor0].field_512 = arg2 or Mask(96, 160, sub_6435917c[stor0].field_512)
    sub_6435917c[stor0].field_768 = arg4
    sub_6435917c[stor0].field_1024 = arg3
    sub_6435917c[stor0].field_1280 = arg5
    emit 0xb62cbf80: stor0, arg1, address(arg2), arg3, arg4, arg5
    return 0, stor0
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require arg2 <= balance[address(msg.sender)][arg1].field_0
    balance[address(msg.sender)][arg1].field_0 -= arg2
    call address(sub_6435917c[arg1].field_512).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit Withdrawal(arg1, msg.sender, arg2);
    return ext_call.return_data[0]
}

function getOrders(uint256 arg1) payable {
    mem[160] = sub_6435917c[arg1].field_1536
    idx = 0
    s = sub_6435917c[arg1].field_1792
    while uint8(idx) < sub_6435917c[arg1].field_1536:
        require uint8(idx) < mem[160]
        mem[(32 * uint8(idx)) + 192] = s
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        s = orders[s].field_1792
        continue 
    mem[(32 * sub_6435917c[arg1].field_1536) + 192] = 32
    mem[(32 * sub_6435917c[arg1].field_1536) + 224] = mem[160]
    mem[(32 * sub_6435917c[arg1].field_1536) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * sub_6435917c[arg1].field_1536) + 224 len (32 * mem[160]) + 32]
}

function sub_7070df79(?) payable {
    if arg3 <= 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 2, 0
    if arg4 <= 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 3, 0
    if not address(sub_6435917c[arg1].field_512):
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 4, 0
    if not arg2:
        if msg.value < sub_6435917c[arg1].field_1280:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            return 6, 0
        if msg.value < 10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            return 7, 0
        if msg.value > 10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024:
            call msg.sender with:
               value msg.value - (10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024) wei
                 gas 0 wei
    else:
        if arg2 != 1:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            return 5, 0
        if not arg2:
            if msg.value < sub_6435917c[arg1].field_1280:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                return 6, 0
            if msg.value < 10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                return 7, 0
            if msg.value > 10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024:
                call msg.sender with:
                   value msg.value - (10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024) wei
                     gas 0 wei
        else:
            if arg2 == 1:
                if arg3 > balance[address(msg.sender)][arg1].field_0:
                    return 8, 0
                if 10^18 * arg3 * arg4 / sub_6435917c[arg1].field_768 * 10^sub_6435917c[arg1].field_1024 < sub_6435917c[arg1].field_1280:
                    return 6, 0
                balance[address(msg.sender)][arg1].field_0 -= arg3
                balance[address(msg.sender)][arg1].field_256 += arg3
    if orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_768:
        return 9, 0
    orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_256 = arg1
    orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_512 = arg2 or Mask(248, 8, orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_512)
    orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_768 = arg3
    orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_1024 = arg4
    orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_1280 = msg.sender or Mask(96, 160, orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_1280)
    orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_1536 = block.number
    if sub_6435917c[arg1].field_1792:
        orders[stor1[arg1].field_1792].field_2048 = sha3(arg1, uint8(arg2), arg3, arg4, block.number)
        orders[arg1][uint8(arg2)][arg3][arg4][block.number].field_1792 = sub_6435917c[arg1].field_1792
    sub_6435917c[arg1].field_1536++
    sub_6435917c[arg1].field_1792 = sha3(arg1, uint8(arg2), arg3, arg4, block.number)
    emit 0xf25d94b3: arg1, sha3(arg1, uint8(arg2), arg3, arg4, block.number), arg2, arg3, arg4, address(msg.sender), block.number
    return 0, sha3(arg1, uint8(arg2), arg3, arg4, block.number)
}

function cancelOrder(bytes32 arg1) payable {
    if address(orders[arg1].field_1280) != msg.sender:
        return 1
    if not orders[arg1].field_1792:
        sub_6435917c[stor2[arg1].field_256].field_1536--
        if not sub_6435917c[stor2[arg1].field_256].field_1536:
            sub_6435917c[stor2[arg1].field_256].field_1792 = 0
        orders[arg1].field_0 = 0
        orders[arg1].field_256 = 0
        uint8(orders[arg1].field_512) = 0
        orders[arg1].field_768 = 0
        orders[arg1].field_1024 = 0
        address(orders[arg1].field_1280) = 0
        orders[arg1].field_1536 = 0
        orders[arg1].field_1792 = 0
        orders[arg1].field_2048 = 0
        emit 0xea4708cd: orders[arg1].field_256, arg1, uint8(orders[arg1].field_512), address(orders[arg1].field_1280)
        if not uint8(orders[arg1].field_512):
            call address(orders[arg1].field_1280) with:
               value 10^18 * orders[arg1].field_768 * orders[arg1].field_1024 / sub_6435917c[stor2[arg1].field_256].field_768 * 10^sub_6435917c[stor2[arg1].field_256].field_1024 wei
                 gas 0 wei
        else:
            if uint8(orders[arg1].field_512) == 1:
                balance[address(msg.sender)][stor2[arg1].field_256].field_0 += orders[arg1].field_768
                balance[address(msg.sender)][stor2[arg1].field_256].field_256 -= orders[arg1].field_768
    else:
        if orders[arg1].field_2048:
            orders[orders[arg1].field_1792].field_2048 = orders[arg1].field_2048
            orders[orders[arg1].field_2048].field_1792 = orders[arg1].field_1792
            sub_6435917c[stor2[arg1].field_256].field_1536--
            if not sub_6435917c[stor2[arg1].field_256].field_1536:
                sub_6435917c[stor2[arg1].field_256].field_1792 = 0
            orders[arg1].field_0 = 0
            orders[arg1].field_256 = 0
            uint8(orders[arg1].field_512) = 0
            orders[arg1].field_768 = 0
            orders[arg1].field_1024 = 0
            address(orders[arg1].field_1280) = 0
            orders[arg1].field_1536 = 0
            orders[arg1].field_1792 = 0
            orders[arg1].field_2048 = 0
            emit 0xea4708cd: orders[arg1].field_256, arg1, uint8(orders[arg1].field_512), address(orders[arg1].field_1280)
            if not uint8(orders[arg1].field_512):
                call address(orders[arg1].field_1280) with:
                   value 10^18 * orders[arg1].field_768 * orders[arg1].field_1024 / sub_6435917c[stor2[arg1].field_256].field_768 * 10^sub_6435917c[stor2[arg1].field_256].field_1024 wei
                     gas 0 wei
            else:
                if uint8(orders[arg1].field_512) == 1:
                    balance[address(msg.sender)][stor2[arg1].field_256].field_0 += orders[arg1].field_768
                    balance[address(msg.sender)][stor2[arg1].field_256].field_256 -= orders[arg1].field_768
        else:
            if orders[arg1].field_1792:
                sub_6435917c[stor2[arg1].field_256].field_1792 = orders[arg1].field_1792
                orders[orders[arg1].field_1792].field_2048 = 0
            sub_6435917c[stor2[arg1].field_256].field_1536--
            if not sub_6435917c[stor2[arg1].field_256].field_1536:
                sub_6435917c[stor2[arg1].field_256].field_1792 = 0
            orders[arg1].field_0 = 0
            orders[arg1].field_256 = 0
            uint8(orders[arg1].field_512) = 0
            orders[arg1].field_768 = 0
            orders[arg1].field_1024 = 0
            address(orders[arg1].field_1280) = 0
            orders[arg1].field_1536 = 0
            orders[arg1].field_1792 = 0
            orders[arg1].field_2048 = 0
            emit 0xea4708cd: orders[arg1].field_256, arg1, uint8(orders[arg1].field_512), address(orders[arg1].field_1280)
            if not uint8(orders[arg1].field_512):
                call address(orders[arg1].field_1280) with:
                   value 10^18 * orders[arg1].field_768 * orders[arg1].field_1024 / sub_6435917c[stor2[arg1].field_256].field_768 * 10^sub_6435917c[stor2[arg1].field_256].field_1024 wei
                     gas 0 wei
            else:
                if uint8(orders[arg1].field_512) == 1:
                    balance[address(msg.sender)][stor2[arg1].field_256].field_0 += orders[arg1].field_768
                    balance[address(msg.sender)][stor2[arg1].field_256].field_256 -= orders[arg1].field_768
    return 0
}

function sub_1238b8d2(?) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    s = 0
    s = 0
    s = 0
    s = 0
    t = 0
    u = msg.value
    idx = 0
    v = arg1
    while idx < arg2.length:
        require idx < mem[96]
        _755 = mem[(32 * idx) + 128]
        _756 = sha3(mem[(32 * idx) + 128], 2)
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        _757 = sha3(mem[(32 * idx) + 128], 2)
        if not uint8(orders[mem[(32 * idx) + 128]].field_512):
            _760 = sha3(mem[(32 * idx) + 128], 2)
            _761 = sha3(mem[(32 * idx) + 128], 2)
            _762 = sha3(orders[mem[(32 * idx) + 128]].field_256, 1)
            _763 = sha3(orders[mem[(32 * idx) + 128]].field_256, 1)
            _764 = sha3(mem[(32 * idx) + 128], 2)
            _766 = sha3(orders[mem[(32 * idx) + 128]].field_256, sha3(address(msg.sender), 3))
            if v >= balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0:
                if orders[mem[(32 * idx) + 128]].field_768 >= balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0:
                    if balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 < orders[mem[(32 * idx) + 128]].field_768:
                        orders[mem[(32 * idx) + 128]].field_768 -= balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0
                        balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0
                        mem[0] = orders[mem[(32 * idx) + 128]].field_256
                        mem[32] = sha3(address(msg.sender), 3)
                        balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 = 0
                        mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                        mem[mem[64] + 32] = _755
                        mem[mem[64] + 64] = stor[_766]
                        mem[mem[64] + 96] = stor4[_761]
                        mem[mem[64] + 128] = stor[_766] >= balance[_760].field_0
                        emit 0x60233f6f: mem[mem[64]], _755, stor[_766], stor4[_761], stor[_766] >= balance[_760].field_0
                    else:
                        _782 = sha3(mem[(32 * idx) + 128], 2)
                        _783 = sha3(mem[(32 * idx) + 128], 2)
                        if not orders[mem[(32 * idx) + 128]].field_1792:
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                            if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                        else:
                            if orders[mem[(32 * idx) + 128]].field_2048:
                                orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = orders[mem[(32 * idx) + 128]].field_2048
                                orders[orders[mem[(32 * idx) + 128]].field_2048].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                                if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                            else:
                                if orders[mem[(32 * idx) + 128]].field_1792:
                                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                                    orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = 0
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                                if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                        mem[32] = 2
                        orders[mem[(32 * idx) + 128]].field_0 = 0
                        orders[mem[(32 * idx) + 128]].field_256 = 0
                        uint8(orders[mem[(32 * idx) + 128]].field_512) = 0
                        orders[mem[(32 * idx) + 128]].field_768 = 0
                        orders[mem[(32 * idx) + 128]].field_1024 = 0
                        address(orders[mem[(32 * idx) + 128]].field_1280) = 0
                        orders[mem[(32 * idx) + 128]].field_1536 = 0
                        orders[mem[(32 * idx) + 128]].field_1792 = 0
                        orders[mem[(32 * idx) + 128]].field_2048 = 0
                        mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                        mem[mem[64] + 32] = _755
                        mem[mem[64] + 64] = uint8(orders[_782].field_0)
                        mem[mem[64] + 96] = stor5[_783]
                        emit 0xea4708cd: mem[mem[64]], _755, uint8(orders[_782].field_0), stor5[_783]
                        balance[stor5[_764]][stor1[_757].field_0].field_0 += stor[_766]
                        mem[0] = sub_6435917c[_757].field_0
                        mem[32] = sha3(address(msg.sender), 3)
                        balance[address(msg.sender)][stor1[_757].field_0].field_0 -= stor[_766]
                        mem[mem[64]] = sub_6435917c[_757].field_0
                        mem[mem[64] + 32] = _755
                        mem[mem[64] + 64] = stor[_766]
                        mem[mem[64] + 96] = stor4[_761]
                        mem[mem[64] + 128] = stor[_766] >= balance[_760].field_0
                        emit 0x60233f6f: sub_6435917c[_757].field_0, _755, stor[_766], stor4[_761], stor[_766] >= balance[_760].field_0
                    call msg.sender with:
                       value 10^18 * stor[_766] * stor4[_761] / balance[_762].field_0 * 10^stor4[_763] wei
                         gas 0 wei
                    s = sub_6435917c[_757].field_0
                    s = uint8(orders[_756].field_0)
                    s = _755
                    s = 10^18 * stor[_766] * stor4[_761] / balance[_762].field_0 * 10^stor4[_763]
                    t = stor[_766]
                    u = u - (10^18 * stor[_766] * stor4[_761] / balance[_762].field_0 * 10^stor4[_763])
                    idx = idx + 1
                    v = v - stor[_766]
                    continue 
                if orders[mem[(32 * idx) + 128]].field_768 < orders[mem[(32 * idx) + 128]].field_768:
                    orders[mem[(32 * idx) + 128]].field_768 = 0
                    balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += orders[mem[(32 * idx) + 128]].field_768
                    mem[0] = orders[mem[(32 * idx) + 128]].field_256
                    mem[32] = sha3(address(msg.sender), 3)
                    balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 -= orders[mem[(32 * idx) + 128]].field_768
                    mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = balance[_760].field_0
                    mem[mem[64] + 96] = stor4[_761]
                    mem[mem[64] + 128] = balance[_760].field_0 >= balance[_760].field_0
                    emit 0x60233f6f: mem[mem[64]], _755, balance[_760].field_0, stor4[_761], balance[_760].field_0 >= balance[_760].field_0
                else:
                    _794 = sha3(mem[(32 * idx) + 128], 2)
                    _795 = sha3(mem[(32 * idx) + 128], 2)
                    if not orders[mem[(32 * idx) + 128]].field_1792:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                        if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                    else:
                        if orders[mem[(32 * idx) + 128]].field_2048:
                            orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = orders[mem[(32 * idx) + 128]].field_2048
                            orders[orders[mem[(32 * idx) + 128]].field_2048].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                            if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                        else:
                            if orders[mem[(32 * idx) + 128]].field_1792:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                                orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = 0
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                            if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                    mem[32] = 2
                    orders[mem[(32 * idx) + 128]].field_0 = 0
                    orders[mem[(32 * idx) + 128]].field_256 = 0
                    uint8(orders[mem[(32 * idx) + 128]].field_512) = 0
                    orders[mem[(32 * idx) + 128]].field_768 = 0
                    orders[mem[(32 * idx) + 128]].field_1024 = 0
                    address(orders[mem[(32 * idx) + 128]].field_1280) = 0
                    orders[mem[(32 * idx) + 128]].field_1536 = 0
                    orders[mem[(32 * idx) + 128]].field_1792 = 0
                    orders[mem[(32 * idx) + 128]].field_2048 = 0
                    mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = uint8(orders[_794].field_0)
                    mem[mem[64] + 96] = stor5[_795]
                    emit 0xea4708cd: mem[mem[64]], _755, uint8(orders[_794].field_0), stor5[_795]
                    balance[stor5[_764]][stor1[_757].field_0].field_0 += balance[_760].field_0
                    mem[0] = sub_6435917c[_757].field_0
                    mem[32] = sha3(address(msg.sender), 3)
                    balance[address(msg.sender)][stor1[_757].field_0].field_0 -= balance[_760].field_0
                    mem[mem[64]] = sub_6435917c[_757].field_0
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = balance[_760].field_0
                    mem[mem[64] + 96] = stor4[_761]
                    mem[mem[64] + 128] = balance[_760].field_0 >= balance[_760].field_0
                    emit 0x60233f6f: sub_6435917c[_757].field_0, _755, balance[_760].field_0, stor4[_761], balance[_760].field_0 >= balance[_760].field_0
            else:
                if orders[mem[(32 * idx) + 128]].field_768 >= v:
                    if v < orders[mem[(32 * idx) + 128]].field_768:
                        orders[mem[(32 * idx) + 128]].field_768 -= v
                        balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += v
                        mem[0] = orders[mem[(32 * idx) + 128]].field_256
                        mem[32] = sha3(address(msg.sender), 3)
                        balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 -= v
                        mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                        mem[mem[64] + 32] = _755
                        mem[mem[64] + 64] = v
                        mem[mem[64] + 96] = stor4[_761]
                        mem[mem[64] + 128] = v >= balance[_760].field_0
                        emit 0x60233f6f: mem[mem[64]], _755, v, stor4[_761], v >= balance[_760].field_0
                    else:
                        _806 = sha3(mem[(32 * idx) + 128], 2)
                        _807 = sha3(mem[(32 * idx) + 128], 2)
                        if not orders[mem[(32 * idx) + 128]].field_1792:
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                            if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                        else:
                            if orders[mem[(32 * idx) + 128]].field_2048:
                                orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = orders[mem[(32 * idx) + 128]].field_2048
                                orders[orders[mem[(32 * idx) + 128]].field_2048].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                                if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                            else:
                                if orders[mem[(32 * idx) + 128]].field_1792:
                                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                                    orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = 0
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                                if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                        mem[32] = 2
                        orders[mem[(32 * idx) + 128]].field_0 = 0
                        orders[mem[(32 * idx) + 128]].field_256 = 0
                        uint8(orders[mem[(32 * idx) + 128]].field_512) = 0
                        orders[mem[(32 * idx) + 128]].field_768 = 0
                        orders[mem[(32 * idx) + 128]].field_1024 = 0
                        address(orders[mem[(32 * idx) + 128]].field_1280) = 0
                        orders[mem[(32 * idx) + 128]].field_1536 = 0
                        orders[mem[(32 * idx) + 128]].field_1792 = 0
                        orders[mem[(32 * idx) + 128]].field_2048 = 0
                        mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                        mem[mem[64] + 32] = _755
                        mem[mem[64] + 64] = uint8(orders[_806].field_0)
                        mem[mem[64] + 96] = stor5[_807]
                        emit 0xea4708cd: mem[mem[64]], _755, uint8(orders[_806].field_0), stor5[_807]
                        balance[stor5[_764]][stor1[_757].field_0].field_0 += v
                        mem[0] = sub_6435917c[_757].field_0
                        mem[32] = sha3(address(msg.sender), 3)
                        balance[address(msg.sender)][stor1[_757].field_0].field_0 -= v
                        mem[mem[64]] = sub_6435917c[_757].field_0
                        mem[mem[64] + 32] = _755
                        mem[mem[64] + 64] = v
                        mem[mem[64] + 96] = stor4[_761]
                        mem[mem[64] + 128] = v >= balance[_760].field_0
                        emit 0x60233f6f: sub_6435917c[_757].field_0, _755, v, stor4[_761], v >= balance[_760].field_0
                    call msg.sender with:
                       value 10^18 * v * stor4[_761] / balance[_762].field_0 * 10^stor4[_763] wei
                         gas 0 wei
                    s = sub_6435917c[_757].field_0
                    s = uint8(orders[_756].field_0)
                    s = _755
                    s = 10^18 * v * stor4[_761] / balance[_762].field_0 * 10^stor4[_763]
                    t = v
                    u = u - (10^18 * v * stor4[_761] / balance[_762].field_0 * 10^stor4[_763])
                    idx = idx + 1
                    v = 0
                    continue 
                if orders[mem[(32 * idx) + 128]].field_768 < orders[mem[(32 * idx) + 128]].field_768:
                    orders[mem[(32 * idx) + 128]].field_768 = 0
                    balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += orders[mem[(32 * idx) + 128]].field_768
                    mem[0] = orders[mem[(32 * idx) + 128]].field_256
                    mem[32] = sha3(address(msg.sender), 3)
                    balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 -= orders[mem[(32 * idx) + 128]].field_768
                    mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = balance[_760].field_0
                    mem[mem[64] + 96] = stor4[_761]
                    mem[mem[64] + 128] = balance[_760].field_0 >= balance[_760].field_0
                    emit 0x60233f6f: mem[mem[64]], _755, balance[_760].field_0, stor4[_761], balance[_760].field_0 >= balance[_760].field_0
                else:
                    _818 = sha3(mem[(32 * idx) + 128], 2)
                    _819 = sha3(mem[(32 * idx) + 128], 2)
                    if not orders[mem[(32 * idx) + 128]].field_1792:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                        if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                    else:
                        if orders[mem[(32 * idx) + 128]].field_2048:
                            orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = orders[mem[(32 * idx) + 128]].field_2048
                            orders[orders[mem[(32 * idx) + 128]].field_2048].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                            if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                        else:
                            if orders[mem[(32 * idx) + 128]].field_1792:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                                orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = 0
                            sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                            if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                    mem[32] = 2
                    orders[mem[(32 * idx) + 128]].field_0 = 0
                    orders[mem[(32 * idx) + 128]].field_256 = 0
                    uint8(orders[mem[(32 * idx) + 128]].field_512) = 0
                    orders[mem[(32 * idx) + 128]].field_768 = 0
                    orders[mem[(32 * idx) + 128]].field_1024 = 0
                    address(orders[mem[(32 * idx) + 128]].field_1280) = 0
                    orders[mem[(32 * idx) + 128]].field_1536 = 0
                    orders[mem[(32 * idx) + 128]].field_1792 = 0
                    orders[mem[(32 * idx) + 128]].field_2048 = 0
                    mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = uint8(orders[_818].field_0)
                    mem[mem[64] + 96] = stor5[_819]
                    emit 0xea4708cd: mem[mem[64]], _755, uint8(orders[_818].field_0), stor5[_819]
                    balance[stor5[_764]][stor1[_757].field_0].field_0 += balance[_760].field_0
                    mem[0] = sub_6435917c[_757].field_0
                    mem[32] = sha3(address(msg.sender), 3)
                    balance[address(msg.sender)][stor1[_757].field_0].field_0 -= balance[_760].field_0
                    mem[mem[64]] = sub_6435917c[_757].field_0
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = balance[_760].field_0
                    mem[mem[64] + 96] = stor4[_761]
                    mem[mem[64] + 128] = balance[_760].field_0 >= balance[_760].field_0
                    emit 0x60233f6f: sub_6435917c[_757].field_0, _755, balance[_760].field_0, stor4[_761], balance[_760].field_0 >= balance[_760].field_0
            call msg.sender with:
               value 10^18 * balance[_760].field_0 * stor4[_761] / balance[_762].field_0 * 10^stor4[_763] wei
                 gas 0 wei
            s = sub_6435917c[_757].field_0
            s = uint8(orders[_756].field_0)
            s = _755
            s = 10^18 * balance[_760].field_0 * stor4[_761] / balance[_762].field_0 * 10^stor4[_763]
            t = balance[_760].field_0
            u = u - (10^18 * balance[_760].field_0 * stor4[_761] / balance[_762].field_0 * 10^stor4[_763])
            idx = idx + 1
            v = v - balance[_760].field_0
            continue 
        if uint8(orders[mem[(32 * idx) + 128]].field_512) != 1:
            s = orders[mem[(32 * idx) + 128]].field_256
            s = uint8(orders[mem[(32 * idx) + 128]].field_512)
            s = mem[(32 * idx) + 128]
            s = s
            t = t
            u = u - s
            idx = idx + 1
            v = v - t
            continue 
        _769 = sha3(mem[(32 * idx) + 128], 2)
        _770 = sha3(mem[(32 * idx) + 128], 2)
        _771 = sha3(orders[mem[(32 * idx) + 128]].field_256, 1)
        _772 = sha3(orders[mem[(32 * idx) + 128]].field_256, 1)
        _773 = sha3(mem[(32 * idx) + 128], 2)
        if u <= 0:
            if u > 0:
                call msg.sender with:
                   value u wei
                     gas 0 wei
            return 7
        if u >= 10^18 * v * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024:
            if 10^18 * v * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 < 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024:
                orders[mem[(32 * idx) + 128]].field_768 -= 10^18 * v * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_256 -= 10^18 * v * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                mem[0] = orders[mem[(32 * idx) + 128]].field_256
                mem[32] = sha3(address(msg.sender), 3)
                balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += 10^18 * v * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                call address(orders[mem[(32 * idx) + 128]].field_1280) with:
                   value 10^18 * v * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 wei
                     gas 0 wei
                mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                mem[mem[64] + 32] = _755
                mem[mem[64] + 64] = 10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                mem[mem[64] + 96] = stor4[_770]
                mem[mem[64] + 128] = 10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                emit 0x60233f6f: mem[mem[64]], _755, 10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18, stor4[_770], 10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                s = sub_6435917c[_757].field_0
                s = uint8(orders[_756].field_0)
                s = _755
                s = 10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                t = 10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                u = u - (10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772])
                idx = idx + 1
                v = v - (10^18 * v * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18)
                continue 
            if 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 < 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024:
                orders[mem[(32 * idx) + 128]].field_768 -= 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_256 -= 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                mem[0] = orders[mem[(32 * idx) + 128]].field_256
                mem[32] = sha3(address(msg.sender), 3)
                balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                call address(orders[mem[(32 * idx) + 128]].field_1280) with:
                   value 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 wei
                     gas 0 wei
                mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                mem[mem[64] + 32] = _755
                mem[mem[64] + 64] = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                mem[mem[64] + 96] = stor4[_770]
                mem[mem[64] + 128] = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                emit 0x60233f6f: mem[mem[64]], _755, 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18, stor4[_770], 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                s = sub_6435917c[_757].field_0
                s = uint8(orders[_756].field_0)
                s = _755
                s = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                t = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                u = u - (10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772])
                idx = idx + 1
                v = v - (10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18)
                continue 
            _836 = sha3(mem[(32 * idx) + 128], 2)
            _837 = sha3(mem[(32 * idx) + 128], 2)
            if not orders[mem[(32 * idx) + 128]].field_1792:
                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
            else:
                if orders[mem[(32 * idx) + 128]].field_2048:
                    orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = orders[mem[(32 * idx) + 128]].field_2048
                    orders[orders[mem[(32 * idx) + 128]].field_2048].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                    if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                else:
                    if orders[mem[(32 * idx) + 128]].field_1792:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                        orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = 0
                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                    if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
            mem[32] = 2
            orders[mem[(32 * idx) + 128]].field_0 = 0
            orders[mem[(32 * idx) + 128]].field_256 = 0
            uint8(orders[mem[(32 * idx) + 128]].field_512) = 0
            orders[mem[(32 * idx) + 128]].field_768 = 0
            orders[mem[(32 * idx) + 128]].field_1024 = 0
            address(orders[mem[(32 * idx) + 128]].field_1280) = 0
            orders[mem[(32 * idx) + 128]].field_1536 = 0
            orders[mem[(32 * idx) + 128]].field_1792 = 0
            orders[mem[(32 * idx) + 128]].field_2048 = 0
            mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
            mem[mem[64] + 32] = _755
            mem[mem[64] + 64] = uint8(orders[_836].field_0)
            mem[mem[64] + 96] = stor5[_837]
            emit 0xea4708cd: mem[mem[64]], _755, uint8(orders[_836].field_0), stor5[_837]
        else:
            if u < 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024:
                orders[mem[(32 * idx) + 128]].field_768 -= u * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_256 -= u * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                mem[0] = orders[mem[(32 * idx) + 128]].field_256
                mem[32] = sha3(address(msg.sender), 3)
                balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += u * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                call address(orders[mem[(32 * idx) + 128]].field_1280) with:
                   value u wei
                     gas 0 wei
                mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                mem[mem[64] + 32] = _755
                mem[mem[64] + 64] = u * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                mem[mem[64] + 96] = stor4[_770]
                mem[mem[64] + 128] = u >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                emit 0x60233f6f: mem[mem[64]], _755, u * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18, stor4[_770], u >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                s = sub_6435917c[_757].field_0
                s = uint8(orders[_756].field_0)
                s = _755
                s = u
                t = u * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                u = 0
                idx = idx + 1
                v = v - (u * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18)
                continue 
            if 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 < 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024:
                orders[mem[(32 * idx) + 128]].field_768 -= 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                balance[address(stor2[mem[(32 * idx) + 128]].field_1280)][stor2[mem[(32 * idx) + 128]].field_256].field_256 -= 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                mem[0] = orders[mem[(32 * idx) + 128]].field_256
                mem[32] = sha3(address(msg.sender), 3)
                balance[address(msg.sender)][stor2[mem[(32 * idx) + 128]].field_256].field_0 += 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 * sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 / orders[mem[(32 * idx) + 128]].field_1024 / 10^18
                call address(orders[mem[(32 * idx) + 128]].field_1280) with:
                   value 10^18 * orders[mem[(32 * idx) + 128]].field_768 * orders[mem[(32 * idx) + 128]].field_1024 / sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_768 * 10^sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1024 wei
                     gas 0 wei
                mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
                mem[mem[64] + 32] = _755
                mem[mem[64] + 64] = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                mem[mem[64] + 96] = stor4[_770]
                mem[mem[64] + 128] = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                emit 0x60233f6f: mem[mem[64]], _755, 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18, stor4[_770], 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                s = sub_6435917c[_757].field_0
                s = uint8(orders[_756].field_0)
                s = _755
                s = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
                t = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18
                u = u - (10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772])
                idx = idx + 1
                v = v - (10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] * balance[_771].field_0 * 10^stor4[_772] / stor4[_770] / 10^18)
                continue 
            _856 = sha3(mem[(32 * idx) + 128], 2)
            _857 = sha3(mem[(32 * idx) + 128], 2)
            if not orders[mem[(32 * idx) + 128]].field_1792:
                sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
            else:
                if orders[mem[(32 * idx) + 128]].field_2048:
                    orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = orders[mem[(32 * idx) + 128]].field_2048
                    orders[orders[mem[(32 * idx) + 128]].field_2048].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                    if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
                else:
                    if orders[mem[(32 * idx) + 128]].field_1792:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = orders[mem[(32 * idx) + 128]].field_1792
                        orders[orders[mem[(32 * idx) + 128]].field_1792].field_2048 = 0
                    sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536--
                    if not sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1536:
                        sub_6435917c[stor2[mem[(32 * idx) + 128]].field_256].field_1792 = 0
            mem[32] = 2
            orders[mem[(32 * idx) + 128]].field_0 = 0
            orders[mem[(32 * idx) + 128]].field_256 = 0
            uint8(orders[mem[(32 * idx) + 128]].field_512) = 0
            orders[mem[(32 * idx) + 128]].field_768 = 0
            orders[mem[(32 * idx) + 128]].field_1024 = 0
            address(orders[mem[(32 * idx) + 128]].field_1280) = 0
            orders[mem[(32 * idx) + 128]].field_1536 = 0
            orders[mem[(32 * idx) + 128]].field_1792 = 0
            orders[mem[(32 * idx) + 128]].field_2048 = 0
            mem[mem[64]] = orders[mem[(32 * idx) + 128]].field_256
            mem[mem[64] + 32] = _755
            mem[mem[64] + 64] = uint8(orders[_856].field_0)
            mem[mem[64] + 96] = stor5[_857]
            emit 0xea4708cd: mem[mem[64]], _755, uint8(orders[_856].field_0), stor5[_857]
        balance[stor5[_773]][stor1[_757].field_0].field_256 -= balance[_769].field_0
        mem[0] = sub_6435917c[_757].field_0
        mem[32] = sha3(address(msg.sender), 3)
        balance[address(msg.sender)][stor1[_757].field_0].field_0 += balance[_769].field_0
        call stor5[_773] with:
           value 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] wei
             gas 0 wei
        mem[mem[64]] = sub_6435917c[_757].field_0
        mem[mem[64] + 32] = _755
        mem[mem[64] + 64] = balance[_769].field_0
        mem[mem[64] + 96] = stor4[_770]
        mem[mem[64] + 128] = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
        emit 0x60233f6f: sub_6435917c[_757].field_0, _755, balance[_769].field_0, stor4[_770], 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772] >= 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
        s = sub_6435917c[_757].field_0
        s = uint8(orders[_756].field_0)
        s = _755
        s = 10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772]
        t = balance[_769].field_0
        u = u - (10^18 * balance[_769].field_0 * stor4[_770] / balance[_771].field_0 * 10^stor4[_772])
        idx = idx + 1
        v = v - balance[_769].field_0
        continue 
    if u > 0:
        call msg.sender with:
           value u wei
             gas 0 wei
    return 0
}



}
