contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct sub_c67e32e9;
array of uint256 stor2;
uint256 sub_1d249447;
uint256 sub_7362c8fd;
address adminAddress;
array of uint256 stor6;
uint256 sub_f8b75fb5;
uint256 fees;
uint256 minimumBetAmount;
uint256 collectedFees;
mapping of address sub_44bb8279;
mapping of uint256 sub_d86bed9b;
uint256 stor13;
mapping of uint256 stor99;
address stor12D0;
address stor64C1;
address storA50E;

function sub_1d249447(?) {
    return sub_1d249447
}

function sub_3a5b375d(?) {
    return stor2.length
}

function sub_44bb8279(?) {
    return sub_44bb8279[arg1]
}

function sub_7362c8fd(?) {
    return sub_7362c8fd
}

function minimumBetAmount() {
    return minimumBetAmount
}

function ownerAddress() {
    return address(stor6.length)
}

function collectedFees() {
    return collectedFees
}

function fees() {
    return fees
}

function sub_c67e32e9(?) {
    return sub_c67e32e9[arg1].field_0
}

function sub_d86bed9b(?) {
    return sub_d86bed9b[arg1]
}

function sub_f8b75fb5(?) {
    return sub_f8b75fb5
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setFees(uint256 arg1) {
    require msg.sender == address(stor6.length)
    require arg1 != fees
    fees = arg1
}

function setAdmin(address arg1) {
    require msg.sender == address(stor6.length)
    require arg1
    adminAddress = arg1
}

function setOwner(address arg1) {
    require msg.sender == address(stor6.length)
    require arg1
    address(stor6.length) = arg1
}

function setDurationTime(uint256 arg1) {
    require msg.sender == address(stor6.length)
    require arg1 != sub_f8b75fb5
    sub_f8b75fb5 = arg1
}

function sub_e91eccf6(?) {
    require msg.sender == address(stor6.length)
    require arg2 >= 1
    require arg2 <= 4
    sub_d86bed9b[arg2] = arg1
}

function setMinimumBetAmount(uint256 arg1) {
    require msg.sender == address(stor6.length)
    require arg1 != minimumBetAmount
    minimumBetAmount = arg1
}

function sub_fbdacd40(?) {
    require msg.sender == address(stor6.length)
    require arg1
    require arg2 >= 1
    require arg2 <= 4
    sub_44bb8279[arg2] = arg1
}

function sub_a91c770f(?) payable {
    require msg.value > 0
    sub_c67e32e9[msg.sender].field_0 += msg.value
    emit 0x300b59d8: (msg.value + sub_c67e32e9[msg.sender].field_0)
}

function getDetail(uint256 arg1) {
    return arg1, 
           stor0[arg1].field_768,
           stor0[arg1].field_256,
           stor0[arg1].field_1536,
           stor0[arg1].field_1024,
           bool(uint8(stor0[arg1].field_1280))
}

function sub_a356aa65(?) {
    idx = 1
    while idx <= 4:
        mem[0] = idx
        mem[32] = 11
        require idx < 5
        mem[(32 * idx) + 128] = sub_44bb8279[idx]
        idx = idx + 1
        continue 
    mem[352 len 0] = None
    return Array(len=5, data=mem[352 len 160])
}

function sub_92f816bc(?) {
    require sub_c67e32e9[msg.sender].field_0 > 0
    sub_c67e32e9[msg.sender].field_0 = 0
    call msg.sender with:
       value sub_c67e32e9[msg.sender].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfc947776: 0
}

function withdraw() {
    if sub_44bb8279[1] != msg.sender:
        if storA50E != msg.sender:
            if stor64C1 != msg.sender:
                require msg.sender == stor12D0
    require 0 < collectedFees
    s = 0
    idx = 1
    while idx <= 4:
        mem[0] = idx
        mem[32] = 11
        call sub_44bb8279[idx] with:
           value sub_d86bed9b[idx] * collectedFees / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = sub_d86bed9b[idx] * collectedFees / 10000
        idx = idx + 1
        continue 
    collectedFees = 0
    emit 0xb7ee31f7: 0
}

function addBet(uint256 arg1) payable {
    require msg.value >= minimumBetAmount
    if arg1 != 1:
        stor0[stor3].field_2048 += msg.value
        stor0[stor3].field_1536++
        stor0[stor3][9][stor0[stor3].field_1536].field_0 = stor0[stor3].field_1536 + 1
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        uint8(stor0[stor3][9][stor0[stor3].field_1536].field_416) = 2
    else:
        stor0[stor3].field_1792 += msg.value
        stor0[stor3].field_1536++
        stor0[stor3][9][stor0[stor3].field_1536].field_0 = stor0[stor3].field_1536 + 1
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        uint8(stor0[stor3][9][stor0[stor3].field_1536].field_416) = 1
    stor0[stor3][9][stor0[stor3].field_1536].field_512 = msg.value
    emit 0x5169fac1: stor0[stor3].field_1536
}

function sub_b315a67f(?) {
    require arg2 >= minimumBetAmount
    if arg2 <= sub_c67e32e9[msg.sender].field_0:
        sub_c67e32e9[msg.sender].field_0 -= arg2
    if arg1 != 1:
        stor0[stor3].field_2048 += arg2
        stor0[stor3].field_1536++
        stor0[stor3][9][stor0[stor3].field_1536].field_0 = stor0[stor3].field_1536 + 1
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        uint8(stor0[stor3][9][stor0[stor3].field_1536].field_416) = 2
    else:
        stor0[stor3].field_1792 += arg2
        stor0[stor3].field_1536++
        stor0[stor3][9][stor0[stor3].field_1536].field_0 = stor0[stor3].field_1536 + 1
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        address(stor0[stor3][9][stor0[stor3].field_1536].field_256) = msg.sender
        uint8(stor0[stor3][9][stor0[stor3].field_1536].field_416) = 1
    stor0[stor3][9][stor0[stor3].field_1536].field_512 = arg2
    emit 0x5169fac1: stor0[stor3].field_1536
}

function sub_c5ca93a7(?) {
    mem[0] = arg1
    mem[32] = 0
    mem[96] = stor0[arg1].field_1536
    if not stor0[arg1].field_1536:
        mem[(32 * stor0[arg1].field_1536) + 128] = stor0[arg1].field_1536
        mem[(64 * stor0[arg1].field_1536) + 160] = stor0[arg1].field_1536
        mem[64] = (98 * stor0[arg1].field_1536) + 192
        idx = 1
        s = 0
        while idx <= stor0[arg1].field_1536:
            require s < mem[96]
            mem[(32 * s) + 128] = address(stor0[arg1][9][idx].field_256)
            require s < mem[(32 * stor0[arg1].field_1536) + 128]
            mem[(32 * s) + (32 * stor0[arg1].field_1536) + 160] = stor0[arg1][9][idx].field_512
            mem[0] = idx
            mem[32] = sha3(arg1, 0) + 9
            require s < mem[(64 * stor0[arg1].field_1536) + 160]
            require uint8(stor0[arg1][9][idx].field_416) <= 2
            mem[(32 * s) + (64 * stor0[arg1].field_1536) + 192] = uint8(stor0[arg1][9][idx].field_416)
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = 128
        mem[mem[64] + 128] = mem[96]
        _47 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor0[arg1].field_1536) + 128]
        _76 = mem[(32 * stor0[arg1].field_1536) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])] = mem[(32 * stor0[arg1].field_1536) + 160 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])]
        mem[mem[64] + 96] = (32 * _76) + (32 * mem[96]) + 192
        mem[(32 * _76) + (32 * _47) + mem[64] + 192] = mem[(64 * stor0[arg1].field_1536) + 160]
        _92 = mem[(64 * stor0[arg1].field_1536) + 160]
        mem[(32 * _76) + (32 * _47) + mem[64] + 224 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])] = mem[(64 * stor0[arg1].field_1536) + 192 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])]
        return arg1, 128, mem[mem[64] + 64 len (32 * _92) + (32 * _76) + (32 * _47) + 160]
    mem[128 len 32 * stor0[arg1].field_1536] = code.data[7819 len 32 * stor0[arg1].field_1536]
    mem[(32 * stor0[arg1].field_1536) + 128] = stor0[arg1].field_1536
    mem[(32 * stor0[arg1].field_1536) + 160 len 32 * stor0[arg1].field_1536] = code.data[7819 len 32 * stor0[arg1].field_1536]
    mem[(64 * stor0[arg1].field_1536) + 160] = stor0[arg1].field_1536
    mem[64] = (98 * stor0[arg1].field_1536) + 192
    mem[(64 * stor0[arg1].field_1536) + 192 len 32 * stor0[arg1].field_1536] = code.data[7819 len 32 * stor0[arg1].field_1536]
    idx = 1
    s = 0
    while idx <= stor0[arg1].field_1536:
        require s < mem[96]
        mem[(32 * s) + 128] = address(stor0[arg1][9][idx].field_256)
        require s < mem[(32 * stor0[arg1].field_1536) + 128]
        mem[(32 * s) + (32 * stor0[arg1].field_1536) + 160] = stor0[arg1][9][idx].field_512
        mem[0] = idx
        mem[32] = sha3(arg1, 0) + 9
        require s < mem[(64 * stor0[arg1].field_1536) + 160]
        require uint8(stor0[arg1][9][idx].field_416) <= 2
        mem[(32 * s) + (64 * stor0[arg1].field_1536) + 192] = uint8(stor0[arg1][9][idx].field_416)
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 128
    mem[mem[64] + 128] = mem[96]
    _52 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 64] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor0[arg1].field_1536) + 128]
    _79 = mem[(32 * stor0[arg1].field_1536) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])] = mem[(32 * stor0[arg1].field_1536) + 160 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])]
    mem[mem[64] + 96] = (32 * _79) + (32 * mem[96]) + 192
    mem[(32 * _79) + (32 * _52) + mem[64] + 192] = mem[(64 * stor0[arg1].field_1536) + 160]
    _95 = mem[(64 * stor0[arg1].field_1536) + 160]
    mem[(32 * _79) + (32 * _52) + mem[64] + 224 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])] = mem[(64 * stor0[arg1].field_1536) + 192 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])]
    return arg1, 128, mem[mem[64] + 64 len (32 * _95) + (32 * _79) + (32 * _52) + 160]
}

function getRoundDetail(uint256 arg1) {
    mem[0] = arg1
    mem[32] = 0
    mem[96] = stor0[arg1].field_1536
    if not stor0[arg1].field_1536:
        mem[(32 * stor0[arg1].field_1536) + 128] = stor0[arg1].field_1536
        mem[(64 * stor0[arg1].field_1536) + 160] = stor0[arg1].field_1536
        mem[64] = (98 * stor0[arg1].field_1536) + 192
        idx = 1
        s = 0
        while idx <= stor0[arg1].field_1536:
            require s < mem[96]
            mem[(32 * s) + 128] = address(stor0[arg1][9][idx].field_256)
            require s < mem[(32 * stor0[arg1].field_1536) + 128]
            mem[(32 * s) + (32 * stor0[arg1].field_1536) + 160] = stor0[arg1][9][idx].field_512
            mem[0] = idx
            mem[32] = sha3(arg1, 0) + 9
            require s < mem[(64 * stor0[arg1].field_1536) + 160]
            require uint8(stor0[arg1][9][idx].field_416) <= 2
            mem[(32 * s) + (64 * stor0[arg1].field_1536) + 192] = uint8(stor0[arg1][9][idx].field_416)
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = arg1
        mem[mem[64] + 128] = stor0[arg1].field_2048
        mem[mem[64] + 160] = stor0[arg1].field_1792
        mem[mem[64] + 32] = 192
        mem[mem[64] + 192] = mem[96]
        _47 = mem[96]
        mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + 224
        mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * stor0[arg1].field_1536) + 128]
        _76 = mem[(32 * stor0[arg1].field_1536) + 128]
        mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])] = mem[(32 * stor0[arg1].field_1536) + 160 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])]
        mem[mem[64] + 96] = (32 * _76) + (32 * mem[96]) + 256
        mem[(32 * _76) + (32 * _47) + mem[64] + 256] = mem[(64 * stor0[arg1].field_1536) + 160]
        _92 = mem[(64 * stor0[arg1].field_1536) + 160]
        mem[(32 * _76) + (32 * _47) + mem[64] + 288 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])] = mem[(64 * stor0[arg1].field_1536) + 192 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])]
        return arg1, 
               192,
               mem[mem[64] + 64 len 64],
               stor0[arg1].field_2048,
               stor0[arg1].field_1792,
               mem[mem[64] + 192 len (32 * _92) + (32 * _76) + (32 * _47) + 96]
    mem[128 len 32 * stor0[arg1].field_1536] = code.data[7819 len 32 * stor0[arg1].field_1536]
    mem[(32 * stor0[arg1].field_1536) + 128] = stor0[arg1].field_1536
    mem[(32 * stor0[arg1].field_1536) + 160 len 32 * stor0[arg1].field_1536] = code.data[7819 len 32 * stor0[arg1].field_1536]
    mem[(64 * stor0[arg1].field_1536) + 160] = stor0[arg1].field_1536
    mem[64] = (98 * stor0[arg1].field_1536) + 192
    mem[(64 * stor0[arg1].field_1536) + 192 len 32 * stor0[arg1].field_1536] = code.data[7819 len 32 * stor0[arg1].field_1536]
    idx = 1
    s = 0
    while idx <= stor0[arg1].field_1536:
        require s < mem[96]
        mem[(32 * s) + 128] = address(stor0[arg1][9][idx].field_256)
        require s < mem[(32 * stor0[arg1].field_1536) + 128]
        mem[(32 * s) + (32 * stor0[arg1].field_1536) + 160] = stor0[arg1][9][idx].field_512
        mem[0] = idx
        mem[32] = sha3(arg1, 0) + 9
        require s < mem[(64 * stor0[arg1].field_1536) + 160]
        require uint8(stor0[arg1][9][idx].field_416) <= 2
        mem[(32 * s) + (64 * stor0[arg1].field_1536) + 192] = uint8(stor0[arg1][9][idx].field_416)
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 128] = stor0[arg1].field_2048
    mem[mem[64] + 160] = stor0[arg1].field_1792
    mem[mem[64] + 32] = 192
    mem[mem[64] + 192] = mem[96]
    _52 = mem[96]
    mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 64] = (32 * mem[96]) + 224
    mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * stor0[arg1].field_1536) + 128]
    _79 = mem[(32 * stor0[arg1].field_1536) + 128]
    mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])] = mem[(32 * stor0[arg1].field_1536) + 160 len floor32(mem[(32 * stor0[arg1].field_1536) + 128])]
    mem[mem[64] + 96] = (32 * _79) + (32 * mem[96]) + 256
    mem[(32 * _79) + (32 * _52) + mem[64] + 256] = mem[(64 * stor0[arg1].field_1536) + 160]
    _95 = mem[(64 * stor0[arg1].field_1536) + 160]
    mem[(32 * _79) + (32 * _52) + mem[64] + 288 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])] = mem[(64 * stor0[arg1].field_1536) + 192 len floor32(mem[(64 * stor0[arg1].field_1536) + 160])]
    return arg1, 
           192,
           mem[mem[64] + 64 len 64],
           stor0[arg1].field_2048,
           stor0[arg1].field_1792,
           mem[mem[64] + 192 len (32 * _95) + (32 * _79) + (32 * _52) + 96]
}

function sub_c300637c(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == adminAddress
    stor13 = block.timestamp
    if 0 >= stor2.length:
        if sub_7362c8fd + 1 != stor0[stor4 + 1].field_0:
            stor0[stor4 + 1].field_0 = sub_7362c8fd + 1
            stor0[stor4 + 1].field_256 = 0
            stor0[stor4 + 1].field_512 = 0
            stor0[stor4 + 1].field_768 = 0
            stor0[stor4 + 1].field_1024 = 0
            uint8(stor0[stor4 + 1].field_1280) = 0
            stor0[stor4 + 1].field_1536 = 0
            stor0[stor4 + 1].field_1792 = 0
            stor0[stor4 + 1].field_2048 = 0
    else:
        stor0[stor2.length].field_1024 = arg1
        if arg1 == stor0[stor2.length].field_768:
            idx = 1
            while idx <= stor0[stor2.length].field_1536:
                mem[0] = address(stor0[stor2.length][9][idx].field_256)
                mem[32] = 1
                sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 += stor0[stor2.length][9][idx].field_512
                idx = idx + 1
                continue 
            uint8(stor0[stor2.length].field_1280) = 1
            if sub_7362c8fd + 1 != stor0[stor4 + 1].field_0:
                stor0[stor4 + 1].field_0 = sub_7362c8fd + 1
                stor0[stor4 + 1].field_256 = 0
                stor0[stor4 + 1].field_512 = 0
                stor0[stor4 + 1].field_768 = 0
                stor0[stor4 + 1].field_1024 = 0
                uint8(stor0[stor4 + 1].field_1280) = 0
                stor0[stor4 + 1].field_1536 = 0
                stor0[stor4 + 1].field_1792 = 0
                stor0[stor4 + 1].field_2048 = 0
        else:
            if not stor0[stor2.length].field_1792:
                idx = 1
                while idx <= stor0[stor2.length].field_1536:
                    mem[0] = address(stor0[stor2.length][9][idx].field_256)
                    mem[32] = 1
                    sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 += stor0[stor2.length][9][idx].field_512
                    idx = idx + 1
                    continue 
                uint8(stor0[stor2.length].field_1280) = 1
                if sub_7362c8fd + 1 != stor0[stor4 + 1].field_0:
                    stor0[stor4 + 1].field_0 = sub_7362c8fd + 1
                    stor0[stor4 + 1].field_256 = 0
                    stor0[stor4 + 1].field_512 = 0
                    stor0[stor4 + 1].field_768 = 0
                    stor0[stor4 + 1].field_1024 = 0
                    uint8(stor0[stor4 + 1].field_1280) = 0
                    stor0[stor4 + 1].field_1536 = 0
                    stor0[stor4 + 1].field_1792 = 0
                    stor0[stor4 + 1].field_2048 = 0
            else:
                if not stor0[stor2.length].field_2048:
                    idx = 1
                    while idx <= stor0[stor2.length].field_1536:
                        mem[0] = address(stor0[stor2.length][9][idx].field_256)
                        mem[32] = 1
                        sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 += stor0[stor2.length][9][idx].field_512
                        idx = idx + 1
                        continue 
                    uint8(stor0[stor2.length].field_1280) = 1
                    if sub_7362c8fd + 1 != stor0[stor4 + 1].field_0:
                        stor0[stor4 + 1].field_0 = sub_7362c8fd + 1
                        stor0[stor4 + 1].field_256 = 0
                        stor0[stor4 + 1].field_512 = 0
                        stor0[stor4 + 1].field_768 = 0
                        stor0[stor4 + 1].field_1024 = 0
                        uint8(stor0[stor4 + 1].field_1280) = 0
                        stor0[stor4 + 1].field_1536 = 0
                        stor0[stor4 + 1].field_1792 = 0
                        stor0[stor4 + 1].field_2048 = 0
                else:
                    if stor0[stor2.length].field_768 < stor0[stor2.length].field_1024:
                        s = 0
                        idx = 1
                        while idx <= stor0[stor2.length].field_1536:
                            mem[0] = idx
                            mem[32] = sha3(stor2.length, 0) + 9
                            require uint8(stor0[stor2.length][9][idx].field_416) <= 2
                            if uint8(stor0[stor2.length][9][idx].field_416) != 1:
                                s = s
                                idx = idx + 1
                                continue 
                            require stor0[stor2.length].field_1792
                            sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 = sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 + (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792) + stor0[stor2.length][9][idx].field_512 - (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792 * fees / 100)
                            collectedFees += stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792 * fees / 100
                            mem[0] = idx
                            mem[32] = sha3(stor2.length, 0) + 9
                            mem[mem[64]] = stor0[stor2.length].field_0
                            mem[mem[64] + 32] = address(stor0[stor2.length][9][idx].field_256)
                            mem[mem[64] + 64] = (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792) - (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792 * fees / 100)
                            emit 0x44e456a6: stor0[stor2.length].field_0, address(stor0[stor2.length][9][idx].field_256), (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792) - (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792 * fees / 100)
                            s = (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792) - (stor0[stor2.length].field_2048 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_1792 * fees / 100)
                            idx = idx + 1
                            continue 
                        uint8(stor0[stor2.length].field_1280) = 1
                        if sub_7362c8fd + 1 != stor0[stor4 + 1].field_0:
                            stor0[stor4 + 1].field_0 = sub_7362c8fd + 1
                            stor0[stor4 + 1].field_256 = 0
                            stor0[stor4 + 1].field_512 = 0
                            stor0[stor4 + 1].field_768 = 0
                            stor0[stor4 + 1].field_1024 = 0
                            uint8(stor0[stor4 + 1].field_1280) = 0
                            stor0[stor4 + 1].field_1536 = 0
                            stor0[stor4 + 1].field_1792 = 0
                            stor0[stor4 + 1].field_2048 = 0
                    else:
                        if stor0[stor2.length].field_768 <= stor0[stor2.length].field_1024:
                            idx = 1
                            while idx <= stor0[stor2.length].field_1536:
                                mem[0] = idx
                                mem[32] = sha3(stor2.length, 0) + 9
                                require uint8(stor0[stor2.length][9][idx].field_416) <= 2
                                require uint8(stor0[stor2.length][9][idx].field_416)
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 1
                            while idx <= stor0[stor2.length].field_1536:
                                mem[0] = idx
                                mem[32] = sha3(stor2.length, 0) + 9
                                require uint8(stor0[stor2.length][9][idx].field_416) <= 2
                                if uint8(stor0[stor2.length][9][idx].field_416) != 2:
                                    s = s
                                    idx = idx + 1
                                    continue 
                                require stor0[stor2.length].field_2048
                                sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 = sub_c67e32e9[address(stor0[stor2.length][9][idx].field_256)].field_0 + (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048) + stor0[stor2.length][9][idx].field_512 - (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048 * fees / 100)
                                collectedFees += stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048 * fees / 100
                                mem[0] = idx
                                mem[32] = sha3(stor2.length, 0) + 9
                                mem[mem[64]] = stor0[stor2.length].field_0
                                mem[mem[64] + 32] = address(stor0[stor2.length][9][idx].field_256)
                                mem[mem[64] + 64] = (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048) - (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048 * fees / 100)
                                emit 0x44e456a6: stor0[stor2.length].field_0, address(stor0[stor2.length][9][idx].field_256), (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048) - (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048 * fees / 100)
                                s = (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048) - (stor0[stor2.length].field_1792 * stor0[stor2.length][9][idx].field_512 / stor0[stor2.length].field_2048 * fees / 100)
                                idx = idx + 1
                                continue 
                        uint8(stor0[stor2.length].field_1280) = 1
                        if sub_7362c8fd + 1 != stor0[stor4 + 1].field_0:
                            stor0[stor4 + 1].field_0 = sub_7362c8fd + 1
                            stor0[stor4 + 1].field_256 = 0
                            stor0[stor4 + 1].field_512 = 0
                            stor0[stor4 + 1].field_768 = 0
                            stor0[stor4 + 1].field_1024 = 0
                            uint8(stor0[stor4 + 1].field_1280) = 0
                            stor0[stor4 + 1].field_1536 = 0
                            stor0[stor4 + 1].field_1792 = 0
                            stor0[stor4 + 1].field_2048 = 0
    stor2.length = sub_1d249447
    sub_1d249447 = sub_7362c8fd
    sub_7362c8fd++
    stor0[stor2.length].field_256 = stor13
    stor0[stor2.length].field_768 = arg1
    stor0[stor3].field_256 = stor13 + sub_f8b75fb5
    emit 0x599cea84: stor2.length
}

function sub_22d68459(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        require mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] >= minimumBetAmount
        require idx < mem[96]
        require idx < mem[96]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        if stor0[mem[(32 * idx) + 128]].field_0 == mem[(32 * idx) + 128]:
            require idx < mem[96]
            _152 = sha3(mem[(32 * idx) + 128], 0)
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
            mem[0] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224]
            mem[32] = sha3(mem[(32 * idx) + 128], 0) + 9
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            if address(stor0[mem[(32 * idx) + 128]][9][mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224]].field_256) == msg.sender:
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
                require idx < mem[96]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                require mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] >= minimumBetAmount
                require uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) <= 2
                if mem[(32 * idx) + (32 * arg1.length) + 160] == uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416):
                    if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                        stor0[mem[(32 * idx) + 128]].field_2048 = stor0[mem[(32 * idx) + 128]].field_2048 + mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] - stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_512
                        uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) = 2
                    else:
                        stor0[mem[(32 * idx) + 128]].field_1792 = stor0[mem[(32 * idx) + 128]].field_1792 + mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] - stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_512
                        uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) = 1
                else:
                    if 1 == mem[(32 * idx) + (32 * arg1.length) + 160]:
                        stor0[mem[(32 * idx) + 128]].field_2048 -= stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_512
                        stor0[mem[(32 * idx) + 128]].field_1792 += mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                        uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) = 1
                    else:
                        if mem[(32 * idx) + (32 * arg1.length) + 160] != 2:
                            uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) = 0
                        else:
                            require uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) <= 2
                            if uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) != 1:
                                uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) = 0
                            else:
                                stor0[mem[(32 * idx) + 128]].field_1792 -= stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_512
                                stor0[mem[(32 * idx) + 128]].field_2048 += mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                                uint8(stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_416) = 2
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
                mem[32] = sha3(mem[(32 * idx) + 128], 0) + 9
                stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_512 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                emit 0x4f6dd74e: mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
                s = 1
                s = sha3(mem[(32 * idx) + 128], 0)
                idx = idx + 1
                s = s + stor0[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]].field_512
                t = t + mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                continue 
            _180 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                stor0[mem[(32 * idx) + 128]].field_2048 += mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
                stor0[mem[(32 * idx) + 128]].field_1536++
                _201 = mem[64]
                mem[64] = mem[64] + 128
                mem[_201] = stor0[mem[(32 * idx) + 128]].field_1536 + 1
                mem[_201 + 32] = msg.sender
                mem[_201 + 64] = 2
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                mem[_201 + 96] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                mem[0] = uint256(stor6[_152])
                mem[32] = _152 + 9
                stor[_152 + 9][uint256(stor6[_152])] = uint256(stor6[_152]) + 1
                address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))].field_0) = msg.sender
                address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))].field_0) = msg.sender
                uint8(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))].field_160) = 2
                stor2[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))] = mem[_201 + 96]
            else:
                stor0[mem[(32 * idx) + 128]].field_1792 += mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
                stor0[mem[(32 * idx) + 128]].field_1536++
                _202 = mem[64]
                mem[64] = mem[64] + 128
                mem[_202] = stor0[mem[(32 * idx) + 128]].field_1536 + 1
                mem[_202 + 32] = msg.sender
                mem[_202 + 64] = 1
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                mem[_202 + 96] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                mem[0] = uint256(stor6[_152])
                mem[32] = _152 + 9
                stor[_152 + 9][uint256(stor6[_152])] = uint256(stor6[_152]) + 1
                address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))].field_0) = msg.sender
                address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))].field_0) = msg.sender
                uint8(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))].field_160) = 1
                stor2[('map', ('type', 256, ('stor', ('array', ('var', '_152'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_152')))] = mem[_202 + 96]
            emit 0x4f6dd74e: uint256(stor6[_152])
            s = 0
            s = _152
            idx = idx + 1
            s = s
            t = t + _180
            continue 
        _146 = mem[64]
        mem[64] = mem[64] + 288
        require idx < mem[96]
        mem[_146] = mem[(32 * idx) + 128]
        mem[_146 + 32] = 0
        mem[_146 + 64] = 0
        mem[_146 + 96] = 0
        mem[_146 + 128] = 0
        mem[_146 + 160] = 0
        mem[_146 + 192] = 0
        mem[_146 + 224] = 0
        mem[_146 + 256] = 0
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        stor0[mem[(32 * idx) + 128]].field_0 = mem[_146]
        stor0[mem[(32 * idx) + 128]].field_256 = 0
        stor0[mem[(32 * idx) + 128]].field_512 = 0
        stor0[mem[(32 * idx) + 128]].field_768 = 0
        stor0[mem[(32 * idx) + 128]].field_1024 = 0
        uint8(stor0[mem[(32 * idx) + 128]].field_1280) = 0
        stor0[mem[(32 * idx) + 128]].field_1536 = 0
        stor0[mem[(32 * idx) + 128]].field_1792 = 0
        stor0[mem[(32 * idx) + 128]].field_2048 = 0
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        _169 = sha3(mem[(32 * idx) + 128], 0)
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _178 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
            stor0[mem[(32 * idx) + 128]].field_2048 += mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
            stor0[mem[(32 * idx) + 128]].field_1536++
            _199 = mem[64]
            mem[64] = mem[64] + 128
            mem[_199] = stor0[mem[(32 * idx) + 128]].field_1536 + 1
            mem[_199 + 32] = msg.sender
            mem[_199 + 64] = 2
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[_199 + 96] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            mem[0] = uint256(stor6[_169])
            mem[32] = _169 + 9
            stor[_169 + 9][uint256(stor6[_169])] = mem[_199]
            address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))].field_0) = msg.sender
            address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))].field_0) = msg.sender
            uint8(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))].field_160) = 2
            stor2[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))] = mem[_199 + 96]
        else:
            stor0[mem[(32 * idx) + 128]].field_1792 += mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
            stor0[mem[(32 * idx) + 128]].field_1536++
            _200 = mem[64]
            mem[64] = mem[64] + 128
            mem[_200] = stor0[mem[(32 * idx) + 128]].field_1536 + 1
            mem[_200 + 32] = msg.sender
            mem[_200 + 64] = 1
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[_200 + 96] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            mem[0] = uint256(stor6[_169])
            mem[32] = _169 + 9
            stor[_169 + 9][uint256(stor6[_169])] = mem[_200]
            address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))].field_0) = msg.sender
            address(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))].field_0) = msg.sender
            uint8(sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))].field_160) = 1
            stor2[('map', ('type', 256, ('stor', ('array', ('var', '_169'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_169')))] = mem[_200 + 96]
        emit 0x4f6dd74e: uint256(stor6[_169])
        s = 0
        s = _169
        idx = idx + 1
        s = s
        t = t + _178
        continue 
    if t > s:
        require t - s <= msg.value
        if msg.value > t - s:
            require t - s <= msg.value
            sub_c67e32e9[msg.sender].field_0 = msg.value - t + s + sub_c67e32e9[msg.sender].field_0
    else:
        sub_c67e32e9[msg.sender].field_0 = sub_c67e32e9[msg.sender].field_0 + s - t
        require 0 <= msg.value
        if msg.value > 0:
            require 0 <= msg.value
            sub_c67e32e9[msg.sender].field_0 += msg.value
}



}
