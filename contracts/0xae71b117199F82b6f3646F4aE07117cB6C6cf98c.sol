contract main {




// =====================  Runtime code  =====================


const sub_02642b2d(?) = 18

const INITIAL_SUPPLY = 5000000000 * 10^18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
array of struct stor7;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
array of struct stor9;
array of struct stor10;
array of struct stor11;
array of struct stor12;
mapping of uint8 sub_a54498f8;
mapping of uint8 stor14;
mapping of struct sub_4519b02c;
mapping of uint256 sub_1a5a06ab;
mapping of uint256 lockAmount;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1a5a06ab(?) {
    require calldata.size - 4 >= 32
    return sub_1a5a06ab[address(arg1)]
}

function decimals() {
    return decimals
}

function getLockAmount(address arg1) {
    require calldata.size - 4 >= 32
    return lockAmount[address(arg1)]
}

function sub_4519b02c(?) {
    require calldata.size - 4 >= 32
    return sub_4519b02c[arg1 << 248].field_0, bool(sub_4519b02c[arg1 << 248].field_8)
}

function paused() {
    return bool(uint8(stor8.field_8))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a54498f8(?) {
    require calldata.size - 4 >= 32
    return sub_a54498f8[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function resume() {
    require msg.sender == owner
    require uint8(stor8.field_8)
    Mask(248, 0, stor8.field_8) = 0
    emit Resumed(msg.sender);
}

function mintingFinished() {
    require msg.sender == owner
    uint8(stor8.field_0) = 1
    emit 0xda004257: bool(uint8(stor8.field_0))
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor8.field_8)
    Mask(248, 0, stor8.field_8) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_289bb73e(?) {
    require calldata.size - 4 >= 32
    return stor14[address(arg1)], sub_4519b02c[stor14[address(arg1)]].field_0, bool(sub_4519b02c[stor14[address(arg1)]].field_8)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f2f56493(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1
    sub_4519b02c[arg1 << 248].field_0 = arg2
    sub_4519b02c[arg1 << 248].field_8 = Mask(248, 0, arg3)
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not uint8(stor8.field_0)
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function sub_d2c1c38c(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg2 <= sub_1a5a06ab[address(arg1)]:
        require arg2 <= balanceOf[address(arg1)]
        lockAmount[address(arg1)] = balanceOf[address(arg1)] - arg2
    mem[164] = uint256(stor10.field_0)
    idx = 164
    s = 0
    while stor10.length + 164 > idx + 32:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
}

function sub_99c5a150(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg1.length > 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_619a3b0a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg1.length > 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = arg2
        idx = idx + 1
        continue 
}

function sub_d6ef8e07(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg1.length > 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_a54498f8[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function addToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg1.length > 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_a54498f8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function addToBlacklist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg1.length > 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_a54498f8[mem[(32 * idx) + 140 len 20]] = 2
        idx = idx + 1
        continue 
}

function sub_f869a1c3(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    if arg1.length <= 0:
        require arg2
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_a54498f8[mem[(32 * idx) + 140 len 20]] = arg2
        idx = idx + 1
        continue 
}

function sub_51577251(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    if arg1.length == arg2.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 16
            sub_1a5a06ab[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor9.field_0)
    idx = (32 * arg1.length) + (32 * arg2.length) + 228
    s = 0
    while (32 * arg1.length) + (32 * arg2.length) + stor9.length + 228 > idx + 32:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor9.length,
                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor9.length + (floor32(stor9.length - 1) + -stor9.length + 32 % 32)]
}

function sub_59ee5bc4(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    if arg1.length == arg2.length:
        require arg2.length > 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _26 = mem[(32 * idx) + 128]
            require idx < arg2.length
            require msg.sender == owner
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
            totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] - mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_26), 0);
            idx = idx + 1
            continue 
        return arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor7.field_0)
    idx = (32 * arg1.length) + (32 * arg2.length) + 228
    s = 0
    while (32 * arg1.length) + (32 * arg2.length) + stor7.length + 228 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor7.length,
                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function sub_829b4d69(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    if arg1.length == arg2.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            if mem[(32 * idx) + (32 * arg1.length) + 160] > sub_1a5a06ab[mem[(32 * idx) + 140 len 20]]:
                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                s = sha3(10)
                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                    mem[idx + 32] = symbol[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 
                            32,
                            stor10.length,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
            require idx < arg2.length
            require idx < arg1.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 17
            lockAmount[mem[(32 * idx) + 140 len 20]] = balanceOf[mem[(32 * idx) + 140 len 20]] - mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor9.field_0)
    idx = (32 * arg1.length) + (32 * arg2.length) + 228
    s = 0
    while (32 * arg1.length) + (32 * arg2.length) + stor9.length + 228 > idx + 32:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor9.length,
                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor9.length + (floor32(stor9.length - 1) + -stor9.length + 32 % 32)]
}

function sub_56767f6c(?) {
    require calldata.size - 4 >= 32
    if not lockAmount[address(arg1)]:
        if not sub_4519b02c[stor14[address(arg1)]].field_8:
            return balanceOf[address(arg1)]
    if not stor14[address(arg1)]:
        if not balanceOf[address(arg1)]:
            require lockAmount[address(arg1)] <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - lockAmount[address(arg1)] < 0:
                if balanceOf[address(arg1)] >= lockAmount[address(arg1)]:
                    return (balanceOf[address(arg1)] - lockAmount[address(arg1)])
            else:
        else:
            require balanceOf[address(arg1)]
            require 100 * balanceOf[address(arg1)] / balanceOf[address(arg1)] == 100
            require lockAmount[address(arg1)] <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - lockAmount[address(arg1)] < 100 * balanceOf[address(arg1)] / 100:
                if balanceOf[address(arg1)] >= lockAmount[address(arg1)]:
                    return (balanceOf[address(arg1)] - lockAmount[address(arg1)])
            else:
                if balanceOf[address(arg1)] >= balanceOf[address(arg1)] - (100 * balanceOf[address(arg1)] / 100):
                    return (100 * balanceOf[address(arg1)] / 100)
    else:
        if not sub_1a5a06ab[address(arg1)]:
            require lockAmount[address(arg1)] <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - lockAmount[address(arg1)] < 0:
                if balanceOf[address(arg1)] >= sub_1a5a06ab[address(arg1)] - balanceOf[address(arg1)] + lockAmount[address(arg1)]:
                    return ((2 * balanceOf[address(arg1)]) - sub_1a5a06ab[address(arg1)] - lockAmount[address(arg1)])
            else:
                if balanceOf[address(arg1)] >= sub_1a5a06ab[address(arg1)]:
                    return (balanceOf[address(arg1)] - sub_1a5a06ab[address(arg1)])
        else:
            require sub_1a5a06ab[address(arg1)]
            require sub_1a5a06ab[address(arg1)] * sub_4519b02c[stor14[address(arg1)]].field_0 / sub_1a5a06ab[address(arg1)] == sub_4519b02c[stor14[address(arg1)]].field_0
            require lockAmount[address(arg1)] <= balanceOf[address(arg1)]
            if balanceOf[address(arg1)] - lockAmount[address(arg1)] < sub_1a5a06ab[address(arg1)] * sub_4519b02c[stor14[address(arg1)]].field_0 / 100:
                if balanceOf[address(arg1)] >= sub_1a5a06ab[address(arg1)] - balanceOf[address(arg1)] + lockAmount[address(arg1)]:
                    return ((2 * balanceOf[address(arg1)]) - sub_1a5a06ab[address(arg1)] - lockAmount[address(arg1)])
            else:
                if balanceOf[address(arg1)] >= sub_1a5a06ab[address(arg1)] - (sub_1a5a06ab[address(arg1)] * sub_4519b02c[stor14[address(arg1)]].field_0 / 100):
                    return (balanceOf[address(arg1)] - sub_1a5a06ab[address(arg1)] + (sub_1a5a06ab[address(arg1)] * sub_4519b02c[stor14[address(arg1)]].field_0 / 100))
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_a54498f8[address(msg.sender)] == 2:
        mem[164] = uint256(stor11.field_0)
        idx = 164
        s = 0
        while stor11.length + 164 > idx + 32:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor11.length, mem[164 len stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32)]
    if uint8(stor8.field_8):
        if sub_a54498f8[address(msg.sender)] != 1:
            mem[164] = uint256(stor12.field_0)
            idx = 164
            s = 0
            while stor12.length + 164 > idx + 32:
                mem[idx + 32] = stor12[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor12.length, mem[164 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
    require arg2 <= balanceOf[address(msg.sender)]
    if lockAmount[address(msg.sender)]:
        if not stor14[address(msg.sender)]:
            if not balanceOf[address(msg.sender)]:
                require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                    if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                        if arg2 > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    if arg2 > 0:
                        mem[164] = uint256(stor10.field_0)
                        idx = 164
                        s = 0
                        while stor10.length + 164 > idx + 32:
                            mem[idx + 32] = stor10[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
            else:
                require balanceOf[address(msg.sender)]
                require 100 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == 100
                require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 100 * balanceOf[address(msg.sender)] / 100:
                    if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                        if arg2 > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)] - (100 * balanceOf[address(msg.sender)] / 100):
                        if arg2 > 100 * balanceOf[address(msg.sender)] / 100:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
        else:
            if not sub_1a5a06ab[address(msg.sender)]:
                require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                    if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                        if arg2 > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)]:
                        if arg2 > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)]:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
            else:
                require sub_1a5a06ab[address(msg.sender)]
                require sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / sub_1a5a06ab[address(msg.sender)] == sub_4519b02c[stor14[address(msg.sender)]].field_0
                require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100:
                    if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                        if arg2 > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                        if arg2 > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)] + (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
    else:
        if not sub_4519b02c[stor14[address(msg.sender)]].field_8:
            if arg2 > balanceOf[address(msg.sender)]:
                mem[164] = uint256(stor10.field_0)
                idx = 164
                s = 0
                while stor10.length + 164 > idx + 32:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
        else:
            if not stor14[address(msg.sender)]:
                if not balanceOf[address(msg.sender)]:
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                        if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                            if arg2 > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if arg2 > 0:
                            mem[164] = uint256(stor10.field_0)
                            idx = 164
                            s = 0
                            while stor10.length + 164 > idx + 32:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    require balanceOf[address(msg.sender)]
                    require 100 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == 100
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 100 * balanceOf[address(msg.sender)] / 100:
                        if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                            if arg2 > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)] - (100 * balanceOf[address(msg.sender)] / 100):
                            if arg2 > 100 * balanceOf[address(msg.sender)] / 100:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
            else:
                if not sub_1a5a06ab[address(msg.sender)]:
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                            if arg2 > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)]:
                            if arg2 > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)]:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    require sub_1a5a06ab[address(msg.sender)]
                    require sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / sub_1a5a06ab[address(msg.sender)] == sub_4519b02c[stor14[address(msg.sender)]].field_0
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                            if arg2 > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                            if arg2 > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)] + (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if arg2 > 0:
                                mem[164] = uint256(stor10.field_0)
                                idx = 164
                                s = 0
                                while stor10.length + 164 > idx + 32:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 32, stor10.length, mem[164 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function multisend(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require arg1.length == arg2.length
    require arg2.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _797 = mem[(32 * idx) + 128]
        require idx < arg2.length
        if sub_a54498f8[address(msg.sender)] == 2:
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor11.field_0)
            idx = (32 * arg1.length) + (32 * arg2.length) + 228
            s = sha3(11)
            while (32 * arg1.length) + (32 * arg2.length) + stor11.length + 228 > idx + 32:
                mem[idx + 32] = symbol[s]
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        stor11.length,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32)]
        if uint8(stor8.field_8):
            if sub_a54498f8[address(msg.sender)] != 1:
                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor12.field_0)
                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                s = sha3(12)
                while (32 * arg1.length) + (32 * arg2.length) + stor12.length + 228 > idx + 32:
                    mem[idx + 32] = symbol[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 
                            32,
                            stor12.length,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        if lockAmount[address(msg.sender)]:
            if not stor14[address(msg.sender)]:
                if not balanceOf[address(msg.sender)]:
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                        if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                            idx = (32 * arg1.length) + (32 * arg2.length) + 228
                            s = sha3(10)
                            while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                mem[idx + 32] = symbol[s]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            revert with 0, 
                                        32,
                                        stor10.length,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    require balanceOf[address(msg.sender)]
                    require 100 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == 100
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 100 * balanceOf[address(msg.sender)] / 100:
                        if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)] - (100 * balanceOf[address(msg.sender)] / 100):
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 100 * balanceOf[address(msg.sender)] / 100:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
            else:
                if not sub_1a5a06ab[address(msg.sender)]:
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)]:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    require sub_1a5a06ab[address(msg.sender)]
                    require sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / sub_1a5a06ab[address(msg.sender)] == sub_4519b02c[stor14[address(msg.sender)]].field_0
                    require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)] + (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
        else:
            if not sub_4519b02c[stor14[address(msg.sender)]].field_8:
                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)]:
                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                    s = sha3(10)
                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                        mem[idx + 32] = symbol[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 
                                32,
                                stor10.length,
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
            else:
                if not stor14[address(msg.sender)]:
                    if not balanceOf[address(msg.sender)]:
                        require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                            if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                s = sha3(10)
                                while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                    mem[idx + 32] = symbol[s]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                revert with 0, 
                                            32,
                                            stor10.length,
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        require balanceOf[address(msg.sender)]
                        require 100 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == 100
                        require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 100 * balanceOf[address(msg.sender)] / 100:
                            if balanceOf[address(msg.sender)] >= lockAmount[address(msg.sender)]:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)] - (100 * balanceOf[address(msg.sender)] / 100):
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 100 * balanceOf[address(msg.sender)] / 100:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                else:
                    if not sub_1a5a06ab[address(msg.sender)]:
                        require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < 0:
                            if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)]:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)]:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                    else:
                        require sub_1a5a06ab[address(msg.sender)]
                        require sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / sub_1a5a06ab[address(msg.sender)] == sub_4519b02c[stor14[address(msg.sender)]].field_0
                        require lockAmount[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - lockAmount[address(msg.sender)] < sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100:
                            if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - balanceOf[address(msg.sender)] + lockAmount[address(msg.sender)]:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > (2 * balanceOf[address(msg.sender)]) - sub_1a5a06ab[address(msg.sender)] - lockAmount[address(msg.sender)]:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                        else:
                            if balanceOf[address(msg.sender)] >= sub_1a5a06ab[address(msg.sender)] - (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(msg.sender)] - sub_1a5a06ab[address(msg.sender)] + (sub_1a5a06ab[address(msg.sender)] * sub_4519b02c[stor14[address(msg.sender)]].field_0 / 100):
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = uint256(stor10.field_0)
                                    idx = (32 * arg1.length) + (32 * arg2.length) + 228
                                    s = sha3(10)
                                    while (32 * arg1.length) + (32 * arg2.length) + stor10.length + 228 > idx + 32:
                                        mem[idx + 32] = symbol[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    revert with 0, 
                                                32,
                                                stor10.length,
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_797));
        idx = idx + 1
        continue 
    return idx
}



}
