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
                    code: code.data[6645 len 3602]
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
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 244] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 52
    require sub_ae6664e0 >= 1
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 276] = arg5.length
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (64 * arg5.length) + 308
    if not arg5.length:
        idx = 0
        while idx < arg5.length:
            require idx < mem[96]
            _70 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _74 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _78 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            _80 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = sha3(arg1, arg2)
            _81 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _83 = sha3(mem[_81 + 32 len mem[_81]])
            mem[_80 + 92] = 0
            mem[64] = _80 + 124
            mem[_80 + 124] = _83
            mem[_80 + 156] = uint8(_70)
            mem[_80 + 188] = _74
            mem[_80 + 220] = _78
            signer = erecover(_83, _70 << 248, _74, _78) 
            mem[_80 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = 1
            if bool(stor1[address(signer)]) == 1:
                mem[0] = address(signer)
                mem[32] = 4
                if bool(stor4[address(signer)]) != 1:
                    require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 276]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 308] = address(signer)
                    mem[0] = address(signer)
                    mem[32] = 4
                    stor4[address(signer)] = 1
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 308 len 32 * arg5.length] = code.data[6645 len 32 * arg5.length]
        idx = 0
        while idx < arg5.length:
            require idx < mem[96]
            _72 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _76 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _79 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            _87 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = sha3(arg1, arg2)
            _88 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _90 = sha3(mem[_88 + 32 len mem[_88]])
            mem[_87 + 92] = 0
            mem[64] = _87 + 124
            mem[_87 + 124] = _90
            mem[_87 + 156] = uint8(_72)
            mem[_87 + 188] = _76
            mem[_87 + 220] = _79
            signer = erecover(_90, _72 << 248, _76, _79) 
            mem[_87 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = 1
            if bool(stor1[address(signer)]) == 1:
                mem[0] = address(signer)
                mem[32] = 4
                if bool(stor4[address(signer)]) != 1:
                    require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 276]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 308] = address(signer)
                    mem[0] = address(signer)
                    mem[32] = 4
                    stor4[address(signer)] = 1
            idx = idx + 1
            continue 
    require 0 >= sub_ae6664e0 - (sub_ae6664e0 - 1 / 3)
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
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 244] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 52
    require sub_ae6664e0 >= 1
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 276] = arg5.length
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (64 * arg5.length) + 308
    if not arg5.length:
        idx = 0
        while idx < arg5.length:
            require idx < mem[96]
            _70 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _74 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _78 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            _80 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = sha3(arg1, arg2)
            _81 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _83 = sha3(mem[_81 + 32 len mem[_81]])
            mem[_80 + 92] = 0
            mem[64] = _80 + 124
            mem[_80 + 124] = _83
            mem[_80 + 156] = uint8(_70)
            mem[_80 + 188] = _74
            mem[_80 + 220] = _78
            signer = erecover(_83, _70 << 248, _74, _78) 
            mem[_80 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = 1
            if bool(stor1[address(signer)]) == 1:
                mem[0] = address(signer)
                mem[32] = 4
                if bool(stor4[address(signer)]) != 1:
                    require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 276]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 308] = address(signer)
                    mem[0] = address(signer)
                    mem[32] = 4
                    stor4[address(signer)] = 1
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 308 len 32 * arg5.length] = code.data[6645 len 32 * arg5.length]
        idx = 0
        while idx < arg5.length:
            require idx < mem[96]
            _72 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _76 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _79 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            _87 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = sha3(arg1, arg2)
            _88 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _90 = sha3(mem[_88 + 32 len mem[_88]])
            mem[_87 + 92] = 0
            mem[64] = _87 + 124
            mem[_87 + 124] = _90
            mem[_87 + 156] = uint8(_72)
            mem[_87 + 188] = _76
            mem[_87 + 220] = _79
            signer = erecover(_90, _72 << 248, _76, _79) 
            mem[_87 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = 1
            if bool(stor1[address(signer)]) == 1:
                mem[0] = address(signer)
                mem[32] = 4
                if bool(stor4[address(signer)]) != 1:
                    require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 276]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 308] = address(signer)
                    mem[0] = address(signer)
                    mem[32] = 4
                    stor4[address(signer)] = 1
            idx = idx + 1
            continue 
    require 0 >= sub_ae6664e0 - (sub_ae6664e0 - 1 / 3)
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
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = address(arg1)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 244] = arg2
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 276] = arg3
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 84
    require sub_ae6664e0 >= 1
    require arg4.length == arg5.length
    require arg5.length == arg6.length
    require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 308] = arg6.length
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (64 * arg6.length) + 340
    if not arg6.length:
        idx = 0
        while idx < arg6.length:
            require idx < mem[96]
            _66 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg4.length) + 128]
            _70 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            _74 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
            _78 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = sha3(arg1, arg2, arg3)
            _79 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _81 = sha3(mem[_79 + 32 len mem[_79]])
            mem[_78 + 92] = 0
            mem[64] = _78 + 124
            mem[_78 + 124] = _81
            mem[_78 + 156] = uint8(_66)
            mem[_78 + 188] = _70
            mem[_78 + 220] = _74
            signer = erecover(_81, _66 << 248, _70, _74) 
            mem[_78 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = 1
            if bool(stor1[address(signer)]) == 1:
                mem[0] = address(signer)
                mem[32] = 4
                if bool(stor4[address(signer)]) != 1:
                    require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 308]
                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 340] = address(signer)
                    mem[0] = address(signer)
                    mem[32] = 4
                    stor4[address(signer)] = 1
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 340 len 32 * arg6.length] = code.data[6645 len 32 * arg6.length]
        idx = 0
        while idx < arg6.length:
            require idx < mem[96]
            _68 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg4.length) + 128]
            _72 = mem[(32 * idx) + (32 * arg4.length) + 160]
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            _75 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
            _87 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = sha3(arg1, arg2, arg3)
            _88 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _90 = sha3(mem[_88 + 32 len mem[_88]])
            mem[_87 + 92] = 0
            mem[64] = _87 + 124
            mem[_87 + 124] = _90
            mem[_87 + 156] = uint8(_68)
            mem[_87 + 188] = _72
            mem[_87 + 220] = _75
            signer = erecover(_90, _68 << 248, _72, _75) 
            mem[_87 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = 1
            if bool(stor1[address(signer)]) == 1:
                mem[0] = address(signer)
                mem[32] = 4
                if bool(stor4[address(signer)]) != 1:
                    require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 308]
                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 340] = address(signer)
                    mem[0] = address(signer)
                    mem[32] = 4
                    stor4[address(signer)] = 1
            idx = idx + 1
            continue 
    require 0 >= sub_ae6664e0 - (sub_ae6664e0 - 1 / 3)
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
        require ext_code.size(sub_e991232bAddress)
        staticcall sub_e991232bAddress.isWhiteListed(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg8), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[0] = arg4
        mem[32] = 3
        require not stor3[arg4]
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 224] = address(arg1)
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 244] = arg2
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 276] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 296] = arg4
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 328] = address(arg8)
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192] = 124
        require sub_ae6664e0 >= 1
        require arg5.length == arg6.length
        require arg6.length == arg7.length
        require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg7.length
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 348] = arg7.length
        mem[64] = (32 * arg5.length) + (32 * arg6.length) + (64 * arg7.length) + 380
        if not arg7.length:
            idx = 0
            while idx < arg7.length:
                require idx < mem[96]
                _178 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _182 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _186 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                _188 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(arg1, arg2, arg3, arg4, arg8)
                _189 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _191 = sha3(mem[_189 + 32 len mem[_189]])
                mem[_188 + 92] = 0
                mem[64] = _188 + 124
                mem[_188 + 124] = _191
                mem[_188 + 156] = uint8(_178)
                mem[_188 + 188] = _182
                mem[_188 + 220] = _186
                signer = erecover(_191, _178 << 248, _182, _186) 
                mem[_188 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = 1
                if bool(stor1[address(signer)]) == 1:
                    mem[0] = address(signer)
                    mem[32] = 4
                    if bool(stor4[address(signer)]) != 1:
                        require 0 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 348]
                        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 380] = address(signer)
                        mem[0] = address(signer)
                        mem[32] = 4
                        stor4[address(signer)] = 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 380 len 32 * arg7.length] = code.data[6645 len 32 * arg7.length]
            idx = 0
            while idx < arg7.length:
                require idx < mem[96]
                _180 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _184 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _187 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                _195 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(arg1, arg2, arg3, arg4, arg8)
                _196 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _198 = sha3(mem[_196 + 32 len mem[_196]])
                mem[_195 + 92] = 0
                mem[64] = _195 + 124
                mem[_195 + 124] = _198
                mem[_195 + 156] = uint8(_180)
                mem[_195 + 188] = _184
                mem[_195 + 220] = _187
                signer = erecover(_198, _180 << 248, _184, _187) 
                mem[_195 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = 1
                if bool(stor1[address(signer)]) == 1:
                    mem[0] = address(signer)
                    mem[32] = 4
                    if bool(stor4[address(signer)]) != 1:
                        require 0 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 348]
                        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 380] = address(signer)
                        mem[0] = address(signer)
                        mem[32] = 4
                        stor4[address(signer)] = 1
                idx = idx + 1
                continue 
    else:
        require 0 < tokens.length
        idx = 0
        while tokens[idx].field_0 != arg1:
            require idx + 1 < tokens.length
            mem[0] = 8
            idx = idx + 1
            continue 
        require ext_code.size(sub_e991232bAddress)
        staticcall sub_e991232bAddress.isWhiteListed(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg8), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[0] = arg4
        mem[32] = 3
        require not stor3[arg4]
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 224] = address(arg1)
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 244] = arg2
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 276] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 296] = arg4
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 328] = address(arg8)
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 192] = 124
        require sub_ae6664e0 >= 1
        require arg5.length == arg6.length
        require arg6.length == arg7.length
        require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg7.length
        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 348] = arg7.length
        mem[64] = (32 * arg5.length) + (32 * arg6.length) + (64 * arg7.length) + 380
        if not arg7.length:
            idx = 0
            while idx < arg7.length:
                require idx < mem[96]
                _330 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _334 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _338 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                _340 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(arg1, arg2, arg3, arg4, arg8)
                _341 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _343 = sha3(mem[_341 + 32 len mem[_341]])
                mem[_340 + 92] = 0
                mem[64] = _340 + 124
                mem[_340 + 124] = _343
                mem[_340 + 156] = uint8(_330)
                mem[_340 + 188] = _334
                mem[_340 + 220] = _338
                signer = erecover(_343, _330 << 248, _334, _338) 
                mem[_340 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = 1
                if bool(stor1[address(signer)]) == 1:
                    mem[0] = address(signer)
                    mem[32] = 4
                    if bool(stor4[address(signer)]) != 1:
                        require 0 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 348]
                        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 380] = address(signer)
                        mem[0] = address(signer)
                        mem[32] = 4
                        stor4[address(signer)] = 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 380 len 32 * arg7.length] = code.data[6645 len 32 * arg7.length]
            idx = 0
            while idx < arg7.length:
                require idx < mem[96]
                _332 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _336 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg5.length) + (32 * arg6.length) + 160]
                _339 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg6.length) + 192]
                _347 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(arg1, arg2, arg3, arg4, arg8)
                _348 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _350 = sha3(mem[_348 + 32 len mem[_348]])
                mem[_347 + 92] = 0
                mem[64] = _347 + 124
                mem[_347 + 124] = _350
                mem[_347 + 156] = uint8(_332)
                mem[_347 + 188] = _336
                mem[_347 + 220] = _339
                signer = erecover(_350, _332 << 248, _336, _339) 
                mem[_347 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = 1
                if bool(stor1[address(signer)]) == 1:
                    mem[0] = address(signer)
                    mem[32] = 4
                    if bool(stor4[address(signer)]) != 1:
                        require 0 < mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 348]
                        mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 380] = address(signer)
                        mem[0] = address(signer)
                        mem[32] = 4
                        stor4[address(signer)] = 1
                idx = idx + 1
                continue 
    require 0 >= sub_ae6664e0 - (sub_ae6664e0 - 1 / 3)
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
