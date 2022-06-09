contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
address ceoAddress;
address cfoAddress;
address cooAddress;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
array of uint256 sub_f355eadf;
array of uint256 sub_15c73d79;
array of uint256 name;
array of uint256 symbol;
address sub_80584be0Address;
address sub_9f938d7cAddress;
address stor18;
array of uint256 sub_a3b0f3f0;
uint256 stor21;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function cfoAddress() {
    return cfoAddress
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function ceoAddress() {
    return ceoAddress
}

function sub_15c73d79(?) {
    return sub_15c73d79[0 len sub_15c73d79.length]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_5c2fdfb6(?) {
    return sub_a3b0f3f0[arg1][0 len sub_a3b0f3f0[arg1].length]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_80584be0(?) {
    return sub_80584be0Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9f938d7c(?) {
    return sub_9f938d7cAddress
}

function sub_a3b0f3f0(?) {
    return sub_a3b0f3f0[arg1][0 len sub_a3b0f3f0[arg1].length]
}

function cooAddress() {
    return cooAddress
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_f355eadf(?) {
    return sub_f355eadf[0 len sub_f355eadf.length]
}

function _fallback() payable {
    revert
}

function sub_a5274574(?) {
    return (stor19.length - 1)
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    cooAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == ceoAddress
    cfoAddress = arg1
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function sub_6c9a9744(?) {
    require msg.sender == ceoAddress
    sub_9f938d7cAddress = arg1
    emit 0x4b092578: arg1
}

function sub_0bddfd5a(?) {
    require msg.sender == ceoAddress
    sub_80584be0Address = arg1
    stor18 = arg1
    emit 0x903f5812: arg1
}

function sub_1210b3d6(?) {
    require msg.sender == sub_9f938d7cAddress
    require arg1 < stor19.length
    stor19[arg1].field_0 = arg2
    emit 0x1ee2802b: arg1, arg2, block.timestamp
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_0c42dd97(?) {
    if ceoAddress != msg.sender:
        if cfoAddress != msg.sender:
            require msg.sender == cooAddress
    stor21 = arg1
    emit 0x73c3f075: arg1, block.timestamp
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor7[stor4[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdraw(uint256 arg1) {
    require msg.sender == cfoAddress
    call cfoAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(arg1, cfoAddress);
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    emit Withdrawn(eth.balance(this.address), cfoAddress);
    call cfoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3930ce9f(?) {
    require ownerOf[cd[4]]
    require msg.sender == ownerOf[cd[4]]
    sub_a3b0f3f0[cd[4]] = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_a3b0f3f0[cd[4]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_a3b0f3f0[cd[4]].length + 31 / 32 > idx:
        sub_a3b0f3f0[cd[4]][idx] = 0
        idx = idx + 1
        continue 
    emit 0xde8df971: cd[4], sha3(call.data[cd[36] + 36 len ('cd', 36).length])
}

function sub_8478d36f(?) {
    require msg.sender == ceoAddress
    sub_f355eadf.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_f355eadf[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_f355eadf.length + 31 / 32 > idx:
        sub_f355eadf[idx] = 0
        idx = idx + 1
        continue 
    sub_15c73d79.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_15c73d79[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_15c73d79.length + 31 / 32 > idx:
        sub_15c73d79[idx] = 0
        idx = idx + 1
        continue 
}

function sub_51e5bd07(?) {
    require ownerOf[arg1]
    require arg1 < stor19.length
    if stor19[arg1].field_512:
        mem[128] = stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2)].field_0
        idx = 128
        s = 0
        while (32 * stor19[arg1].field_512) + 96 > idx:
            mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor19', 19) + 2)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor19[arg1].field_512) + 256 len floor32(stor19[arg1].field_512)] = mem[128 len floor32(stor19[arg1].field_512)]
    return stor19[arg1].field_0, 
           stor19[arg1].field_256,
           Array(len=stor19[arg1].field_512, data=mem[128 len floor32(stor19[arg1].field_512)], mem[(32 * stor19[arg1].field_512) + floor32(stor19[arg1].field_512) + 256 len (32 * stor19[arg1].field_512) - floor32(stor19[arg1].field_512)])
}

function sub_22a6058c(?) {
    require ownerOf[arg1]
    require arg1 < stor19.length
    if not stor19[arg1].field_512:
        mem[(32 * stor19[arg1].field_512) + 128] = 32
        mem[(32 * stor19[arg1].field_512) + 160] = stor19[arg1].field_512
        mem[(32 * stor19[arg1].field_512) + 192 len floor32(stor19[arg1].field_512)] = mem[128 len floor32(stor19[arg1].field_512)]
        return memory
          from (32 * stor19[arg1].field_512) + 128
           len (96 * stor19[arg1].field_512) + 64
    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2)].field_0
    idx = 128
    s = 0
    while (32 * stor19[arg1].field_512) + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor19', 19) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor19[arg1].field_512) + 192 len floor32(stor19[arg1].field_512)] = mem[128 len floor32(stor19[arg1].field_512)]
    return Array(len=stor19[arg1].field_512, data=mem[128 len floor32(stor19[arg1].field_512)], mem[(32 * stor19[arg1].field_512) + floor32(stor19[arg1].field_512) + 192 len (32 * stor19[arg1].field_512) - floor32(stor19[arg1].field_512)]), 
}

function sub_c84a75d9(?) {
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function sub_f367134c(?) {
    require ownerOf[arg1]
    require msg.sender == ownerOf[arg1]
    require arg1 < stor19.length
    if var23003 < stor19[arg1].field_512:
        require arg1 < stor19.length
        require var25001 < stor19[arg1].field_512
        mem[0] = (3 * arg1) + sha3(19) + 2
        require ext_code.size(stor18)
        call stor18.0x1d129578 with:
             gas gas_remaining wei
            args stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + var25001].field_0, 0
        s = var25001
        while ext_call.success:
            require return_data.size >= 32
            require arg1 < stor19.length
            require s < stor19[arg1].field_512
            mem[164] = 0
            mem[196] = 0
            require ext_code.size(stor18)
            call stor18.0xed0acf1 with:
                 gas gas_remaining wei
                args stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_0, 0, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg1 < stor19.length
            if s + 1 < stor19[arg1].field_512:
                require arg1 < stor19.length
                require s + 1 < stor19[arg1].field_512
                mem[0] = (3 * arg1) + sha3(19) + 2
                mem[100] = stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_256
                mem[132] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                mem[96] = ext_call.return_data[0]
                s = s + 1
                continue 
            require ownerOf[arg1]
            require ownerOf[arg1] == msg.sender
            if approved[arg1]:
                approved[arg1] = 0
            require ownerOf[arg1]
            require ownerOf[arg1] == msg.sender
            require 1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)]--
            ownerOf[arg1] = 0
            require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
            require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
            require stor9[arg1] < tokenOfOwnerByIndex[address(msg.sender)].field_0
            tokenOfOwnerByIndex[address(msg.sender)][stor9[arg1]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
            tokenOfOwnerByIndex[address(msg.sender)].field_0--
            if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
                mem[0] = sha3(address(msg.sender), 8)
                idx = sha3(mem[0]) + tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
                while sha3(sha3(address(msg.sender), 8)) + tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
                    stor[idx] = 0
                    require s < stor19[arg1].field_512
                    mem[0] = (3 * arg1) + sha3(19) + 2
                    mem[100] = stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_0
                    mem[132] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                    mem[96] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            stor9[arg1] = 0
            stor9[stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0] = stor9[arg1]
            emit Transfer(msg.sender, 0, arg1);
            require 1 <= tokenByIndex.length
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor11[arg1] < tokenByIndex.length
            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
            require tokenByIndex.length - 1 < tokenByIndex.length
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if tokenByIndex.length > tokenByIndex.length - 1:
                mem[0] = 10
                idx = sha3(mem[0]) + tokenByIndex.length - 1
                while sha3(10) + tokenByIndex.length > idx:
                    stor[idx] = 0
                    require s < stor19[arg1].field_512
                    mem[0] = (3 * arg1) + sha3(19) + 2
                    mem[100] = stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_0
                    mem[132] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg1) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                    mem[96] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            stor11[arg1] = 0
            stor11[stor10[stor10.length]] = stor11[arg1]
            emit 0x4038537a: arg1, msg.sender, block.timestamp
        revert with ext_call.return_data[0 len return_data.size]
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
    require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
    require stor9[arg1] < tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)][stor9[arg1]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
    tokenOfOwnerByIndex[address(msg.sender)].field_0--
    if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
        while tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor9[arg1] = 0
    stor9[stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0] = stor9[arg1]
    emit Transfer(msg.sender, 0, arg1);
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor11[arg1] < tokenByIndex.length
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor11[arg1] = 0
    stor11[stor10[stor10.length]] = stor11[arg1]
    emit 0x4038537a: arg1, msg.sender, block.timestamp
}

function sub_26da756a(?) {
    require ('cd', 4).length > 3
    idx = 0
    while idx < ('cd', 4).length:
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor18)
        call stor18.0x8bf8471a with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = 96
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 0xdc332a9b00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 324] = msg.sender
    require ext_code.size(stor18)
    call stor18.getOwnerPieces(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 320
    require return_data.size >= 32
    _93 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] <= 4294967296 and mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320]) + 32 <= return_data.size
    idx = 0
    while idx < ('cd', 4).length:
        _227 = mem[_93 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320]
        s = 0
        while s < _227:
            require idx < ('cd', 4).length
            require s < mem[_93 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320]
            if mem[(32 * s) + _93 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] == mem[(32 * idx) + 128]:
                require idx < ('cd', 4).length
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 356] = 1
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 324], 1
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < ('cd', 4).length
                require idx < ('cd', 36).length
                _245 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx < ('cd', 68).length
                _247 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require idx < ('cd', 100).length
                _249 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 356] = _245
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 388] = _247
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 420] = _249
                require ext_code.size(stor18)
                call stor18.0xed0acf1 with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 324], _245, _247, _249
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            _227 = mem[_93 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    stor19.length++
    stor19[stor19.length].field_0 = stor21
    stor19[stor19.length].field_256 = block.timestamp
    stor19[stor19.length].field_512 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor19[stor19.length].field_512 > idx:
            stor[idx + sha3((3 * stor19.length) + ('name', 'stor19', 19) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor[s + sha3((3 * stor19.length) + ('name', 'stor19', 19) + 2)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor19[stor19.length].field_512 > idx:
            stor[idx + sha3((3 * stor19.length) + ('name', 'stor19', 19) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    require msg.sender
    require not ownerOf[stor19.length]
    ownerOf[stor19.length] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = stor19.length
    stor9[stor19.length] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    emit Transfer(0, msg.sender, stor19.length);
    stor11[stor19.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor19.length
    require stor19.length < stor19.length
    emit 0x30a9db26: stor19.length, msg.sender, stor19[stor19.length].field_256
    return stor19.length
}

function sub_0e89a138(?) {
    if msg.sender == ceoAddress:
        require ('cd', 36).length > 3
        idx = 0
        while idx < ('cd', 36).length:
            mem[100] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor18)
            call stor18.0x8bf8471a with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[36] + 36)]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[96] = ('cd', 36).length
        mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 100).length
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224] = 0
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = 0
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = 96
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] = 0xdc332a9b00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324] = address(cd[4])
        require ext_code.size(stor18)
        call stor18.getOwnerPieces(address arg1) with:
             gas gas_remaining wei
            args address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        _277 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64
        require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 <= 4294967296
        require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + 32 <= return_data.size
        require mem[mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] <= 4294967296 and mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * mem[mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]) + 32 <= return_data.size
        idx = 0
        while idx < ('cd', 36).length:
            _679 = mem[_277 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
            s = 0
            while s < _679:
                require idx < ('cd', 36).length
                require s < mem[_277 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                if mem[(32 * s) + _277 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 352] == mem[(32 * idx) + 128]:
                    require idx < ('cd', 36).length
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 356] = 1
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324], 1
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < ('cd', 36).length
                    require idx < ('cd', 68).length
                    _729 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                    require idx < ('cd', 100).length
                    _739 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    require idx < ('cd', 132).length
                    _745 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 356] = _729
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 388] = _739
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 420] = _745
                    require ext_code.size(stor18)
                    call stor18.0xed0acf1 with:
                         gas gas_remaining wei
                        args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324], _729, _739, _745
                    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                _679 = mem[_277 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        if msg.sender == cfoAddress:
            require ('cd', 36).length > 3
            idx = 0
            while idx < ('cd', 36).length:
                mem[100] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor18)
                call stor18.0x8bf8471a with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[36] + 36)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[96] = ('cd', 36).length
            mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
            mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 100).length
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224] = 0
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = 0
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = 96
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] = 0xdc332a9b00000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324] = address(cd[4])
            require ext_code.size(stor18)
            call stor18.getOwnerPieces(address arg1) with:
                 gas gas_remaining wei
                args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320
            require return_data.size >= 32
            _278 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64
            require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 <= 4294967296
            require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + 32 <= return_data.size
            require mem[mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] <= 4294967296 and mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * mem[mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]) + 32 <= return_data.size
            idx = 0
            while idx < ('cd', 36).length:
                _680 = mem[_278 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                s = 0
                while s < _680:
                    require idx < ('cd', 36).length
                    require s < mem[_278 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                    if mem[(32 * s) + _278 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 352] == mem[(32 * idx) + 128]:
                        require idx < ('cd', 36).length
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 356] = 1
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324], 1
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        _733 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                        require idx < ('cd', 100).length
                        _741 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        require idx < ('cd', 132).length
                        _748 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 356] = _733
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 388] = _741
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 420] = _748
                        require ext_code.size(stor18)
                        call stor18.0xed0acf1 with:
                             gas gas_remaining wei
                            args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324], _733, _741, _748
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    _680 = mem[_278 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        else:
            require msg.sender == cooAddress
            require ('cd', 36).length > 3
            idx = 0
            while idx < ('cd', 36).length:
                mem[100] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor18)
                call stor18.0x8bf8471a with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[36] + 36)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[96] = ('cd', 36).length
            mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
            mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 100).length
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224] = 0
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = 0
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288] = 96
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] = 0xdc332a9b00000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 324] = address(cd[4])
            require ext_code.size(stor18)
            call stor18.getOwnerPieces(address arg1) with:
                 gas gas_remaining wei
                args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320
            require return_data.size >= 32
            _279 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64
            require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 <= 4294967296
            require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + 32 <= return_data.size
            require mem[mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320] <= 4294967296 and mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * mem[mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320 len 4], address(cd[4]) << 64 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]) + 32 <= return_data.size
            idx = 0
            while idx < ('cd', 36).length:
                _681 = mem[_279 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                s = 0
                while s < _681:
                    require idx < ('cd', 36).length
                    require s < mem[_279 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                    if mem[(32 * s) + _279 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 352] == mem[(32 * idx) + 128]:
                        require idx < ('cd', 36).length
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 356] = 1
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324], 1
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        _737 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                        require idx < ('cd', 100).length
                        _743 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        require idx < ('cd', 132).length
                        _751 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324] = mem[(32 * idx) + 128]
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 356] = _737
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 388] = _743
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 420] = _751
                        require ext_code.size(stor18)
                        call stor18.0xed0acf1 with:
                             gas gas_remaining wei
                            args mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 324], _737, _743, _751
                        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    _681 = mem[_279 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320]
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
    stor19.length++
    stor19[stor19.length].field_0 = stor21
    stor19[stor19.length].field_256 = block.timestamp
    stor19[stor19.length].field_512 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor19[stor19.length].field_512 > idx:
            stor[idx + sha3((3 * stor19.length) + ('name', 'stor19', 19) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            stor[s + sha3((3 * stor19.length) + ('name', 'stor19', 19) + 2)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor19[stor19.length].field_512 > idx:
            stor[idx + sha3((3 * stor19.length) + ('name', 'stor19', 19) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    require address(cd[4])
    require not ownerOf[stor19.length]
    ownerOf[stor19.length] = address(cd[4])
    require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
    balanceOf[address(cd[4])]++
    tokenOfOwnerByIndex[address(cd[4])].field_0++
    tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])].field_0].field_0 = stor19.length
    stor9[stor19.length] = tokenOfOwnerByIndex[address(cd[4])].field_0
    emit Transfer(0, address(cd[4]), stor19.length);
    stor11[stor19.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor19.length
    require stor19.length < stor19.length
    emit 0x30a9db26: stor19.length, address(cd[4]), stor19[stor19.length].field_256
    return stor19.length
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if msg.sender == ownerOf[arg3]:
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if not approved[arg3]:
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var69003 >= stor19[arg3].field_512:
                require arg3 < stor19.length
                require var71001 < stor19[arg3].field_512
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var71001].field_0, 0
                s = var71001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require s + 1 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                    mem[132] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                    mem[96] = ext_call.return_data[0]
                    s = s + 1
                    continue 
            else:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var76003 >= stor19[arg3].field_512:
                require arg3 < stor19.length
                require var78001 < stor19[arg3].field_512
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var78001].field_0, 0
                s = var78001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require s + 1 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                    mem[132] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                    mem[96] = ext_call.return_data[0]
                    s = s + 1
                    continue 
        else:
            approved[arg3] = 0
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var70003 >= stor19[arg3].field_512:
                require arg3 < stor19.length
                require var72001 < stor19[arg3].field_512
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var72001].field_0, 0
                s = var72001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require s + 1 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                    mem[132] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                    mem[96] = ext_call.return_data[0]
                    s = s + 1
                    continue 
            else:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var77003 >= stor19[arg3].field_512:
                require arg3 < stor19.length
                require var79001 < stor19[arg3].field_512
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0, 0
                s = var79001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require s + 1 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                    mem[132] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                    mem[96] = ext_call.return_data[0]
                    s = s + 1
                    continue 
    else:
        require ownerOf[arg3]
        if approved[arg3] == msg.sender:
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if not approved[arg3]:
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var75003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var77001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var77001].field_0, 0
                    s = var77001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var82003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var84001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var84001].field_0, 0
                    s = var84001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
            else:
                approved[arg3] = 0
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var76003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var78001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var78001].field_0, 0
                    s = var78001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var83003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var85001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var85001].field_0, 0
                    s = var85001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
        else:
            require stor7[stor4[arg3]][address(msg.sender)]
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if not approved[arg3]:
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var78003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var80001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0, 0
                    s = var80001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var85003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var87001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var87001].field_0, 0
                    s = var87001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
            else:
                approved[arg3] = 0
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var79003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var81001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var81001].field_0, 0
                    s = var81001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var86003 >= stor19[arg3].field_512:
                    require arg3 < stor19.length
                    require var88001 < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var88001].field_0, 0
                    s = var88001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[164] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 >= stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[100] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[132] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[96] = ext_call.return_data[0]
                        s = s + 1
                        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    mem[64] = 128
    mem[96] = 0
    require ownerOf[arg3]
    if msg.sender == ownerOf[arg3]:
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if not approved[arg3]:
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var71003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var73001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var73001].field_0
                mem[164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var73001].field_0, 0
                mem[128] = ext_call.return_data[0]
                s = var73001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        mem[164] = arg1
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.mem[128 len 4] with:
                             gas gas_remaining wei
                            args mem[132 len 64], arg3, 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var78003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var80001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0
                mem[164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0, 0
                mem[128] = ext_call.return_data[0]
                s = var80001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        mem[164] = arg1
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.mem[128 len 4] with:
                             gas gas_remaining wei
                            args mem[132 len 64], arg3, 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        else:
            approved[arg3] = 0
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var72003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var74001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var74001].field_0
                mem[164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var74001].field_0, 0
                mem[128] = ext_call.return_data[0]
                s = var74001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        mem[164] = arg1
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.mem[128 len 4] with:
                             gas gas_remaining wei
                            args mem[132 len 64], arg3, 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var79003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var81001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var81001].field_0
                mem[164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var81001].field_0, 0
                mem[128] = ext_call.return_data[0]
                s = var81001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        mem[164] = arg1
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.mem[128 len 4] with:
                             gas gas_remaining wei
                            args mem[132 len 64], arg3, 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    else:
        require ownerOf[arg3]
        if approved[arg3] == msg.sender:
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if not approved[arg3]:
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var77003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var79001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var79001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var84003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var86001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var86001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var86001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var86001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                approved[arg3] = 0
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var78003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var80001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var80001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var85003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var87001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var87001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var87001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var87001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        else:
            require stor7[stor4[arg3]][address(msg.sender)]
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if not approved[arg3]:
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var80003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var82001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var82001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var82001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var82001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var87003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var89001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var89001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var89001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var89001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                approved[arg3] = 0
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var81003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var83001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var83001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var83001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var83001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var88003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var90001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var90001].field_0
                    mem[164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var90001].field_0, 0
                    mem[128] = ext_call.return_data[0]
                    s = var90001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            mem[164] = arg1
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.mem[128 len 4] with:
                                 gas gas_remaining wei
                                args mem[132 len 64], arg3, 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    require ownerOf[arg3]
    if msg.sender == ownerOf[arg3]:
        require arg2
        require ownerOf[arg3]
        require ownerOf[arg3] == arg1
        if not approved[arg3]:
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var70003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var72001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var72001].field_0
                mem[ceil32(arg4.length) + 164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var72001].field_0, 0
                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                s = var72001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[ceil32(arg4.length) + 164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 132] = msg.sender
                        mem[ceil32(arg4.length) + 164] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if not arg4.length % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var77003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var79001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0
                mem[ceil32(arg4.length) + 164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0, 0
                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                s = var79001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[ceil32(arg4.length) + 164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 132] = msg.sender
                        mem[ceil32(arg4.length) + 164] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if not arg4.length % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        else:
            approved[arg3] = 0
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[arg3] = 0
            require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var71003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var73001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var73001].field_0
                mem[ceil32(arg4.length) + 164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var73001].field_0, 0
                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                s = var73001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[ceil32(arg4.length) + 164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 132] = msg.sender
                        mem[ceil32(arg4.length) + 164] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if not arg4.length % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor9[arg3] = 0
                stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                require not ownerOf[arg3]
                ownerOf[arg3] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                mem[32] = 9
                stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(arg1, arg2, arg3);
                require arg3 < stor19.length
                if var78003 >= stor19[arg3].field_512:
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require arg3 < stor19.length
                require var80001 < stor19[arg3].field_512
                mem[0] = (3 * arg3) + sha3(19) + 2
                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0
                mem[ceil32(arg4.length) + 164] = 0
                require ext_code.size(stor18)
                call stor18.0x1d129578 with:
                     gas gas_remaining wei
                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var80001].field_0, 0
                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                s = var80001
                while ext_call.success:
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    require ext_code.size(stor18)
                    call stor18.0xa063f390 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    require s < stor19[arg3].field_512
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg3 < stor19.length
                    if s + 1 < stor19[arg3].field_512:
                        require arg3 < stor19.length
                        require s + 1 < stor19[arg3].field_512
                        mem[0] = (3 * arg3) + sha3(19) + 2
                        mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                        mem[ceil32(arg4.length) + 164] = 0
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                        mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 132] = msg.sender
                        mem[ceil32(arg4.length) + 164] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                            require s < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        if not arg4.length % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    else:
        require ownerOf[arg3]
        if approved[arg3] == msg.sender:
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if not approved[arg3]:
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var76003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var78001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var78001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var78001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var78001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var83003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var85001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var85001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var85001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var85001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                approved[arg3] = 0
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var77003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var79001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var79001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var79001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var84003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var86001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var86001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var86001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var86001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
        else:
            require stor7[stor4[arg3]][address(msg.sender)]
            require arg2
            require ownerOf[arg3]
            require ownerOf[arg3] == arg1
            if not approved[arg3]:
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var79003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var81001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var81001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var81001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var81001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var86003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var88001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var88001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var88001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var88001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
            else:
                approved[arg3] = 0
                require ownerOf[arg3]
                require ownerOf[arg3] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[arg3] = 0
                require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if tokenOfOwnerByIndex[address(arg1)].field_0 <= tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var80003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var82001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var82001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var82001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var82001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
                    while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor9[arg3] = 0
                    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
                    require not ownerOf[arg3]
                    ownerOf[arg3] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    mem[32] = 9
                    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(arg1, arg2, arg3);
                    require arg3 < stor19.length
                    if var87003 >= stor19[arg3].field_512:
                        if ext_code.size(arg2) > 0:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    require arg3 < stor19.length
                    require var89001 < stor19[arg3].field_512
                    mem[0] = (3 * arg3) + sha3(19) + 2
                    mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var89001].field_0
                    mem[ceil32(arg4.length) + 164] = 0
                    require ext_code.size(stor18)
                    call stor18.0x1d129578 with:
                         gas gas_remaining wei
                        args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + var89001].field_0, 0
                    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                    s = var89001
                    while ext_call.success:
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        mem[ceil32(arg4.length) + 196] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        require ext_code.size(stor18)
                        call stor18.0xa063f390 with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        require s < stor19[arg3].field_512
                        require ext_code.size(stor18)
                        call stor18.0x1d129578 with:
                             gas gas_remaining wei
                            args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 < stor19.length
                        if s + 1 < stor19[arg3].field_512:
                            require arg3 < stor19.length
                            require s + 1 < stor19[arg3].field_512
                            mem[0] = (3 * arg3) + sha3(19) + 2
                            mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256
                            mem[ceil32(arg4.length) + 164] = 0
                            require ext_code.size(stor18)
                            call stor18.0x1d129578 with:
                                 gas gas_remaining wei
                                args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_256, 0
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            s = s + 1
                            continue 
                        if ext_code.size(arg2) > 0:
                            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = msg.sender
                            mem[ceil32(arg4.length) + 164] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[ceil32(arg4.length) + idx + 292] = mem[idx + 128]
                                require s < stor19[arg3].field_512
                                mem[0] = (3 * arg3) + sha3(19) + 2
                                mem[ceil32(arg4.length) + 132] = stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0
                                mem[ceil32(arg4.length) + 164] = 0
                                require ext_code.size(stor18)
                                call stor18.0x1d129578 with:
                                     gas gas_remaining wei
                                    args stor[sha3((3 * arg3) + ('name', 'stor19', 19) + 2) + s].field_0, 0
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            if not arg4.length % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg4.length) + 132 len 64], arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    revert with ext_call.return_data[0 len return_data.size]
}



}
