contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of struct stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;

function owner() {
    return owner
}

function sub_bcf08606(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
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

function isDerivativeRegistered(address arg1) {
    require calldata.size - 4 >= 32
    require stor2[address(arg1)].field_0 <= 2
    return (stor2[address(arg1)].field_0 == 1)
}

function sub_cc5a0e13(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if stor4[address(arg1)]:
        stor4[address(arg1)] = 0
        emit 0x3addeeb5: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7e79599d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        emit 0xd5ad3406: arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getAllRegisteredDerivatives() {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    s = 128
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor1[idx].field_0
        mem[_11 + 32] = stor1[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function registerDerivative(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require stor4[address(msg.sender)]
    require stor2[address(arg2)].field_0 <= 2
    require not stor2[address(arg2)].field_0
    stor2[address(arg2)].field_0 = 1
    stor1.length++
    stor1[stor1.length].field_0 = arg2
    stor1[stor1.length].field_256 = msg.sender
    require 1 <= stor1.length
    stor2[address(arg2)].field_8 = uint128(stor1.length - 1)
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(address(arg2), 3)
        stor3[address(arg2)][address(cd[((32 * idx) + arg1 + 36)])] = 1
        require idx + 1 >= idx
        idx = idx + 1
        continue 
    mem[192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 192] = 32
    mem[(32 * arg1.length) + 224] = arg1.length
    idx = 0
    s = 192
    t = (32 * arg1.length) + 256
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x963bc1f7: mem[(32 * arg1.length) + 192 len (96 * arg1.length) + 64], arg2
}

function getRegisteredDerivatives(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = stor1.length
    mem[64] = (32 * stor1.length) + 128
    if not stor1.length:
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[0] = arg1
            mem[32] = sha3(stor1[idx].field_0, 3)
            if not stor3[stor1[idx].field_0][address(arg1)]:
                require idx + 1 >= idx
                idx = idx + 1
                s = s
                continue 
            _32 = mem[64]
            mem[64] = mem[64] + 64
            mem[_32] = stor1[idx].field_0
            mem[_32 + 32] = stor1[idx].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _32
            require s + 1 >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = s + 1
            continue 
        _27 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                require t < mem[96]
                require t < mem[_27]
                mem[(32 * t) + _27 + 32] = mem[(32 * t) + 128]
                require t + 1 >= t
                t = t + 1
                continue 
            _68 = mem[64]
            mem[mem[64]] = 32
            _71 = mem[_27]
            mem[mem[64] + 32] = mem[_27]
            idx = 0
            s = _27 + 32
            t = mem[64] + 64
            while idx < _71:
                _98 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_98 + 44 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _68 + (64 * _71) + -mem[64] + 64
        mem[64] = _27 + (32 * s) + 96
        mem[_27 + (32 * s) + 32] = 0
        mem[_27 + (32 * s) + 64] = 0
        mem[var21001] = _27 + (32 * s) + 32
        t = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_27 + (32 * s) + 32] = 0
            mem[_27 + (32 * s) + 64] = 0
            mem[t + 32] = _27 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_27]
            mem[(32 * t) + _27 + 32] = mem[(32 * t) + 128]
            require t + 1 >= t
            t = t + 1
            continue 
        _139 = mem[64]
        mem[mem[64]] = 32
        _145 = mem[_27]
        mem[mem[64] + 32] = mem[_27]
        idx = 0
        s = _27 + 32
        t = mem[64] + 64
        while idx < _145:
            _165 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_165 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _139 + (64 * _145) + -mem[64] + 64
    mem[64] = (32 * stor1.length) + 192
    mem[(32 * stor1.length) + 128] = 0
    mem[(32 * stor1.length) + 160] = 0
    mem[var17001] = (32 * stor1.length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor1.length) + 128] = 0
        mem[(32 * stor1.length) + 160] = 0
        mem[s + 32] = (32 * stor1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = arg1
        mem[32] = sha3(stor1[idx].field_0, 3)
        if not stor3[stor1[idx].field_0][address(arg1)]:
            require idx + 1 >= idx
            idx = idx + 1
            s = s
            continue 
        _105 = mem[64]
        mem[64] = mem[64] + 64
        mem[_105] = stor1[idx].field_0
        mem[_105 + 32] = stor1[idx].field_256
        require s < mem[96]
        mem[(32 * s) + 128] = _105
        require s + 1 >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + 1
        continue 
    _99 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[96]
            require t < mem[_99]
            mem[(32 * t) + _99 + 32] = mem[(32 * t) + 128]
            require t + 1 >= t
            t = t + 1
            continue 
        _142 = mem[64]
        mem[mem[64]] = 32
        _146 = mem[_99]
        mem[mem[64] + 32] = mem[_99]
        idx = 0
        s = _99 + 32
        t = mem[64] + 64
        while idx < _146:
            _166 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_166 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _142 + (64 * _146) + -mem[64] + 64
    mem[64] = _99 + (32 * s) + 96
    mem[_99 + (32 * s) + 32] = 0
    mem[_99 + (32 * s) + 64] = 0
    mem[var28001] = _99 + (32 * s) + 32
    t = var28001
    idx = var28002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_99 + (32 * s) + 32] = 0
        mem[_99 + (32 * s) + 64] = 0
        mem[t + 32] = _99 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        require t < mem[96]
        require t < mem[_99]
        mem[(32 * t) + _99 + 32] = mem[(32 * t) + 128]
        require t + 1 >= t
        t = t + 1
        continue 
    _183 = mem[64]
    mem[mem[64]] = 32
    _186 = mem[_99]
    mem[mem[64] + 32] = mem[_99]
    idx = 0
    s = _99 + 32
    t = mem[64] + 64
    while idx < _186:
        _191 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_191 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _183 + (64 * _186) + -mem[64] + 64
}



}
