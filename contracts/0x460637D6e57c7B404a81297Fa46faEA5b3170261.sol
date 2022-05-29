contract main {




// =====================  Runtime code  =====================


address owner;
array of struct records;
uint256 notarisationFee;

function records(bytes32 arg1) {
    mem[128] = records[arg1].field_0
    idx = 128
    s = 0
    while records[arg1].length + 96 > idx:
        mem[idx + 32] = records[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=records[arg1].length, data=mem[128 len records[arg1].length]), records[arg1].field_256
}

function owner() {
    return owner
}

function notarisationFee() {
    return notarisationFee
}

function _fallback() payable {
    revert
}

function setNotarisationFee(uint256 arg1) {
    require msg.sender == owner
    notarisationFee = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function notarize(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.value >= notarisationFee
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _35 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require not records[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256
    if owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    records[_35][].field_0 = Array(len=arg1.length, data=arg1[all])
    records[_35].field_256 = block.timestamp
}

function record(bytes arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[32] = 1
    _45 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32]), 1)
    mem[64] = ceil32(arg1.length) + ceil32(records[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32]].length) + 288
    mem[ceil32(arg1.length) + 256] = records[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32]].length
    mem[0] = _45
    mem[ceil32(arg1.length) + 288] = stor[sha3(_45)]
    idx = ceil32(arg1.length) + 288
    s = 0
    while ceil32(arg1.length) + stor[_45].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3(_45) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + 192] = ceil32(arg1.length) + 256
    mem[ceil32(arg1.length) + 224] = records[_45].field_0
    mem[mem[64] + 32] = records[_45].field_0
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 256]
    _88 = mem[ceil32(arg1.length) + 256]
    mem[mem[64] + 96 len ceil32(mem[ceil32(arg1.length) + 256])] = mem[ceil32(arg1.length) + 288 len ceil32(mem[ceil32(arg1.length) + 256])]
    if not _88 % 32:
        return 64, records[_45].field_0, mem[mem[64] + 64 len _88 + 32]
    mem[floor32(_88) + mem[64] + 96] = mem[floor32(_88) + mem[64] + -(_88 % 32) + 128 len _88 % 32]
    return 64, records[_45].field_0, mem[mem[64] + 64 len floor32(_88) + 64]
}



}
