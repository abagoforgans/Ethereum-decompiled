contract main {


// =======================  Init code  ======================


uint8 stor0;
uint32 stor0; offset 40
uint32 stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;
address stor6;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint32(stor0.field_8) = 81250000
    stor0.field_40 % 16777216 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    require not msg.value
    stor6 = msg.sender
    stor4[address(msg.sender)] = 15496000000 * 10^18
    return code.data[127 len 5669]
}



// =====================  Runtime code  =====================


const name = 'Beercoin'

const decimals = 18

const symbol = ''


uint64 unproducedCaps;
uint64 producedBronzeCaps;
uint64 producedSilverCaps; offset 64
uint64 producedGoldCaps; offset 128
uint64 producedDiamondCaps; offset 192
uint128 stor1; offset 128
uint256 stor1; offset 64
uint256 stor1;
uint64 scannedBronzeCaps;
uint64 scannedSilverCaps; offset 64
uint64 scannedGoldCaps; offset 128
uint64 scannedDiamondCaps; offset 192
uint128 stor2; offset 128
uint256 stor2; offset 64
uint256 stor2;
uint256 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address masterAddress;
mapping of uint8 stor7;

function directDebitAllowance(address arg1) {
    return bool(stor7[address(arg1)])
}

function producedDiamondCaps() {
    return producedDiamondCaps
}

function producedSilverCaps() {
    return producedSilverCaps
}

function producedGoldCaps() {
    return producedGoldCaps
}

function scannedBronzeCaps() {
    return scannedBronzeCaps
}

function producedBronzeCaps() {
    return producedBronzeCaps
}

function scannedDiamondCaps() {
    return scannedDiamondCaps
}

function unproducedCaps() {
    return unproducedCaps
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function scannedSilverCaps() {
    return scannedSilverCaps
}

function scannedGoldCaps() {
    return scannedGoldCaps
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function master() {
    return masterAddress
}

function _fallback() payable {
    revert
}

function allowDirectDebit() {
    stor7[address(msg.sender)] = 1
}

function forbidDirectDebit() {
    stor7[address(msg.sender)] = 0
}

function declareNewMaster(address arg1) {
    require masterAddress == msg.sender
    masterAddress = arg1
}

function scannedCaps() {
    return uint64(Mask(192, 0, stor2.field_64) + uint128(stor2.field_128) + scannedDiamondCaps + uint256(stor2.field_0))
}

function producedCaps() {
    return uint64(Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + producedDiamondCaps + uint256(stor1.field_0))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function totalSupply() {
    return ((10000 * 10^18 * scannedDiamondCaps) + (100 * 10^18 * scannedGoldCaps) + (10 * 10^18 * scannedSilverCaps) + (10^18 * scannedBronzeCaps) + -stor3 + 15496000000 * 10^18)
}

function burn(uint256 arg1) {
    require masterAddress == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    stor3 += arg1
    emit Burn(arg1);
    return 1
}

function unscannedCaps() {
    return uint64((Mask(192, 64, uint256(stor1.field_0) - uint256(stor2.field_0)) >> 64) + (Mask(128, 128, uint256(stor1.field_0) - uint256(stor2.field_0)) >> 128) + (Mask(64, 192, uint256(stor1.field_0) - uint256(stor2.field_0)) >> 192) + uint256(stor1.field_0) - uint256(stor2.field_0))
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)] + arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] = balanceOf[address(arg1)] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg2)] <= balanceOf[address(arg2)] + arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] = balanceOf[address(arg2)] + arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function debitEqually(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require masterAddress == msg.sender
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)] + (arg1.length * arg2)
    balanceOf[address(msg.sender)] += arg1.length * arg2
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        _22 = sha3(mem[(32 * idx) + 140 len 20], 4)
        require stor7[mem[(32 * idx) + 140 len 20]]
        require arg2 <= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] - arg2
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, address(_21), msg.sender);
        idx = idx + 1
        s = stor[_22]
        s = _21
        continue 
    return 1
}

function creditEqually(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require masterAddress == msg.sender
    require arg1.length * arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * arg1.length * arg2
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        _21 = sha3(mem[(32 * idx) + 140 len 20], 4)
        require balanceOf[mem[(32 * idx) + 140 len 20]] <= balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, msg.sender, address(_20));
        idx = idx + 1
        s = stor[_21] + arg2
        s = stor[_21]
        s = _20
        continue 
    return 1
}

function credit(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require masterAddress == msg.sender
    require arg1.length == arg2.length
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _27 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _28 = sha3(mem[(32 * idx) + 140 len 20], 4)
        require balanceOf[mem[(32 * idx) + 140 len 20]] <= mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_23));
        idx = idx + 1
        s = _27 + stor[_28]
        s = stor[_28]
        s = _27
        s = _23
        s = _27 + s
        continue 
    require _27 * arg1.length <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * _27 * arg1.length
    return 1
}

function debit(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require masterAddress == msg.sender
    require arg1.length == arg2.length
    mem[0] = msg.sender
    mem[32] = 4
    idx = 0
    s = 0
    s = 0
    s = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _28 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _29 = sha3(mem[(32 * idx) + 140 len 20], 4)
        require stor7[mem[(32 * idx) + 140 len 20]]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] - mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_24), msg.sender);
        idx = idx + 1
        s = stor[_29]
        s = _28
        s = _24
        s = _28 + s
        continue 
    require balanceOf[address(msg.sender)] <= stor[sha3(mem[0 len 64])] + (_28 * arg1.length)
    balanceOf[address(msg.sender)] = stor[sha3(mem[0 len 64])] + (_28 * arg1.length)
    return 1
}

function scan(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require masterAddress == msg.sender
    require arg1.length == arg2.length
    idx = 0
    s = 0
    s = 0
    s = uint256(stor2.field_0)
    while idx < arg1.length:
        require idx < arg2.length
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * idx) + 140 len 20]] = (10^18 * mem[(32 * idx) + (32 * arg1.length) + 184 len 8]) + (10 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 176 len 8]) + (100 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 168 len 8]) + (10000 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160 len 8]) + balanceOf[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        s = (10^18 * mem[(32 * idx) + (32 * arg1.length) + 184 len 8]) + (10 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 176 len 8]) + (100 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 168 len 8]) + (10000 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160 len 8])
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
        continue 
    require uint256(stor2.field_0) + (_26 * arg1.length) <= uint256(stor1.field_0)
    uint256(stor2.field_0) += _26 * arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 256] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit Scan(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 256 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96);
    return 1
}

function produce(uint64 arg1) {
    require masterAddress == msg.sender
    require arg1 <= unproducedCaps
    unproducedCaps = uint64(unproducedCaps - arg1)
    producedBronzeCaps = uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10)) / 10))
    producedSilverCaps = uint64((uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10)) / 10) - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 1000)) / 1000))
    producedGoldCaps = uint64((uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 1000)) / 1000) - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10000)) / 10000))
    producedDiamondCaps = uint64(uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10000)) / 10000)
    emit Produce(((uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10000)) / 10000 << 192 or uint64((uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 1000)) / 1000) - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10000)) / 10000)) << 128 or uint64((uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10)) / 10) - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 1000)) / 1000)) << 64 or uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps - (uint64(uint256(stor1.field_0) + Mask(192, 0, stor1.field_64) + uint128(stor1.field_128) + arg1 + producedDiamondCaps) % 10)) / 10))) - uint256(stor1.field_0)));
    return 1
}



}
