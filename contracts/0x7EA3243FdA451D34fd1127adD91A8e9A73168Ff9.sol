contract main {




// =====================  Runtime code  =====================


const name = '0xchan ICO Stickers'

const symbol = 'ZCIS'


mapping of uint8 stor0;
array of address ownerOf;
array of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenProperty;
array of address originalTokenOwner;
address stor7;
address stor8;
uint256 stor8;
address stor9;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ownerOf.length
    require address(ownerOf[arg1])
    require arg1 < approved.length
    return address(approved[arg1])
}

function tokenProperty(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenProperty.length
    return tokenProperty[arg1]
}

function totalSupply() payable {
    return tokenProperty.length
}

function tokenOfOwnerByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ownerOf.length
    require address(ownerOf[arg1])
    return address(ownerOf[arg1])
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ownerOf.length
    require address(ownerOf[arg1])
    return address(ownerOf[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function originalTokenOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < originalTokenOwner.length
    return address(originalTokenOwner[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function revokeOwnership() payable {
    require msg.sender == address(stor8)
    address(stor8) = 0
    stor9 = 0
}

function acceptNewOwner() payable {
    require msg.sender == stor9
    uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenProperty.length
    return arg1
}

function setNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor8)
    stor9 = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function amountOfZeros(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2
    s = 0
    idx = arg1 / arg2
    while idx > 0:
        require arg2
        s = s + 1
        idx = idx / arg2
        continue 
    return s
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < ownerOf.length
    if address(ownerOf[arg2]) != msg.sender:
        require stor4[address(stor1[arg2])][msg.sender]
    require arg2 < ownerOf.length
    require address(ownerOf[arg2])
    require arg2 < ownerOf.length
    require address(ownerOf[arg2]) != arg1
    require arg2 < approved.length
    address(approved[arg2]) = arg1
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < ownerOf.length
    require arg3 < ownerOf.length
    require address(ownerOf[arg3])
    if address(ownerOf[arg3]) != msg.sender:
        require arg3 < approved.length
        if address(approved[arg3]) != msg.sender:
            require stor4[address(stor1[arg3])][msg.sender]
    require arg3 < ownerOf.length
    require address(ownerOf[arg3]) == arg1
    require arg2
    require arg3 < ownerOf.length
    require arg3 < approved.length
    if address(approved[arg3]):
        require arg3 < approved.length
        address(approved[arg3]) = 0
    require arg3 < ownerOf.length
    require address(ownerOf[arg3]) == address(ownerOf[arg3])
    require balanceOf[address(stor1[arg3])] > 0
    balanceOf[address(stor1[arg3])]--
    require arg3 < ownerOf.length
    address(ownerOf[arg3]) = 0
    require not address(ownerOf[arg3])
    require arg3 < ownerOf.length
    address(ownerOf[arg3]) = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(address(ownerOf[arg3]), arg2, arg3);
}

function giveSticker(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor7
    require arg1
    ownerOf.length++
    if ownerOf.length > ownerOf.length + 1:
        idx = ownerOf.length + 1
        while ownerOf.length > idx:
            uint256(ownerOf[idx]) = 0
            idx = idx + 1
            continue 
    approved.length++
    if approved.length > approved.length + 1:
        idx = approved.length + 1
        while approved.length > idx:
            uint256(approved[idx]) = 0
            idx = idx + 1
            continue 
    tokenProperty.length++
    if tokenProperty.length > tokenProperty.length + 1:
        idx = tokenProperty.length + 1
        while tokenProperty.length > idx:
            tokenProperty[idx] = 0
            idx = idx + 1
            continue 
    originalTokenOwner.length++
    if originalTokenOwner.length > originalTokenOwner.length + 1:
        idx = originalTokenOwner.length + 1
        while originalTokenOwner.length > idx:
            uint256(originalTokenOwner[idx]) = 0
            idx = idx + 1
            continue 
    require tokenProperty.length < ownerOf.length
    require not address(ownerOf[stor5.length])
    require tokenProperty.length < ownerOf.length
    address(ownerOf[stor5.length]) = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    require tokenProperty.length < tokenProperty.length
    tokenProperty[tokenProperty.length] = arg2
    require tokenProperty.length < originalTokenOwner.length
    address(originalTokenOwner[stor5.length]) = arg1
    emit Transfer(0, arg1, tokenProperty.length);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < ownerOf.length
    require arg3 < ownerOf.length
    require address(ownerOf[arg3])
    if address(ownerOf[arg3]) != msg.sender:
        require arg3 < approved.length
        if address(approved[arg3]) != msg.sender:
            require stor4[address(stor1[arg3])][msg.sender]
    require arg3 < ownerOf.length
    require address(ownerOf[arg3]) == arg1
    require arg2
    require arg3 < ownerOf.length
    require arg3 < approved.length
    if address(approved[arg3]):
        require arg3 < approved.length
        address(approved[arg3]) = 0
    require arg3 < ownerOf.length
    require address(ownerOf[arg3]) == address(ownerOf[arg3])
    require balanceOf[address(stor1[arg3])] > 0
    balanceOf[address(stor1[arg3])]--
    require arg3 < ownerOf.length
    address(ownerOf[arg3]) = 0
    require not address(ownerOf[arg3])
    require arg3 < ownerOf.length
    address(ownerOf[arg3]) = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(address(ownerOf[arg3]), arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg3 < ownerOf.length
    require arg3 < ownerOf.length
    require address(ownerOf[arg3])
    if address(ownerOf[arg3]) != msg.sender:
        require arg3 < approved.length
        if address(approved[arg3]) != msg.sender:
            require stor4[address(stor1[arg3])][msg.sender]
    require arg3 < ownerOf.length
    require address(ownerOf[arg3]) == arg1
    require arg2
    require arg3 < ownerOf.length
    require arg3 < approved.length
    if address(approved[arg3]):
        require arg3 < approved.length
        address(approved[arg3]) = 0
    require arg3 < ownerOf.length
    require address(ownerOf[arg3]) == address(ownerOf[arg3])
    require balanceOf[address(stor1[arg3])] > 0
    balanceOf[address(stor1[arg3])]--
    require arg3 < ownerOf.length
    address(ownerOf[arg3]) = 0
    require not address(ownerOf[arg3])
    require arg3 < ownerOf.length
    address(ownerOf[arg3]) = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(address(ownerOf[arg3]), arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function uint256ToString(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return '0'
    s = 0
    idx = arg1 / 10
    while idx > 0:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s + 1
    mem[64] = floor32(s + 32) + 128
    if not s + 1:
        t = s + 1
        idx = arg1
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _41 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _43 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_43) + _41 + -mem[64] + 96
    mem[128 len s + 1] = code.data[5607 len s + 1]
    t = s + 1
    idx = arg1
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _44 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _46 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_46) + _44 + -mem[64] + 96
}

function concatStrings(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2 * arg1.length
    if uint255(arg1.length):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 2 * arg1.length] = code.data[5607 len 2 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        require idx + arg1.length < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + arg1.length + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + 192] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + 224] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + 256 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32:
        return memory
          from ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + 192
           len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 64
    mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + 256] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 288 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32]
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + ceil32(2 * arg1.length) + 192
       len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 96
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ownerOf.length
    mem[0] = 1
    require address(ownerOf[arg1])
    mem[96] = 43
    mem[128 len 43] = 0xfe68747470733a2f2f30786368616e2e6e65742f737469636b6572732f6f626a5f70726f70657274696573
    if not arg1:
        mem[192] = 1
        mem[224] = '0'
        mem[256] = 86
        mem[288 len 86] = code.data[5607 len 86]
        idx = 0
        while idx < 43:
            require idx < 43
            require idx < 86
            mem[idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        idx = 0
        while idx < 1:
            require idx < 1
            require idx + 43 < 86
            mem[idx + 331 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        return Array(len=86, data=mem[288 len 64], mem[362 len 22])
    s = 0
    idx = arg1 / 10
    while idx > 0:
        s = s + 1
        idx = idx / 10
        continue 
    mem[192] = s + 1
    mem[64] = floor32(s + 32) + 224
    if not s + 1:
        t = s + 1
        idx = arg1
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _159 = mem[96]
        _160 = mem[192]
        _161 = mem[64]
        mem[mem[64]] = 2 * mem[96]
        mem[64] = mem[64] + ceil32(2 * _159) + 32
        if not uint255(_159):
            idx = 0
            while idx < _159:
                require idx < mem[96]
                require idx < mem[_161]
                mem[_161 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            while idx < _160:
                require idx < mem[192]
                require idx + _159 < mem[_161]
                mem[_161 + idx + _159 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            _303 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_161]
            _305 = mem[_161]
            mem[mem[64] + 64 len ceil32(mem[_161])] = mem[_161 + 32 len ceil32(mem[_161])]
            if not _305 % 32:
                return 32, mem[mem[64] + 32 len _305 + 32]
            mem[floor32(_305) + mem[64] + 64] = mem[floor32(_305) + mem[64] + -(_305 % 32) + 96 len _305 % 32]
            return memory
              from mem[64]
               len floor32(_305) + _303 + -mem[64] + 96
        mem[_161 + 32 len 2 * _159] = code.data[5607 len 2 * _159]
        idx = 0
        while idx < _159:
            require idx < mem[96]
            require idx < mem[_161]
            mem[_161 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        idx = 0
        while idx < _160:
            require idx < mem[192]
            require idx + _159 < mem[_161]
            mem[_161 + idx + _159 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        _306 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_161]
        _308 = mem[_161]
        mem[mem[64] + 64 len ceil32(mem[_161])] = mem[_161 + 32 len ceil32(mem[_161])]
        if not _308 % 32:
            return 32, mem[mem[64] + 32 len _308 + 32]
        mem[floor32(_308) + mem[64] + 64] = mem[floor32(_308) + mem[64] + -(_308 % 32) + 96 len _308 % 32]
        return memory
          from mem[64]
           len floor32(_308) + _306 + -mem[64] + 96
    mem[224 len s + 1] = code.data[5607 len s + 1]
    t = s + 1
    idx = arg1
    while idx:
        require t - 1 < mem[192]
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _162 = mem[96]
    _163 = mem[192]
    _164 = mem[64]
    mem[mem[64]] = 2 * mem[96]
    mem[64] = mem[64] + ceil32(2 * _162) + 32
    if not uint255(_162):
        idx = 0
        while idx < _162:
            require idx < mem[96]
            require idx < mem[_164]
            mem[_164 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        idx = 0
        while idx < _163:
            require idx < mem[192]
            require idx + _162 < mem[_164]
            mem[_164 + idx + _162 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        _309 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_164]
        _311 = mem[_164]
        mem[mem[64] + 64 len ceil32(mem[_164])] = mem[_164 + 32 len ceil32(mem[_164])]
        if not _311 % 32:
            return 32, mem[mem[64] + 32 len _311 + 32]
        mem[floor32(_311) + mem[64] + 64] = mem[floor32(_311) + mem[64] + -(_311 % 32) + 96 len _311 % 32]
        return memory
          from mem[64]
           len floor32(_311) + _309 + -mem[64] + 96
    mem[_164 + 32 len 2 * _162] = code.data[5607 len 2 * _162]
    idx = 0
    while idx < _162:
        require idx < mem[96]
        require idx < mem[_164]
        mem[_164 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    while idx < _163:
        require idx < mem[192]
        require idx + _162 < mem[_164]
        mem[_164 + idx + _162 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    _312 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_164]
    _314 = mem[_164]
    mem[mem[64] + 64 len ceil32(mem[_164])] = mem[_164 + 32 len ceil32(mem[_164])]
    if not _314 % 32:
        return 32, mem[mem[64] + 32 len _314 + 32]
    mem[floor32(_314) + mem[64] + 64] = mem[floor32(_314) + mem[64] + -(_314 % 32) + 96 len _314 % 32]
    return memory
      from mem[64]
       len floor32(_314) + _312 + -mem[64] + 96
}



}
