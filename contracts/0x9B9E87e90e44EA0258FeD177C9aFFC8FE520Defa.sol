contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner_; offset 8
mapping of uint8 stor1;
uint256 sub_ae6664e0;
mapping of uint8 stor3;
mapping of uint8 stor4;
address sub_658afed4Address;
address sub_e991232bAddress;
address sub_1b042ef9Address;
array of struct tokens;

function sub_1b042ef9(?) {
    return sub_1b042ef9Address
}

function sub_1c8590ba(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_1d345ebb(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1].field_0
}

function sub_658afed4(?) {
    return sub_658afed4Address
}

function sub_ae6664e0(?) {
    return sub_ae6664e0
}

function used(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner_() {
    return owner_
}

function sub_e991232b(?) {
    return sub_e991232bAddress
}

function isOwner() {
    return (msg.sender == owner_)
}

function _fallback() payable {
    require not calldata.size
}

function sub_9f1a156c(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 1
    idx = 0
    while idx < tokens.length:
        mem[0] = 8
        if tokens[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function addToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner_
    idx = 0
    while idx < tokens.length:
        mem[0] = 8
        require tokens[idx].field_0 != arg1
        idx = idx + 1
        continue 
    tokens.length++
    tokens[tokens.length].field_0 = arg1
}

function getTokens() {
    if not tokens.length:
        mem[(32 * tokens.length) + 128] = 32
        mem[(32 * tokens.length) + 160] = tokens.length
        mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
        return memory
          from (32 * tokens.length) + 128
           len (96 * tokens.length) + 64
    mem[128] = address(tokens.field_0)
    idx = 128
    s = 0
    while (32 * tokens.length) + 96 > idx:
        mem[idx + 32] = tokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
    return Array(len=tokens.length, data=mem[128 len floor32(tokens.length)], mem[(32 * tokens.length) + floor32(tokens.length) + 192 len (32 * tokens.length) - floor32(tokens.length)]), 
}

function initialize(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require not stor0
    owner_ = arg1
    sub_658afed4Address = arg2
    sub_e991232bAddress = arg2
    idx = 0
    while uint8(idx) < arg3.length:
        require uint8(idx) < arg3.length
        require not stor1[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * uint8(idx)) + 128])] = 1
        sub_ae6664e0++
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[7759 len 3602]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_1b042ef9Address = address(create.new_address)
    tokens.length++
    tokens[tokens.length].field_0 = address(create.new_address)
    stor0 = 1
}

function sub_ca70cf6e(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[0] = arg2
    mem[32] = 3
    require not stor3[arg2]
    require 1 <= sub_ae6664e0
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg5.length
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (64 * arg5.length) + 224
    if not arg5.length:
        idx = 0
        while idx < arg5.length:
            _102 = mem[64]
            mem[mem[64] + 32] = address(arg1)
            mem[mem[64] + 52] = arg2
            _103 = mem[64]
            mem[mem[64]] = 52
            mem[64] = mem[64] + 84
            _105 = sha3(mem[_103 + 32 len mem[_103]])
            require idx < mem[96]
            _112 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _117 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _123 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[_102 + 116] = '\x19Ethereum Signed Message:\n32'
            mem[_102 + 144] = _105
            mem[_102 + 84] = 60
            mem[64] = _102 + 208
            mem[_102 + 208] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _105)
            mem[_102 + 240] = uint8(_112)
            mem[_102 + 272] = _117
            mem[_102 + 304] = _123
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _105), _112 << 248, _117, _123) 
            mem[_102 + 176] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = address(signer)
            mem[32] = 1
            require 1 == bool(stor1[address(signer)])
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            if bool(stor4[mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 1
                idx = idx + 1
                continue 
            require var33002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            require var33002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = mem[(32 * var33002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
            mem[32] = 4
            stor4[mem[(32 * var33002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 0
            var33002 = var33002 + 1
            continue 
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 32 * arg5.length] = code.data[7759 len 32 * arg5.length]
        idx = 0
        while idx < arg5.length:
            _107 = mem[64]
            mem[mem[64] + 32] = address(arg1)
            mem[mem[64] + 52] = arg2
            _108 = mem[64]
            mem[mem[64]] = 52
            mem[64] = mem[64] + 84
            _110 = sha3(mem[_108 + 32 len mem[_108]])
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _120 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _125 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[_107 + 116] = '\x19Ethereum Signed Message:\n32'
            mem[_107 + 144] = _110
            mem[_107 + 84] = 60
            mem[64] = _107 + 208
            mem[_107 + 208] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _110)
            mem[_107 + 240] = uint8(_114)
            mem[_107 + 272] = _120
            mem[_107 + 304] = _125
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _110), _114 << 248, _120, _125) 
            mem[_107 + 176] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = address(signer)
            mem[32] = 1
            require 1 == bool(stor1[address(signer)])
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            if bool(stor4[mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 1
                idx = idx + 1
                continue 
            require var34002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            require var34002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = mem[(32 * var34002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
            mem[32] = 4
            stor4[mem[(32 * var34002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 0
            var34002 = var34002 + 1
            continue 
    idx = 0
    while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
        require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
        mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 0
        idx = idx + 1
        continue 
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    sub_ae6664e0++
    stor3[arg2] = 1
    return 1
}

function sub_89c39baf(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[0] = arg2
    mem[32] = 3
    require not stor3[arg2]
    require 1 <= sub_ae6664e0
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg5.length
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (64 * arg5.length) + 224
    if not arg5.length:
        idx = 0
        while idx < arg5.length:
            _102 = mem[64]
            mem[mem[64] + 32] = address(arg1)
            mem[mem[64] + 52] = arg2
            _103 = mem[64]
            mem[mem[64]] = 52
            mem[64] = mem[64] + 84
            _105 = sha3(mem[_103 + 32 len mem[_103]])
            require idx < mem[96]
            _112 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _117 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _123 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[_102 + 116] = '\x19Ethereum Signed Message:\n32'
            mem[_102 + 144] = _105
            mem[_102 + 84] = 60
            mem[64] = _102 + 208
            mem[_102 + 208] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _105)
            mem[_102 + 240] = uint8(_112)
            mem[_102 + 272] = _117
            mem[_102 + 304] = _123
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _105), _112 << 248, _117, _123) 
            mem[_102 + 176] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = address(signer)
            mem[32] = 1
            require 1 == bool(stor1[address(signer)])
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            if bool(stor4[mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 1
                idx = idx + 1
                continue 
            require var33002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            require var33002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = mem[(32 * var33002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
            mem[32] = 4
            stor4[mem[(32 * var33002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 0
            var33002 = var33002 + 1
            continue 
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 32 * arg5.length] = code.data[7759 len 32 * arg5.length]
        idx = 0
        while idx < arg5.length:
            _107 = mem[64]
            mem[mem[64] + 32] = address(arg1)
            mem[mem[64] + 52] = arg2
            _108 = mem[64]
            mem[mem[64]] = 52
            mem[64] = mem[64] + 84
            _110 = sha3(mem[_108 + 32 len mem[_108]])
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _120 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _125 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            mem[_107 + 116] = '\x19Ethereum Signed Message:\n32'
            mem[_107 + 144] = _110
            mem[_107 + 84] = 60
            mem[64] = _107 + 208
            mem[_107 + 208] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _110)
            mem[_107 + 240] = uint8(_114)
            mem[_107 + 272] = _120
            mem[_107 + 304] = _125
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _110), _114 << 248, _120, _125) 
            mem[_107 + 176] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = address(signer)
            mem[32] = 1
            require 1 == bool(stor1[address(signer)])
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            if bool(stor4[mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 1
                idx = idx + 1
                continue 
            require var34002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            require var34002 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[0] = mem[(32 * var34002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
            mem[32] = 4
            stor4[mem[(32 * var34002) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 0
            var34002 = var34002 + 1
            continue 
    idx = 0
    while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
        require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
        mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 236 len 20]] = 0
        idx = idx + 1
        continue 
    require bool(stor1[address(arg1)]) == 1
    stor1[address(arg1)] = 0
    sub_ae6664e0--
    stor3[arg2] = 1
    return 1
}

function sub_01f62bd7(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require sub_1b042ef9Address
    mem[0] = arg3
    mem[32] = 3
    require not stor3[arg3]
    require 1 <= sub_ae6664e0
    require arg4.length == arg5.length
    require arg5.length == arg6.length
    require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = arg6.length
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (64 * arg6.length) + 224
    if not arg6.length:
        idx = 0
        while idx < arg6.length:
            _98 = mem[64]
            mem[mem[64] + 32] = address(arg1)
            mem[mem[64] + 52] = arg2
            mem[mem[64] + 84] = arg3
            _99 = mem[64]
            mem[mem[64]] = 84
            mem[64] = mem[64] + 116
            _101 = sha3(mem[_99 + 32 len mem[_99]])
            require idx < mem[96]
            _108 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg4.length) + 128]
            _113 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            _119 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[_98 + 148] = '\x19Ethereum Signed Message:\n32'
            mem[_98 + 176] = _101
            mem[_98 + 116] = 60
            mem[64] = _98 + 240
            mem[_98 + 240] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _101)
            mem[_98 + 272] = uint8(_108)
            mem[_98 + 304] = _113
            mem[_98 + 336] = _119
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _101), _108 << 248, _113, _119) 
            mem[_98 + 208] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * idx) + 224] = address(signer)
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            mem[0] = address(signer)
            mem[32] = 1
            require 1 == bool(stor1[address(signer)])
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]:
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            if bool(stor4[mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * idx) + 236 len 20]]) != 1:
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
                mem[0] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]] = 1
                idx = idx + 1
                continue 
            require var34002 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            require var34002 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            mem[0] = mem[(32 * var34002) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]
            mem[32] = 4
            stor4[mem[(32 * var34002) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]] = 0
            var34002 = var34002 + 1
            continue 
    else:
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224 len 32 * arg6.length] = code.data[7759 len 32 * arg6.length]
        idx = 0
        while idx < arg6.length:
            _103 = mem[64]
            mem[mem[64] + 32] = address(arg1)
            mem[mem[64] + 52] = arg2
            mem[mem[64] + 84] = arg3
            _104 = mem[64]
            mem[mem[64]] = 84
            mem[64] = mem[64] + 116
            _106 = sha3(mem[_104 + 32 len mem[_104]])
            require idx < mem[96]
            _110 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg4.length) + 128]
            _116 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            _121 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
            mem[_103 + 148] = '\x19Ethereum Signed Message:\n32'
            mem[_103 + 176] = _106
            mem[_103 + 116] = 60
            mem[64] = _103 + 240
            mem[_103 + 240] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _106)
            mem[_103 + 272] = uint8(_110)
            mem[_103 + 304] = _116
            mem[_103 + 336] = _121
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _106), _110 << 248, _116, _121) 
            mem[_103 + 208] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * idx) + 224] = address(signer)
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            mem[0] = address(signer)
            mem[32] = 1
            require 1 == bool(stor1[address(signer)])
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]:
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            if bool(stor4[mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * idx) + 236 len 20]]) != 1:
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
                mem[0] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]] = 1
                idx = idx + 1
                continue 
            require var35002 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            require var35002 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
            mem[0] = mem[(32 * var35002) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]
            mem[32] = 4
            stor4[mem[(32 * var35002) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]] = 0
            var35002 = var35002 + 1
            continue 
    idx = 0
    while idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]:
        require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192]
        mem[0] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]] = 0
        idx = idx + 1
        continue 
    require ext_code.size(sub_1b042ef9Address)
    call sub_1b042ef9Address.mintTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[arg3] = 1
}

function sub_eea29e3e(?) {
    require calldata.size - 4 >= 256
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg5.length) + 128] = arg6.length
    mem[(32 * arg5.length) + 160 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg5.length) + (32 * arg6.length) + 160] = arg7.length
    mem[(32 * arg5.length) + (32 * arg6.length) + 192 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    if not arg1:
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 196] = arg8
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 228] = arg3
        require ext_code.size(sub_e991232bAddress)
        staticcall sub_e991232bAddress.0xa10cda99 with:
                gas gas_remaining wei
               args address(arg8), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[0] = arg4
        mem[32] = 3
        require not stor3[arg4]
        require 1 <= sub_ae6664e0
        require arg5.length == arg6.length
        require arg6.length == arg7.length
        require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg7.length
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192] = arg7.length
        mem[64] = (32 * arg5.length) + (32 * arg6.length) + (64 * arg7.length) + 224
        if not arg7.length:
            idx = 0
            while idx < arg7.length:
                _243 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _244 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _246 = sha3(mem[_244 + 32 len mem[_244]])
                require idx < mem[96]
                _254 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _259 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _265 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                mem[_243 + 188] = '\x19Ethereum Signed Message:\n32'
                mem[_243 + 216] = _246
                mem[_243 + 156] = 60
                mem[64] = _243 + 280
                mem[_243 + 280] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _246)
                mem[_243 + 312] = uint8(_254)
                mem[_243 + 344] = _259
                mem[_243 + 376] = _265
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _246), _254 << 248, _259, _265) 
                mem[_243 + 248] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]:
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                if bool(stor4[mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var42002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                require var42002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = mem[(32 * var42002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var42002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 0
                var42002 = var42002 + 1
                continue 
        else:
            mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 224 len 32 * arg7.length] = code.data[7759 len 32 * arg7.length]
            idx = 0
            while idx < arg7.length:
                _248 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _249 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _251 = sha3(mem[_249 + 32 len mem[_249]])
                require idx < mem[96]
                _256 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _262 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _267 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                mem[_248 + 188] = '\x19Ethereum Signed Message:\n32'
                mem[_248 + 216] = _251
                mem[_248 + 156] = 60
                mem[64] = _248 + 280
                mem[_248 + 280] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _251)
                mem[_248 + 312] = uint8(_256)
                mem[_248 + 344] = _262
                mem[_248 + 376] = _267
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _251), _256 << 248, _262, _267) 
                mem[_248 + 248] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]:
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                if bool(stor4[mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var43002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                require var43002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = mem[(32 * var43002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var43002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 0
                var43002 = var43002 + 1
                continue 
    else:
        require 0 < tokens.length
        idx = 0
        while tokens[idx].field_0 != arg1:
            require idx + 1 < tokens.length
            mem[0] = 8
            idx = idx + 1
            continue 
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 196] = arg8
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 228] = arg3
        require ext_code.size(sub_e991232bAddress)
        staticcall sub_e991232bAddress.0xa10cda99 with:
                gas gas_remaining wei
               args address(arg8), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[0] = arg4
        mem[32] = 3
        require not stor3[arg4]
        require 1 <= sub_ae6664e0
        require arg5.length == arg6.length
        require arg6.length == arg7.length
        require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg7.length
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192] = arg7.length
        mem[64] = (32 * arg5.length) + (32 * arg6.length) + (64 * arg7.length) + 224
        if not arg7.length:
            idx = 0
            while idx < arg7.length:
                _470 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _471 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _473 = sha3(mem[_471 + 32 len mem[_471]])
                require idx < mem[96]
                _482 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _493 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _503 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                mem[_470 + 188] = '\x19Ethereum Signed Message:\n32'
                mem[_470 + 216] = _473
                mem[_470 + 156] = 60
                mem[64] = _470 + 280
                mem[_470 + 280] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _473)
                mem[_470 + 312] = uint8(_482)
                mem[_470 + 344] = _493
                mem[_470 + 376] = _503
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _473), _482 << 248, _493, _503) 
                mem[_470 + 248] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]:
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                if bool(stor4[mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var48002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                require var48002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = mem[(32 * var48002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var48002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 0
                var48002 = var48002 + 1
                continue 
        else:
            mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 224 len 32 * arg7.length] = code.data[7759 len 32 * arg7.length]
            idx = 0
            while idx < arg7.length:
                _475 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _476 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _478 = sha3(mem[_476 + 32 len mem[_476]])
                require idx < mem[96]
                _484 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _496 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _505 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                mem[_475 + 188] = '\x19Ethereum Signed Message:\n32'
                mem[_475 + 216] = _478
                mem[_475 + 156] = 60
                mem[64] = _475 + 280
                mem[_475 + 280] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _478)
                mem[_475 + 312] = uint8(_484)
                mem[_475 + 344] = _496
                mem[_475 + 376] = _505
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _478), _484 << 248, _496, _505) 
                mem[_475 + 248] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]:
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                if bool(stor4[mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var49002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                require var49002 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
                mem[0] = mem[(32 * var49002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var49002) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 0
                var49002 = var49002 + 1
                continue 
    idx = 0
    while idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]:
        require idx < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192]
        mem[0] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 236 len 20]] = 0
        idx = idx + 1
        continue 
    if not arg1:
        if arg2 > eth.balance(this.address):
            emit 0x33d1e030: address(arg1), arg3
        else:
            stor3[arg4] = 1
            call arg3 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            emit 0x33d1e030: address(arg1), arg3
        else:
            stor3[arg4] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
