contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;

function _fallback() {
    mem[96 len -3338] = code.data[3649 len -3338]
    mem[64] = -3242
    stor0 = msg.sender
    stor4 = 10^15 * mem[96]
    stor6.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
    while (stor6.length + 31 / 32) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor5 = (3600 * mem[160]) + block.timestamp
    return code.data[311 len 3338]
}



// =====================  Runtime code  =====================


address sub_dcf654a0Address;
array of address sub_d3f31250;
uint256 sub_83bd2fca;
uint256 precio;
uint256 sub_7c672bb4;
array of uint256 sub_880914c5;

function sub_6fa4f94f(?) {
    return sub_6fa4f94f[arg1][arg2][0 len sub_6fa4f94f[arg1][arg2].length]
}

function sub_7c672bb4(?) {
    return sub_7c672bb4
}

function sub_83bd2fca(?) {
    return sub_83bd2fca
}

function sub_880914c5(?) {
    return sub_880914c5[0 len sub_880914c5.length]
}

function precio() {
    return precio
}

function sub_d3f31250(?) {
    require arg2 < uint256(sub_d3f31250[arg1])
    return address(sub_d3f31250[arg1][arg2])
}

function sub_dcf654a0(?) {
    return sub_dcf654a0Address
}

function sub_07ed0ddb(?) {
    mem[128 len arg1.length] = arg1[all]
    if sub_dcf654a0Address != msg.sender:
        emit Error(address rg1, uint256 rg2, string rg3):
                   msg.sender,
                   0,
                   96,
                   49,
                   0xc2a14572726f722120c2a14e6f206572657320656c206f7267616e697a61646f,
                   0x722120c2a15472616d706f736f21203a44000000000000000000000000000000,
        revert 
    require arg1.length <= 32
    mem[0] = mem[128]
    _6 = sha3(mem[128], 1)
    mem[ceil32(arg1.length) + 160] = uint256(sub_d3f31250[mem[128]])
    mem[ceil32(arg1.length) + 192] = eth.balance(this.address)
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 224] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xa9ca707d: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length]), mem[ceil32(arg1.length) + 160], eth.balance(this.address)
    if uint256(sub_d3f31250[mem[0]]) > 0:
        require uint256(sub_d3f31250[mem[0]])
        idx = 0
        while uint8(idx) < uint256(stor[_6]):
            mem[0] = _6
            call address(stor[uint8(idx) + sha3(_6)]) with:
               value precio * sub_83bd2fca / uint256(stor[_6]) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require uint8(idx) < uint256(stor[_6])
                mem[0] = _6
                mem[ceil32(arg1.length) + 128] = address(stor[uint8(idx) + sha3(_6)])
                mem[ceil32(arg1.length) + 160] = precio * sub_83bd2fca / uint256(stor[_6])
                emit 0x28c505c4: address(stor[uint8(idx) + sha3(_6)]), precio * sub_83bd2fca / uint256(stor[_6])
            idx = idx + 1
            continue 
    emit 0x28c505c4: sub_dcf654a0Address, eth.balance(this.address)
    selfdestruct(sub_dcf654a0Address)
}

function destroy() {
    if sub_dcf654a0Address != msg.sender:
    emit 0x28c505c4: sub_dcf654a0Address, eth.balance(this.address)
    selfdestruct(sub_dcf654a0Address)
}

function _fallback() payable {
    revert 
}

function sub_4546a98b(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if block.timestamp >= sub_7c672bb4:
        emit Error(address rg1, uint256 rg2, string rg3):
                   msg.sender,
                   msg.value,
                   96,
                   93,
                   0xc2a14572726f722120456c2070726f6ec3b3737469636f206e6f206861207369,
                   'do aceptado al haberse superado ',
                   0x6c61206665636861206cc3ad6d6974652065737461626c65636964612e000000,
        revert 
    if precio != msg.value:
        emit Error(msg.sender, msg.value, Array(len=109, data=0xc2a14572726f722120456c2070726f6ec3b3737469636f20206e6f2068612073, 'ido aceptado al abonar una canti', 'dad inferior a la establecida en', ' el contrato.'));
        revert 
    require arg1.length <= 32
    uint256(sub_d3f31250[mem[128]])++
    if not uint256(sub_d3f31250[mem[128]]) <= uint256(sub_d3f31250[mem[128]]) + 1:
        idx = uint256(sub_d3f31250[mem[128]]) + 1
        while uint256(sub_d3f31250[mem[128]]) > idx:
            uint256(sub_d3f31250[mem[128]][idx]) = 0
            idx = idx + 1
            continue 
    address(sub_d3f31250[mem[128]][uint256(sub_d3f31250[mem[128]])]) = msg.sender
    sub_6fa4f94f[address(msg.sender)]++
    if not sub_6fa4f94f[address(msg.sender)] <= sub_6fa4f94f[address(msg.sender)] + 1:
        mem[0] = sha3(address(msg.sender), 2)
        idx = sub_6fa4f94f[address(msg.sender)] + 1
        while sha3(sha3(address(msg.sender), 2)) + sub_6fa4f94f[address(msg.sender)] > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                    uint256(stor[sha3(idx + sha3(mem[0]))]) = 0
                    s = sha3(idx + sha3(mem[0])) + 1
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    sub_6fa4f94f[address(msg.sender)][sub_6fa4f94f[address(msg.sender)]] = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        sub_6fa4f94f[address(msg.sender)][sub_6fa4f94f[address(msg.sender)] + s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if sub_6fa4f94f[address(msg.sender)][sub_6fa4f94f[address(msg.sender)]].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        stor[('array', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6fa4f94f', 2))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6fa4f94f', 2))) + (Mask(251, 0, arg1.length + 31) >> 5)] = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while sub_6fa4f94f[address(msg.sender)][sub_6fa4f94f[address(msg.sender)]].length + 31 / 32 > idx:
            sub_6fa4f94f[address(msg.sender)][sub_6fa4f94f[address(msg.sender)] + idx] = 0
            idx = idx + 1
            continue 
    sub_83bd2fca++
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = msg.value
    mem[ceil32(arg1.length) + 192] = 96
    mem[ceil32(arg1.length) + 224] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x8c5e7d87: msg.sender, msg.value, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length])
}



}
