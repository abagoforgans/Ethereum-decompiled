contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    mem[96 len -4929] = code.data[5264 len -4929]
    mem[64] = -4833
    stor0 = msg.sender
    stor2.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4 = 5 * 10^15
    stor1 = mem[140 len 20]
    stor5 = 50
    stor6 = 50
    stor7 = 500
    stor8 = 3600
    stor3 = 10^15
    return code.data[335 len 4929]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


address controllerAddress;
address commissionAddress;
array of uint256 sub_b99fbccc;
uint256 registrationFee;
uint256 price;
uint256 sub_b6723c94;
uint256 sub_4080b045;
uint256 sub_200505fe;
uint256 expiration;
mapping of struct stor9;
array of uint256 stor10;
mapping of struct stor11;
array of uint256 sub_8259436d;

function registrationFee() {
    return registrationFee
}

function sub_200505fe(?) {
    return sub_200505fe
}

function sub_4080b045(?) {
    return sub_4080b045
}

function expiration() {
    return expiration
}

function sub_8259436d(?) {
    return sub_8259436d[arg1][0 len sub_8259436d[arg1].length]
}

function commissionAddress() {
    return commissionAddress
}

function price() {
    return price
}

function sub_b6723c94(?) {
    return sub_b6723c94
}

function sub_b99fbccc(?) {
    return sub_b99fbccc[0 len sub_b99fbccc.length]
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert 
}

function changePrice(int256 arg1) {
    require controllerAddress == msg.sender
    require arg1 >= 0
    price = arg1
}

function sub_be362783(?) {
    require controllerAddress == msg.sender
    require arg1 >= 0
    registrationFee = arg1
}

function changeCommissionAddress(address arg1) {
    require controllerAddress == msg.sender
    commissionAddress = arg1
}

function sub_1ea320fa(?) {
    require controllerAddress == msg.sender
    sub_8259436d[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_0fc8f3bb(?) {
    require controllerAddress == msg.sender
    require arg1 >= 0
    require arg1 <= 999
    sub_b6723c94 = arg1
}

function sub_5506b147(?) {
    require controllerAddress == msg.sender
    require arg1 >= 0
    require arg1 <= 999
    sub_4080b045 = arg1
}

function sub_a8cd9a70(?) {
    require controllerAddress == msg.sender
    require arg1 >= 0
    require arg1 <= 999
    sub_200505fe = arg1
}

function sub_98f77b0f(?) {
    if stor11[arg1].field_0:
        return (stor11[arg1].field_512 + stor11[arg1].field_768)
    else:
        return 0
}

function sub_7b8e51bf(?) {
    require controllerAddress == msg.sender
    require arg1 >= 0
    require arg1 <= 8760 * 24 * 3600
    expiration = arg1
}

function sub_5941498f(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor11[arg1].field_0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert 
    if msg.value < price:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert 
    if msg.value > price:
        call msg.sender with:
           value msg.value - price wei
             gas 2300 * is_zero(value) wei
    call commissionAddress with:
       value sub_b6723c94 * price / 1000 wei
         gas 2300 * is_zero(value) wei
    mem[ceil32(arg2.length) + 128] = 1
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 192] = block.timestamp
    mem[ceil32(arg2.length) + 224] = expiration
    mem[ceil32(arg2.length) + 256] = price - (sub_b6723c94 * price / 1000)
    mem[ceil32(arg2.length) + 288] = sub_4080b045
    mem[ceil32(arg2.length) + 320] = sub_200505fe
    mem[ceil32(arg2.length) + 352] = msg.sender
    stor11[arg1].field_0 = 1
    stor11[arg1].field_256 = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        stor11[arg1][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor11[arg1][1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor11', 11))) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor11[arg1][1].length + 31 / 32 > idx:
            stor11[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor11[arg1].field_512 = block.timestamp
    stor11[arg1].field_768 = expiration
    stor11[arg1].field_1024 = price - (sub_b6723c94 * price / 1000)
    stor11[arg1].field_1280 = sub_4080b045
    stor11[arg1].field_1536 = sub_200505fe
    stor11[arg1].field_1792 = msg.sender
    mem[ceil32(arg2.length) + 384] = msg.sender
    mem[ceil32(arg2.length) + 416] = arg1
    mem[ceil32(arg2.length) + 448] = 96
    mem[ceil32(arg2.length) + 480] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 512] = mem[128]
        mem[ceil32(arg2.length) + 544 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0xd2c7750a: msg.sender, arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 512 len arg2.length])
}

function register(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor9[address(msg.sender)].field_0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert 
    if msg.value < registrationFee:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert 
    if msg.value <= registrationFee:
        call commissionAddress with:
           value registrationFee wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - registrationFee wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call commissionAddress with:
           value registrationFee wei
             gas 2300 * is_zero(value) wei
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    stor9[address(msg.sender)].field_0 = 1
    stor9[address(msg.sender)].field_256 = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        stor9[address(msg.sender)][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor9[address(msg.sender)][1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor9', 9))) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor9[address(msg.sender)][1].length + 31 / 32 > idx:
            stor9[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor10[address(msg.sender)] = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        stor10[address(msg.sender)][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor10[address(msg.sender)].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        stor10[address(msg.sender)][Mask(251, 0, arg1.length + 31) >> 5] = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while stor10[address(msg.sender)].length + 31 / 32 > idx:
            stor10[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                emit UserRegistered(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length + 32]), arg1.length + 128);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                emit UserRegistered(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 128);
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit UserRegistered(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length + 32]), arg1.length + 128);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                emit UserRegistered(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 416 len floor32(arg2.length)]), arg1.length + 128);
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit UserRegistered(msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg2.length + arg1.length]), arg1.length + 128);
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit UserRegistered(msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 128);
}

function refund(uint256 arg1, uint256 arg2) {
    if not stor11[arg1].field_0:
        return 0
    if controllerAddress != msg.sender:
        if stor11[arg1].field_1792 != msg.sender:
            return 0
    if stor11[arg1].field_1024 <= 0:
        return 0
    if block.timestamp < stor11[arg1].field_512 + stor11[arg1].field_768:
        return 0
    if arg2 < stor11[arg1].field_1280:
        return 0
    if arg2 >= stor11[arg1].field_1536:
        if 1000 >= stor11[arg1].field_1536:
            call commissionAddress with:
               value stor11[arg1].field_1536 * stor11[arg1].field_1024 / 1000 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                call stor11[arg1].field_1792 with:
                   value stor11[arg1].field_1024 - (stor11[arg1].field_1536 * stor11[arg1].field_1024 / 1000) wei
                     gas 2300 * is_zero(value) wei
                stor11[arg1].field_1024 = 0
                stor11[arg1].field_0 = uint8(bool(stor11[arg1].field_0))
                if 31 >= stor11[arg1][1].length:
                    if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                        stor11[arg1][1].field_0 = 0
                        idx = 1
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    stor11[arg1].field_256 = Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1) + 1
                    if Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1):
                        s = 0
                        idx = 0
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][s + 1].field_0 = stor11[arg1][idx + 1].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                    else:
                        if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                            stor11[arg1][1].field_0 = 0
                            idx = 1
                            while stor11[arg1][1].length + 31 / 32 > idx:
                                stor11[arg1][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                stor11[arg1].field_1792 = stor11[arg1].field_1792
        else:
            call commissionAddress with:
               value 1000 * stor11[arg1].field_1024 / 1000 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                call stor11[arg1].field_1792 with:
                   value stor11[arg1].field_1024 - (1000 * stor11[arg1].field_1024 / 1000) wei
                     gas 2300 * is_zero(value) wei
                stor11[arg1].field_1024 = 0
                stor11[arg1].field_0 = uint8(bool(stor11[arg1].field_0))
                if 31 >= stor11[arg1][1].length:
                    if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                        stor11[arg1][1].field_0 = 0
                        idx = 1
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    stor11[arg1].field_256 = Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1) + 1
                    if Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1):
                        s = 0
                        idx = 0
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][s + 1].field_0 = stor11[arg1][idx + 1].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                    else:
                        if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                            stor11[arg1][1].field_0 = 0
                            idx = 1
                            while stor11[arg1][1].length + 31 / 32 > idx:
                                stor11[arg1][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                stor11[arg1].field_1792 = stor11[arg1].field_1792
    else:
        if 1000 >= arg2:
            call commissionAddress with:
               value arg2 * stor11[arg1].field_1024 / 1000 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                call stor11[arg1].field_1792 with:
                   value stor11[arg1].field_1024 - (arg2 * stor11[arg1].field_1024 / 1000) wei
                     gas 2300 * is_zero(value) wei
                stor11[arg1].field_1024 = 0
                stor11[arg1].field_0 = uint8(bool(stor11[arg1].field_0))
                if 31 >= stor11[arg1][1].length:
                    if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                        stor11[arg1][1].field_0 = 0
                        idx = 1
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    stor11[arg1].field_256 = Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1) + 1
                    if Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1):
                        s = 0
                        idx = 0
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][s + 1].field_0 = stor11[arg1][idx + 1].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                    else:
                        if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                            stor11[arg1][1].field_0 = 0
                            idx = 1
                            while stor11[arg1][1].length + 31 / 32 > idx:
                                stor11[arg1][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                stor11[arg1].field_1792 = stor11[arg1].field_1792
        else:
            call commissionAddress with:
               value 1000 * stor11[arg1].field_1024 / 1000 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                call stor11[arg1].field_1792 with:
                   value stor11[arg1].field_1024 - (1000 * stor11[arg1].field_1024 / 1000) wei
                     gas 2300 * is_zero(value) wei
                stor11[arg1].field_1024 = 0
                stor11[arg1].field_0 = uint8(bool(stor11[arg1].field_0))
                if 31 >= stor11[arg1][1].length:
                    if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                        stor11[arg1][1].field_0 = 0
                        idx = 1
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    stor11[arg1].field_256 = Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1) + 1
                    if Mask(255, 1, stor11[arg1].field_256 and (256 * not stor11[arg1].field_256) - 1):
                        s = 0
                        idx = 0
                        while stor11[arg1][1].length + 31 / 32 > idx:
                            stor11[arg1][s + 1].field_0 = stor11[arg1][idx + 1].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                    else:
                        if sha3(sha3(arg1, 11) + 1) + (stor11[arg1][1].length + 31 / 32) > sha3(sha3(arg1, 11) + 1):
                            stor11[arg1][1].field_0 = 0
                            idx = 1
                            while stor11[arg1][1].length + 31 / 32 > idx:
                                stor11[arg1][idx + 1].field_0 = 0
                                idx = idx + 1
                                continue 
                stor11[arg1].field_1792 = stor11[arg1].field_1792
    return bool(ext_call.success)
}



}
