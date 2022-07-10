contract main {




// =====================  Runtime code  =====================


#
#  - sub_945ac863(?)
#
uint256 sub_d889df34;
address logicContractAddress;
address tokenContractAddress;
array of address validators;
mapping of struct sub_4f1811dd;
uint256 totalVotingPower;
uint256 sub_568873ad;
uint256 sub_f3f39ee5;
uint256 sub_3cd3f6a7;
mapping of uint8 stor9;
mapping of uint256 reserved;

function validators(uint256 arg1) {
    require arg1 < validators.length
    return validators[arg1]
}

function sub_3cd3f6a7(?) {
    return sub_3cd3f6a7
}

function sub_4f1811dd(?) {
    return sub_4f1811dd[arg1].field_0, sub_4f1811dd[arg1].field_8
}

function tokenContract() {
    return tokenContractAddress
}

function sub_568873ad(?) {
    return sub_568873ad
}

function totalVotingPower() {
    return totalVotingPower
}

function reserved(bytes32 arg1) {
    return reserved[arg1]
}

function logicContract() {
    return logicContractAddress
}

function sub_d889df34(?) {
    return sub_d889df34
}

function sub_f21a2116(?) {
    return bool(stor9[arg1])
}

function sub_f3f39ee5(?) {
    return sub_f3f39ee5
}

function sub_2277e53a(?) {
  stop
}

function _fallback() payable {
    revert
}

function sub_7ed93957(?) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    sub_d889df34++
    mem[ceil32(arg2.length) + 160 len 12] = Mask(96, 0, 'exec')
    mem[ceil32(arg2.length) + 128] = 12
    mem[ceil32(arg2.length) + 172 len 0] = None
    hash = sha256hash(Mask(96, 0, Mask(96, 0, 'exec'), 0)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 204] = address(arg1)
    mem[ceil32(arg2.length) + 172] = 20
    mem[64] = ceil32(arg2.length) + 224
    mem[ceil32(arg2.length) + 224 len 0] = None
    hash = sha256hash(address(arg1, 0)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[129 len 1] <= 9
    mem[ceil32(arg2.length) + 224] = 0x2000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 226] = mem[130]
    mem[ceil32(arg2.length) + mem[129 len 1] + 226 len 8] = 32
    mem[ceil32(arg2.length) + mem[129 len 1] + 227] = hash
    mem[ceil32(arg2.length) + mem[129 len 1] + 259 len 8] = 32
    mem[ceil32(arg2.length) + mem[129 len 1] + 260] = hash
    hash = sha256hash(mem[ceil32(arg2.length) + 224 len mem[129 len 1] + 2], 0, hash, 0, hash) 
    mem[ceil32(arg2.length) + 352] = hash
    idx = mem[mem[129 len 1] + 130 len 1]
    s = mem[mem[129 len 1] + 130 len 1]
    s = mem[129 len 1] + 131
    t = ceil32(arg2.length) + mem[129 len 1] + 292
    while idx > 0:
        _84 = mem[s - 31]
        require mem[s - 31] % 128 <= 19
        mem[ceil32(arg2.length) + 224] = mem[s + 1]
        mem[(_84 % 128) + ceil32(arg2.length) + 224 len 8] = 32
        if not Mask(1, 7, _84):
            mem[(_84 % 128) + ceil32(arg2.length) + 225] = mem[ceil32(arg2.length) + 352]
            mem[(_84 % 128) + ceil32(arg2.length) + 257 len 8] = 32
            mem[(_84 % 128) + ceil32(arg2.length) + 258] = mem[(_84 % 128) + s + 1]
        else:
            mem[(_84 % 128) + ceil32(arg2.length) + 225] = mem[(_84 % 128) + s + 1]
            mem[(_84 % 128) + ceil32(arg2.length) + 257 len 8] = 32
            mem[(_84 % 128) + ceil32(arg2.length) + 258] = mem[ceil32(arg2.length) + 352]
        hash = sha256hash(mem[ceil32(arg2.length) + 224 len (_84 % 128) + 33], 0, mem[ceil32(arg2.length) + (_84 % 128) + 258]) 
        mem[ceil32(arg2.length) + 352] = hash
        idx = idx - 1
        s = _84 % 128
        s = (_84 % 128) + s + 33
        t = (_84 % 128) + ceil32(arg2.length) + 290
        continue 
    require s - 128 <= arg2.length
    require mem[ceil32(arg2.length) + 352] == sub_3cd3f6a7
    logicContractAddress = arg1
    emit Upgraded(sub_d889df34, arg1);
}

function sub_50fbe2d9(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]) 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = hash
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stor9[hash]
    mem[0] = hash
    mem[32] = 9
    stor9[hash] = 1
    _43 = Mask(240, 0, arg2.length), mem[ceil32(arg1.length) + 160 len 2]
    require mem[ceil32(arg1.length) + 161 len 1] <= 9
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x2000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 162] = mem[ceil32(arg1.length) + 162]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + uint8(_43) + 162 len 8] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + uint8(_43) + 163] = hash
    mem[ceil32(arg1.length) + ceil32(arg2.length) + uint8(_43) + 195 len 8] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + uint8(_43) + 196] = 0x4bf5122f344554c53bde2ebb8cd2b7e3d1600ad631c385a5d7cce23c7785459a
    hash = sha256hash(0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 162 len uint8(_43)], 0, hash, 0, 0x4bf5122f344554c53bde2ebb8cd2b7e3d1600ad631c385a5d7cce23c7785459a) 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = hash
    idx = mem[ceil32(arg1.length) + uint8(_43) + 162 len 1]
    s = mem[ceil32(arg1.length) + uint8(_43) + 162 len 1]
    s = ceil32(arg1.length) + uint8(_43) + 163
    t = ceil32(arg1.length) + ceil32(arg2.length) + uint8(_43) + 228
    while idx > 0:
        _64 = mem[s - 31]
        require mem[s - 31] % 128 <= 19
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = mem[s + 1]
        mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 160 len 8] = 32
        if not Mask(1, 7, _64):
            mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 161] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
            mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 193 len 8] = 32
            mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 194] = mem[(_64 % 128) + s + 1]
        else:
            mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 161] = mem[(_64 % 128) + s + 1]
            mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 193 len 8] = 32
            mem[(_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 194] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
        hash = sha256hash(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len (_64 % 128) + 33], 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + (_64 % 128) + 194]) 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = hash
        idx = idx - 1
        s = _64 % 128
        s = (_64 % 128) + s + 33
        t = (_64 % 128) + ceil32(arg1.length) + ceil32(arg2.length) + 226
        continue 
    require s + -ceil32(arg1.length) - 160 <= arg2.length
    require mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] == sub_3cd3f6a7
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, mem[200]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(mem[136]), mem[168]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
