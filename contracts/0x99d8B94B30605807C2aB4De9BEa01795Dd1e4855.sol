contract main {




// =====================  Runtime code  =====================


#
#  - doInvest(address arg1, uint256 arg2, address arg3)
#
const sub_d0056f89(?) = 25000

const ONE_HUNDRED_PERCENTS = 10000

const MINIMUM_DEPOSIT = 10^17


array of uint256 sub_31ddcc57;
uint256 sub_a1215b3e;
uint256 sub_e623f347;
uint256 wave;
uint256 totalInvest;
uint256 totalDividend;
mapping of uint8 stor6;
address proxyAddress;
address sub_afa71b01Address;
address owner;
mapping of struct users;

function isProxy(address arg1) {
    return bool(stor6[arg1])
}

function sub_31ddcc57(?) {
    require arg1 < sub_31ddcc57.length
    return sub_31ddcc57[arg1].field_0
}

function totalDividend() {
    return totalDividend
}

function totalInvest() {
    return totalInvest
}

function wave() {
    return wave
}

function owner() {
    return owner
}

function sub_a1215b3e(?) {
    return sub_a1215b3e
}

function sub_afa71b01(?) {
    return sub_afa71b01Address
}

function users(uint256 arg1, address arg2) {
    return users[arg1][arg2].field_0, 
           users[arg1][arg2].field_256,
           users[arg1][arg2].field_512,
           users[arg1][arg2].field_768,
           users[arg1][arg2].field_1280
}

function sub_e623f347(?) {
    return sub_e623f347
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    require stor6[address(msg.sender)]
}

function changeTeamFee(uint256 arg1) {
    require msg.sender == owner
    sub_a1215b3e = arg1
}

function createProxy() {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[8923 len 1293]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    proxyAddress = address(create.new_address)
    stor6[address(create.new_address)] = 1
}

function changeInterest(uint256[] arg1) {
    require msg.sender == owner
    sub_31ddcc57.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_31ddcc57.length > idx:
            sub_31ddcc57[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            sub_31ddcc57[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_31ddcc57.length > idx:
            sub_31ddcc57[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getUserInterest(address arg1) {
    mem[288] = users[stor3][address(arg1)].field_0
    mem[320] = users[stor3][address(arg1)].field_256
    mem[64] = (32 * users[stor3][address(arg1)].field_1024) + 512
    s = 512
    idx = 0
    while idx < users[stor3][address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
        _29 = mem[64]
        mem[64] = mem[64] + 96
        mem[_29] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
        mem[_29 + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
        mem[_29 + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
        mem[s] = _29
        s = s + 32
        idx = idx + 1
        continue 
    if mem[320] < 10^18:
        if mem[300 len 20]:
            if 1 < sub_31ddcc57.length:
                return uint256(sub_31ddcc57.field_256)
        else:
            if 0 < sub_31ddcc57.length:
                return uint256(sub_31ddcc57.field_0)
    else:
        if mem[320] < 10 * 10^18:
            if 2 < sub_31ddcc57.length:
                return uint256(sub_31ddcc57.field_512)
        else:
            if mem[320] >= 20 * 10^18:
                if 4 < sub_31ddcc57.length:
                    return uint256(sub_31ddcc57.field_1024)
            else:
                if 3 < sub_31ddcc57.length:
                    return uint256(sub_31ddcc57.field_768)
    revert
}

function depositForUser(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    mem[0] = arg1
    mem[32] = sha3(wave, 10)
    mem[288] = users[stor3][address(arg1)].field_0
    mem[320] = users[stor3][address(arg1)].field_256
    mem[352] = users[stor3][address(arg1)].field_512
    mem[384] = users[stor3][address(arg1)].field_768
    mem[64] = (32 * users[stor3][address(arg1)].field_1024) + 512
    mem[480] = users[stor3][address(arg1)].field_1024
    s = 512
    idx = 0
    while idx < users[stor3][address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
        _17 = mem[64]
        mem[64] = mem[64] + 96
        mem[_17] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
        mem[_17 + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
        mem[_17 + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    mem[416] = 480
    mem[448] = users[stor3][address(arg1)].field_1280
    idx = 0
    s = 0
    while idx < mem[480]:
        require idx < mem[480]
        require s + mem[mem[(32 * idx) + 512]] >= s
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + 512]]
        continue 
    mem[mem[64]] = s * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480] * mem[480]
    return memory
      from mem[64]
       len 32
}

function dividendsSumForUser(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    mem[0] = arg1
    mem[32] = sha3(wave, 10)
    mem[288] = users[stor3][address(arg1)].field_0
    mem[320] = users[stor3][address(arg1)].field_256
    mem[352] = users[stor3][address(arg1)].field_512
    mem[384] = users[stor3][address(arg1)].field_768
    mem[64] = (32 * users[stor3][address(arg1)].field_1024) + 512
    mem[480] = users[stor3][address(arg1)].field_1024
    s = 512
    idx = 0
    while idx < users[stor3][address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
        _52 = mem[64]
        mem[64] = mem[64] + 96
        mem[_52] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
        mem[_52 + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
        mem[_52 + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
        mem[s] = _52
        s = s + 32
        idx = idx + 1
        continue 
    mem[416] = 480
    mem[448] = users[stor3][address(arg1)].field_1280
    _97 = mem[480]
    idx = 0
    while idx < _97:
        _99 = mem[64]
        mem[64] = mem[64] + 192
        mem[_99] = 0
        mem[_99 + 32] = 0
        mem[_99 + 64] = 0
        mem[_99 + 96] = 0
        mem[_99 + 128] = 96
        mem[_99 + 160] = 0
        mem[0] = arg1
        mem[32] = sha3(wave, 10)
        _102 = mem[64]
        mem[64] = mem[64] + 192
        mem[_102] = users[stor3][address(arg1)].field_0
        mem[_102 + 32] = users[stor3][address(arg1)].field_256
        mem[_102 + 64] = users[stor3][address(arg1)].field_512
        mem[_102 + 96] = users[stor3][address(arg1)].field_768
        _103 = mem[64]
        mem[64] = mem[64] + (32 * users[stor3][address(arg1)].field_1024) + 32
        mem[_103] = users[stor3][address(arg1)].field_1024
        t = _103 + 32
        s = 0
        while s < users[stor3][address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
            _141 = mem[64]
            mem[64] = mem[64] + 96
            mem[_141] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
            mem[_141 + 32] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
            mem[_141 + 64] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
            mem[t] = _141
            _97 = mem[mem[416]]
            t = t + 32
            s = s + 1
            continue 
        mem[_102 + 128] = _103
        mem[_102 + 160] = users[stor3][address(arg1)].field_1280
        require mem[_102 + 96] <= block.timestamp
        require idx < mem[_103]
        if not mem[mem[(32 * idx) + _103 + 32] + 32]:
            require idx < mem[_103]
            require mem[mem[(32 * idx) + _103 + 32] + 64] <= 25000
            require idx < mem[mem[416]]
            if 0 < -mem[mem[(32 * idx) + _103 + 32] + 64] + 25000:
                if mem[mem[(32 * idx) + mem[416] + 32]]:
                    require mem[mem[(32 * idx) + mem[416] + 32]]
                    require not 0 / mem[mem[(32 * idx) + mem[416] + 32]]
            else:
                if mem[mem[(32 * idx) + mem[416] + 32]]:
                    require mem[mem[(32 * idx) + mem[416] + 32]]
                    require (25000 * mem[mem[(32 * idx) + mem[416] + 32]]) - (mem[mem[(32 * idx) + _103 + 32] + 64] * mem[mem[(32 * idx) + mem[416] + 32]]) / mem[mem[(32 * idx) + mem[416] + 32]] == -mem[mem[(32 * idx) + _103 + 32] + 64] + 25000
                    require (25000 * mem[mem[(32 * idx) + mem[416] + 32]]) - (mem[mem[(32 * idx) + _103 + 32] + 64] * mem[mem[(32 * idx) + mem[416] + 32]]) / 10000 >= 0
        else:
            require mem[mem[(32 * idx) + _103 + 32] + 32]
            require (block.timestamp * mem[mem[(32 * idx) + _103 + 32] + 32]) - (mem[_102 + 96] * mem[mem[(32 * idx) + _103 + 32] + 32]) / mem[mem[(32 * idx) + _103 + 32] + 32] == block.timestamp - mem[_102 + 96]
            require idx < mem[_103]
            require mem[mem[(32 * idx) + _103 + 32] + 64] <= 25000
            require idx < mem[mem[416]]
            if (block.timestamp * mem[mem[(32 * idx) + _103 + 32] + 32]) - (mem[_102 + 96] * mem[mem[(32 * idx) + _103 + 32] + 32]) / 24 * 3600 >= -mem[mem[(32 * idx) + _103 + 32] + 64] + 25000:
                if mem[mem[(32 * idx) + mem[416] + 32]]:
                    require mem[mem[(32 * idx) + mem[416] + 32]]
                    require (25000 * mem[mem[(32 * idx) + mem[416] + 32]]) - (mem[mem[(32 * idx) + _103 + 32] + 64] * mem[mem[(32 * idx) + mem[416] + 32]]) / mem[mem[(32 * idx) + mem[416] + 32]] == -mem[mem[(32 * idx) + _103 + 32] + 64] + 25000
                    require (25000 * mem[mem[(32 * idx) + mem[416] + 32]]) - (mem[mem[(32 * idx) + _103 + 32] + 64] * mem[mem[(32 * idx) + mem[416] + 32]]) / 10000 >= 0
            else:
                if mem[mem[(32 * idx) + mem[416] + 32]]:
                    require mem[mem[(32 * idx) + mem[416] + 32]]
                    require mem[mem[(32 * idx) + mem[416] + 32]] * (block.timestamp * mem[mem[(32 * idx) + _103 + 32] + 32]) - (mem[_102 + 96] * mem[mem[(32 * idx) + _103 + 32] + 32]) / 24 * 3600 / mem[mem[(32 * idx) + mem[416] + 32]] == (block.timestamp * mem[mem[(32 * idx) + _103 + 32] + 32]) - (mem[_102 + 96] * mem[mem[(32 * idx) + _103 + 32] + 32]) / 24 * 3600
                    require mem[mem[(32 * idx) + mem[416] + 32]] * (block.timestamp * mem[mem[(32 * idx) + _103 + 32] + 32]) - (mem[_102 + 96] * mem[mem[(32 * idx) + _103 + 32] + 32]) / 24 * 3600 / 10000 >= 0
        _97 = mem[mem[416]]
        idx = idx + 1
        continue 
    require mem[448] >= 0
    if mem[448] >= eth.balance(this.address):
        return eth.balance(this.address)
    mem[mem[64]] = mem[448]
    return memory
      from mem[64]
       len 32
}

function withdrawDividends(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require stor6[address(msg.sender)]
    mem[0] = arg1
    mem[32] = sha3(wave, 10)
    idx = 0
    while idx < users[stor3][address(arg1)].field_1024:
        _154 = mem[64]
        mem[64] = mem[64] + 192
        mem[_154] = 0
        mem[_154 + 32] = 0
        mem[_154 + 64] = 0
        mem[_154 + 96] = 0
        mem[_154 + 128] = 96
        mem[_154 + 160] = 0
        mem[0] = arg1
        mem[32] = sha3(wave, 10)
        _157 = mem[64]
        mem[64] = mem[64] + 192
        mem[_157] = users[stor3][address(arg1)].field_0
        mem[_157 + 32] = users[stor3][address(arg1)].field_256
        mem[_157 + 64] = users[stor3][address(arg1)].field_512
        mem[_157 + 96] = users[stor3][address(arg1)].field_768
        _158 = mem[64]
        mem[64] = mem[64] + (32 * users[stor3][address(arg1)].field_1024) + 32
        mem[_158] = users[stor3][address(arg1)].field_1024
        t = _158 + 32
        s = 0
        while s < users[stor3][address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
            _306 = mem[64]
            mem[64] = mem[64] + 96
            mem[_306] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
            mem[_306 + 32] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
            mem[_306 + 64] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
            mem[t] = _306
            t = t + 32
            s = s + 1
            continue 
        mem[_157 + 128] = _158
        mem[_157 + 160] = users[stor3][address(arg1)].field_1280
        _304 = mem[_157 + 96]
        require mem[_157 + 96] <= block.timestamp
        require idx < mem[_158]
        _310 = mem[mem[(32 * idx) + _158 + 32] + 32]
        if not mem[mem[(32 * idx) + _158 + 32] + 32]:
            require idx < mem[_158]
            _314 = mem[mem[(32 * idx) + _158 + 32] + 64]
            require mem[mem[(32 * idx) + _158 + 32] + 64] <= 25000
            require idx < users[stor3][address(arg1)].field_1024
            if 0 < -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000:
                require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                require idx < users[stor3][address(arg1)].field_1024
                if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                require idx < users[stor3][address(arg1)].field_1024
                require idx < users[stor3][address(arg1)].field_1024
                if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 0
                    emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                    mem[mem[64] + 64] = 0
                    emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
            else:
                require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                require idx < users[stor3][address(arg1)].field_1024
                stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000
                if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _158 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000
                    require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _158 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / 10000 >= 0
                require idx < users[stor3][address(arg1)].field_1024
                require idx < users[stor3][address(arg1)].field_1024
                if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_314 + 25000 / 10000
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_314 + 25000 / 10000, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_314 + 25000 / 10000
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_314 + 25000 / 10000, arg1, idx);
        else:
            require mem[mem[(32 * idx) + _158 + 32] + 32]
            require (block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / mem[mem[(32 * idx) + _158 + 32] + 32] == block.timestamp - mem[_157 + 96]
            require idx < mem[_158]
            _318 = mem[mem[(32 * idx) + _158 + 32] + 64]
            require mem[mem[(32 * idx) + _158 + 32] + 64] <= 25000
            require idx < users[stor3][address(arg1)].field_1024
            if (block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / 24 * 3600 >= -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000:
                require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                require idx < users[stor3][address(arg1)].field_1024
                stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000
                if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _158 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000
                    require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _158 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / 10000 >= 0
                require idx < users[stor3][address(arg1)].field_1024
                require idx < users[stor3][address(arg1)].field_1024
                if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_318 + 25000 / 10000
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_318 + 25000 / 10000, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _158 + 32] + 64] + 25000 / 10000
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_318 + 25000 / 10000
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_318 + 25000 / 10000, arg1, idx);
            else:
                require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + ((block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / 24 * 3600) >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                require idx < users[stor3][address(arg1)].field_1024
                stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 += (block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / 24 * 3600
                if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / 24 * 3600 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / 24 * 3600
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * mem[mem[(32 * idx) + _158 + 32] + 32]) - (mem[_157 + 96] * mem[mem[(32 * idx) + _158 + 32] + 32]) / 24 * 3600 / 10000 >= 0
                require idx < users[stor3][address(arg1)].field_1024
                require idx < users[stor3][address(arg1)].field_1024
                if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                    require idx < users[stor3][address(arg1)].field_1024
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _310) - (_304 * _310) / 24 * 3600 / 10000, arg1, idx);
        idx = idx + 1
        continue 
    users[stor3][address(arg1)].field_768 = block.timestamp
    require users[stor3][address(arg1)].field_1280 >= 0
    users[stor3][address(arg1)].field_1280 = 0
    require totalDividend + users[stor3][address(arg1)].field_1280 >= totalDividend
    totalDividend += users[stor3][address(arg1)].field_1280
    require users[stor3][address(arg1)].field_1280 > 0
    if eth.balance(this.address) > users[stor3][address(arg1)].field_1280:
        call arg1 with:
           value users[stor3][address(arg1)].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UserDividendPayed(users[stor3][address(arg1)].field_1280, arg1);
    else:
        require wave + 1 >= wave
        wave++
        totalInvest = 0
        emit NewWave()
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UserDividendPayed(eth.balance(this.address), arg1);
    emit BalanceChanged(eth.balance(this.address));
}

function virtualInvest(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    if users[stor3][address(arg1)].field_512:
        mem[0] = arg1
        mem[32] = sha3(wave, 10)
        idx = 0
        while idx < users[stor3][address(arg1)].field_1024:
            _375 = mem[64]
            mem[64] = mem[64] + 192
            mem[_375] = 0
            mem[_375 + 32] = 0
            mem[_375 + 64] = 0
            mem[_375 + 96] = 0
            mem[_375 + 128] = 96
            mem[_375 + 160] = 0
            mem[0] = arg1
            mem[32] = sha3(wave, 10)
            _379 = mem[64]
            mem[64] = mem[64] + 192
            mem[_379] = users[stor3][address(arg1)].field_0
            mem[_379 + 32] = users[stor3][address(arg1)].field_256
            mem[_379 + 64] = users[stor3][address(arg1)].field_512
            mem[_379 + 96] = users[stor3][address(arg1)].field_768
            _380 = mem[64]
            mem[64] = mem[64] + (32 * users[stor3][address(arg1)].field_1024) + 32
            mem[_380] = users[stor3][address(arg1)].field_1024
            t = _380 + 32
            s = 0
            while s < users[stor3][address(arg1)].field_1024:
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                _746 = mem[64]
                mem[64] = mem[64] + 96
                mem[_746] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                mem[_746 + 32] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
                mem[_746 + 64] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                mem[t] = _746
                t = t + 32
                s = s + 1
                continue 
            mem[_379 + 128] = _380
            mem[_379 + 160] = users[stor3][address(arg1)].field_1280
            _744 = mem[_379 + 96]
            require mem[_379 + 96] <= block.timestamp
            require idx < mem[_380]
            _772 = mem[mem[(32 * idx) + _380 + 32] + 32]
            if not mem[mem[(32 * idx) + _380 + 32] + 32]:
                require idx < mem[_380]
                _842 = mem[mem[(32 * idx) + _380 + 32] + 64]
                require mem[mem[(32 * idx) + _380 + 32] + 64] <= 25000
                require idx < users[stor3][address(arg1)].field_1024
                if 0 < -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _380 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _380 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / 10000 >= 0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_842 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_842 + 25000 / 10000, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_842 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_842 + 25000 / 10000, arg1, idx);
            else:
                require mem[mem[(32 * idx) + _380 + 32] + 32]
                require (block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / mem[mem[(32 * idx) + _380 + 32] + 32] == block.timestamp - mem[_379 + 96]
                require idx < mem[_380]
                _850 = mem[mem[(32 * idx) + _380 + 32] + 64]
                require mem[mem[(32 * idx) + _380 + 32] + 64] <= 25000
                require idx < users[stor3][address(arg1)].field_1024
                if (block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / 24 * 3600 >= -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _380 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _380 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / 10000 >= 0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_850 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_850 + 25000 / 10000, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _380 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_850 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_850 + 25000 / 10000, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + ((block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / 24 * 3600) >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 += (block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / 24 * 3600
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / 24 * 3600 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / 24 * 3600
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * mem[mem[(32 * idx) + _380 + 32] + 32]) - (mem[_379 + 96] * mem[mem[(32 * idx) + _380 + 32] + 32]) / 24 * 3600 / 10000 >= 0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _772) - (_744 * _772) / 24 * 3600 / 10000, arg1, idx);
            idx = idx + 1
            continue 
        users[stor3][address(arg1)].field_768 = block.timestamp
        require users[stor3][address(arg1)].field_1280 >= 0
        users[stor3][address(arg1)].field_1280 = 0
        require totalDividend + users[stor3][address(arg1)].field_1280 >= totalDividend
        totalDividend += users[stor3][address(arg1)].field_1280
        require arg2 + users[stor3][address(arg1)].field_1280 >= arg2
        _399 = mem[64]
        mem[64] = mem[64] + 96
        mem[_399] = arg2 + users[stor3][address(arg1)].field_1280
        _401 = mem[64]
        mem[64] = mem[64] + 192
        mem[_401] = 0
        mem[_401 + 32] = 0
        mem[_401 + 64] = 0
        mem[_401 + 96] = 0
        mem[_401 + 128] = 96
        mem[_401 + 160] = 0
        mem[0] = arg1
        mem[32] = sha3(wave, 10)
        _405 = mem[64]
        mem[64] = mem[64] + 192
        mem[_405] = users[stor3][address(arg1)].field_0
        mem[_405 + 32] = users[stor3][address(arg1)].field_256
        mem[_405 + 64] = users[stor3][address(arg1)].field_512
        mem[_405 + 96] = users[stor3][address(arg1)].field_768
        _406 = mem[64]
        mem[64] = mem[64] + (32 * users[stor3][address(arg1)].field_1024) + 32
        mem[_406] = users[stor3][address(arg1)].field_1024
        s = _406 + 32
        idx = 0
        while idx < users[stor3][address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
            _743 = mem[64]
            mem[64] = mem[64] + 96
            mem[_743] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
            mem[_743 + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
            mem[_743 + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
            mem[s] = _743
            s = s + 32
            idx = idx + 1
            continue 
        mem[_405 + 128] = _406
        mem[_405 + 160] = users[stor3][address(arg1)].field_1280
        if mem[_405 + 32] < 10^18:
            if mem[_405 + 12 len 20]:
                require 1 < sub_31ddcc57.length
                users[stor3][address(arg1)].field_1024++
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_399]
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_256)
            else:
                require 0 < sub_31ddcc57.length
                users[stor3][address(arg1)].field_1024++
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_399]
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_0)
        else:
            if mem[_405 + 32] < 10 * 10^18:
                require 2 < sub_31ddcc57.length
                users[stor3][address(arg1)].field_1024++
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_399]
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_512)
            else:
                if mem[_405 + 32] >= 20 * 10^18:
                    require 4 < sub_31ddcc57.length
                    users[stor3][address(arg1)].field_1024++
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_399]
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_1024)
                else:
                    require 3 < sub_31ddcc57.length
                    users[stor3][address(arg1)].field_1024++
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_399]
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_768)
    else:
        users[stor3][address(arg1)].field_512 = block.timestamp
        users[stor3][address(arg1)].field_768 = block.timestamp
        emit InvestorAdded(arg1);
        mem[0] = arg1
        mem[32] = sha3(wave, 10)
        idx = 0
        while idx < users[stor3][address(arg1)].field_1024:
            _376 = mem[64]
            mem[64] = mem[64] + 192
            mem[_376] = 0
            mem[_376 + 32] = 0
            mem[_376 + 64] = 0
            mem[_376 + 96] = 0
            mem[_376 + 128] = 96
            mem[_376 + 160] = 0
            mem[0] = arg1
            mem[32] = sha3(wave, 10)
            _383 = mem[64]
            mem[64] = mem[64] + 192
            mem[_383] = users[stor3][address(arg1)].field_0
            mem[_383 + 32] = users[stor3][address(arg1)].field_256
            mem[_383 + 64] = users[stor3][address(arg1)].field_512
            mem[_383 + 96] = users[stor3][address(arg1)].field_768
            _384 = mem[64]
            mem[64] = mem[64] + (32 * users[stor3][address(arg1)].field_1024) + 32
            mem[_384] = users[stor3][address(arg1)].field_1024
            t = _384 + 32
            s = 0
            while s < users[stor3][address(arg1)].field_1024:
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                _752 = mem[64]
                mem[64] = mem[64] + 96
                mem[_752] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                mem[_752 + 32] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
                mem[_752 + 64] = stor[(3 * s) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                mem[t] = _752
                t = t + 32
                s = s + 1
                continue 
            mem[_383 + 128] = _384
            mem[_383 + 160] = users[stor3][address(arg1)].field_1280
            _750 = mem[_383 + 96]
            require mem[_383 + 96] <= block.timestamp
            require idx < mem[_384]
            _776 = mem[mem[(32 * idx) + _384 + 32] + 32]
            if not mem[mem[(32 * idx) + _384 + 32] + 32]:
                require idx < mem[_384]
                _844 = mem[mem[(32 * idx) + _384 + 32] + 64]
                require mem[mem[(32 * idx) + _384 + 32] + 64] <= 25000
                require idx < users[stor3][address(arg1)].field_1024
                if 0 < -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require not 0 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        mem[mem[64] + 64] = 0
                        emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _384 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _384 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / 10000 >= 0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_844 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_844 + 25000 / 10000, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_844 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_844 + 25000 / 10000, arg1, idx);
            else:
                require mem[mem[(32 * idx) + _384 + 32] + 32]
                require (block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / mem[mem[(32 * idx) + _384 + 32] + 32] == block.timestamp - mem[_383 + 96]
                require idx < mem[_384]
                _852 = mem[mem[(32 * idx) + _384 + 32] + 64]
                require mem[mem[(32 * idx) + _384 + 32] + 64] <= 25000
                require idx < users[stor3][address(arg1)].field_1024
                if (block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / 24 * 3600 >= -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _384 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000
                        require (25000 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) - (mem[mem[(32 * idx) + _384 + 32] + 64] * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0) / 10000 >= 0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_852 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_852 + 25000 / 10000, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == -mem[mem[(32 * idx) + _384 + 32] + 64] + 25000 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_852 + 25000 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * -_852 + 25000 / 10000, arg1, idx);
                else:
                    require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 + ((block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / 24 * 3600) >= stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
                    require idx < users[stor3][address(arg1)].field_1024
                    stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 += (block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / 24 * 3600
                    if stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / 24 * 3600 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / 24 * 3600
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * mem[mem[(32 * idx) + _384 + 32] + 32]) - (mem[_383 + 96] * mem[mem[(32 * idx) + _384 + 32] + 32]) / 24 * 3600 / 10000 >= 0
                    require idx < users[stor3][address(arg1)].field_1024
                    require idx < users[stor3][address(arg1)].field_1024
                    if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, 0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000, arg1, idx);
                    else:
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                        require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                        require idx < users[stor3][address(arg1)].field_1024
                        mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                        if not stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0:
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = 0
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, 0, arg1, idx);
                        else:
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            require stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000 / stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 == (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000
                            mem[mem[64]] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
                            mem[mem[64] + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000
                            mem[mem[64] + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000
                            emit DepositDividendPayed(stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 / 10000, stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 * (block.timestamp * _776) - (_750 * _776) / 24 * 3600 / 10000, arg1, idx);
            idx = idx + 1
            continue 
        users[stor3][address(arg1)].field_768 = block.timestamp
        require users[stor3][address(arg1)].field_1280 >= 0
        users[stor3][address(arg1)].field_1280 = 0
        require totalDividend + users[stor3][address(arg1)].field_1280 >= totalDividend
        totalDividend += users[stor3][address(arg1)].field_1280
        require arg2 + users[stor3][address(arg1)].field_1280 >= arg2
        _400 = mem[64]
        mem[64] = mem[64] + 96
        mem[_400] = arg2 + users[stor3][address(arg1)].field_1280
        _402 = mem[64]
        mem[64] = mem[64] + 192
        mem[_402] = 0
        mem[_402 + 32] = 0
        mem[_402 + 64] = 0
        mem[_402 + 96] = 0
        mem[_402 + 128] = 96
        mem[_402 + 160] = 0
        mem[0] = arg1
        mem[32] = sha3(wave, 10)
        _409 = mem[64]
        mem[64] = mem[64] + 192
        mem[_409] = users[stor3][address(arg1)].field_0
        mem[_409 + 32] = users[stor3][address(arg1)].field_256
        mem[_409 + 64] = users[stor3][address(arg1)].field_512
        mem[_409 + 96] = users[stor3][address(arg1)].field_768
        _410 = mem[64]
        mem[64] = mem[64] + (32 * users[stor3][address(arg1)].field_1024) + 32
        mem[_410] = users[stor3][address(arg1)].field_1024
        s = _410 + 32
        idx = 0
        while idx < users[stor3][address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
            _749 = mem[64]
            mem[64] = mem[64] + 96
            mem[_749] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0
            mem[_749 + 32] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256
            mem[_749 + 64] = stor[(3 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512
            mem[s] = _749
            s = s + 32
            idx = idx + 1
            continue 
        mem[_409 + 128] = _410
        mem[_409 + 160] = users[stor3][address(arg1)].field_1280
        if mem[_409 + 32] < 10^18:
            if mem[_409 + 12 len 20]:
                require 1 < sub_31ddcc57.length
                users[stor3][address(arg1)].field_1024++
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_400]
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_256)
            else:
                require 0 < sub_31ddcc57.length
                users[stor3][address(arg1)].field_1024++
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_400]
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_0)
        else:
            if mem[_409 + 32] < 10 * 10^18:
                require 2 < sub_31ddcc57.length
                users[stor3][address(arg1)].field_1024++
                mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_400]
                stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_512)
            else:
                if mem[_409 + 32] >= 20 * 10^18:
                    require 4 < sub_31ddcc57.length
                    users[stor3][address(arg1)].field_1024++
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_400]
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_1024)
                else:
                    require 3 < sub_31ddcc57.length
                    users[stor3][address(arg1)].field_1024++
                    mem[0] = sha3(address(arg1), sha3(wave, 10)) + 4
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_0 = mem[_400]
                    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_256 = uint256(sub_31ddcc57.field_768)
    stor[(3 * users[stor3][address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('stor', ('name', 'stor3', 3)), ('name', 'users', 10))))].field_512 = 0
    emit DepositAdded((arg2 + users[stor3][address(arg1)].field_1280), arg1, users[stor3][address(arg1)].field_1024);
}



}
