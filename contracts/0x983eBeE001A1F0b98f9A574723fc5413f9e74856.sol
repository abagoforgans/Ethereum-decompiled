contract main {




// =====================  Runtime code  =====================


const ZERO_ADDRESS = '018002'

const NOT_OWNER = '018001'


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
address owner;
array of struct tokensForSale;
mapping of uint256 tokenPrices;
mapping of uint256 sub_3281b9d6;
array of struct allTokens;
array of struct sub_29794567;
mapping of uint256 sub_f5eb2dec;
array of struct sub_1e79d551;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return address(approved[arg1])
}

function sub_1e79d551(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1e79d551[arg1].field_0
    return sub_1e79d551[arg1][arg2].field_0
}

function sub_29794567(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_29794567[arg1].field_0
    return sub_29794567[arg1][arg2].field_0
}

function sub_3281b9d6(?) {
    require calldata.size - 4 >= 32
    return sub_3281b9d6[arg1]
}

function allTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allTokens.length
    return allTokens[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function tokensForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokensForSale.length
    return tokensForSale[arg1].field_0
}

function owner() {
    return owner
}

function sub_933b5454(?) {
    return allTokens.length
}

function tokenPrices(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenPrices[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_f5eb2dec(?) {
    require calldata.size - 4 >= 32
    return sub_f5eb2dec[arg1]
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '018001'
    if not arg1:
        revert with 0, '018002'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][msg.sender]
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    address(approved[arg2]) = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function cancelSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(this.address)
    call this.address.0x4955fbd2 with:
         gas gas_remaining wei
        args sub_3281b9d6[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor4[stor1[arg3]][msg.sender]
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if address(approved[arg3]):
        address(approved[arg3]) = 0
    require ownerOf[arg3] == ownerOf[arg3]
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function getAllTokens() {
    if allTokens.length:
        mem[128] = uint256(allTokens.field_0)
        if (32 * allTokens.length) + 32 > 64:
            mem[160] = uint256(allTokens.field_256)
            idx = 160
            s = 1
            while (32 * allTokens.length) + 96 > idx:
                mem[idx + 32] = allTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * allTokens.length) + 128] = 32
    mem[(32 * allTokens.length) + 160] = allTokens.length
    mem[(32 * allTokens.length) + 192 len floor32(allTokens.length)] = mem[128 len floor32(allTokens.length)]
    return memory
      from (32 * allTokens.length) + 128
       len (96 * allTokens.length) + 64
}

function setForSale(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(this.address)
    staticcall this.address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    tokensForSale.length++
    tokensForSale[tokensForSale.length].field_0 = arg1
    sub_3281b9d6[arg1] = tokensForSale.length - 1
    tokenPrices[arg1] = arg2
    uint256(approved[arg1]) = this.address or Mask(96, 160, uint256(approved[arg1]))
    emit Approval(address(ext_call.return_data[0]), this.address, arg1);
}

function sub_fc6f3805(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '018001'
    require arg2 <= 10
    idx = 0
    s = 10 * arg1
    while idx < arg2:
        require owner
        require not ownerOf[s]
        require not ownerOf[s]
        ownerOf[s] = owner
        require balanceOf[stor5] + 1 >= balanceOf[stor5]
        balanceOf[stor5]++
        emit Transfer(0, owner, s);
        allTokens.length++
        allTokens[allTokens.length].field_0 = s
        sub_1e79d551[arg1].field_0++
        sub_1e79d551[arg1][sub_1e79d551[arg1].field_0].field_0 = s
        sub_29794567[stor5].field_0++
        sub_29794567[stor5][sub_29794567[stor5].field_0].field_0 = s
        mem[0] = s
        mem[32] = 11
        sub_f5eb2dec[s] = sub_29794567[stor5].field_0 - 1
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_5a20b23d(?) {
    require calldata.size - 4 >= 32
    if sub_1e79d551[arg1].field_0:
        mem[128] = sub_1e79d551[arg1].field_0
        if (32 * sub_1e79d551[arg1].field_0) + 32 > 64:
            mem[160] = sub_1e79d551[arg1].field_256
            idx = 160
            s = 1
            while (32 * sub_1e79d551[arg1].field_0) + 96 > idx:
                mem[idx + 32] = sub_1e79d551[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_1e79d551[arg1].field_0) + 128] = 32
    mem[(32 * sub_1e79d551[arg1].field_0) + 160] = sub_1e79d551[arg1].field_0
    mem[(32 * sub_1e79d551[arg1].field_0) + 192 len floor32(sub_1e79d551[arg1].field_0)] = mem[128 len floor32(sub_1e79d551[arg1].field_0)]
    return memory
      from (32 * sub_1e79d551[arg1].field_0) + 128
       len (96 * sub_1e79d551[arg1].field_0) + 64
}

function sub_4955fbd2(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < tokensForSale.length:
        idx = arg1
        while idx < tokensForSale.length - 1:
            require idx + 1 < tokensForSale.length
            require idx < tokensForSale.length
            tokensForSale[idx].field_0 = tokensForSale[idx].field_256
            mem[0] = tokensForSale[idx].field_0
            mem[32] = 8
            sub_3281b9d6[stor6[idx].field_0] = idx
            idx = idx + 1
            continue 
        require tokensForSale.length - 1 < tokensForSale.length
        tokensForSale[tokensForSale.length].field_0 = 0
        tokensForSale.length--
        if tokensForSale.length > tokensForSale.length - 1:
            idx = tokensForSale.length - 1
            while tokensForSale.length > idx:
                tokensForSale[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_2a2bb4d8(?) {
    if not tokensForSale.length:
        mem[(32 * tokensForSale.length) + 128] = 32
        mem[(32 * tokensForSale.length) + 160] = tokensForSale.length
        mem[(32 * tokensForSale.length) + 192 len floor32(tokensForSale.length)] = mem[128 len floor32(tokensForSale.length)]
        return memory
          from (32 * tokensForSale.length) + 128
           len (96 * tokensForSale.length) + 64
    mem[128] = uint256(tokensForSale.field_0)
    idx = 128
    s = 0
    while (32 * tokensForSale.length) + 96 > idx:
        mem[idx + 32] = tokensForSale[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokensForSale.length) + 192 len floor32(tokensForSale.length)] = mem[128 len floor32(tokensForSale.length)]
    return Array(len=tokensForSale.length, data=mem[128 len floor32(tokensForSale.length)], mem[(32 * tokensForSale.length) + floor32(tokensForSale.length) + 192 len (32 * tokensForSale.length) - floor32(tokensForSale.length)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor4[stor1[arg3]][msg.sender]
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if address(approved[arg3]):
        address(approved[arg3]) = 0
    require ownerOf[arg3] == ownerOf[arg3]
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if address(approved[arg3]) != msg.sender:
            require stor4[stor1[arg3]][msg.sender]
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if address(approved[arg3]):
        address(approved[arg3]) = 0
    require ownerOf[arg3] == ownerOf[arg3]
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function sub_52adc3ae(?) {
    require calldata.size - 4 >= 32
    if not sub_29794567[address(arg1)].field_0:
        mem[(32 * sub_29794567[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_29794567[address(arg1)].field_0) + 160] = sub_29794567[address(arg1)].field_0
        mem[(32 * sub_29794567[address(arg1)].field_0) + 192 len floor32(sub_29794567[address(arg1)].field_0)] = mem[128 len floor32(sub_29794567[address(arg1)].field_0)]
        return memory
          from (32 * sub_29794567[address(arg1)].field_0) + 128
           len (96 * sub_29794567[address(arg1)].field_0) + 64
    mem[128] = sub_29794567[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_29794567[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_29794567[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_29794567[address(arg1)].field_0) + 192 len floor32(sub_29794567[address(arg1)].field_0)] = mem[128 len floor32(sub_29794567[address(arg1)].field_0)]
    return Array(len=sub_29794567[address(arg1)].field_0, data=mem[128 len floor32(sub_29794567[address(arg1)].field_0)], mem[(32 * sub_29794567[address(arg1)].field_0) + floor32(sub_29794567[address(arg1)].field_0) + 192 len (32 * sub_29794567[address(arg1)].field_0) - floor32(sub_29794567[address(arg1)].field_0)]), 
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require msg.value >= tokenPrices[arg1]
    require ext_code.size(this.address)
    staticcall this.address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner == address(ext_call.return_data[0]):
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(ext_call.return_data[0]) with:
           value 95 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value msg.value - (95 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(this.address)
    call this.address.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x4955fbd2 with:
         gas gas_remaining wei
        args sub_3281b9d6[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_f5eb2dec[arg1] < sub_29794567[address(ext_call.return_data[0])].field_0
    idx = sub_f5eb2dec[arg1]
    while idx < sub_29794567[address(ext_call.return_data[0])].field_0 - 1:
        require idx + 1 < sub_29794567[address(ext_call.return_data[0])].field_0
        require idx < sub_29794567[address(ext_call.return_data[0])].field_0
        sub_29794567[address(ext_call.return_data[0])][idx].field_0 = sub_29794567[address(ext_call.return_data[0])][idx].field_256
        require idx < sub_29794567[address(ext_call.return_data[0])].field_0
        require idx < sub_29794567[address(ext_call.return_data[0])].field_0
        sub_f5eb2dec[stor10[address(ext_call.return_data[0])][idx].field_0]--
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 10
        idx = idx + 1
        continue 
    require sub_29794567[address(ext_call.return_data[0])].field_0 - 1 < sub_29794567[address(ext_call.return_data[0])].field_0
    sub_29794567[address(ext_call.return_data[0])][sub_29794567[address(ext_call.return_data[0])].field_0].field_0 = 0
    sub_29794567[address(ext_call.return_data[0])].field_0--
    if sub_29794567[address(ext_call.return_data[0])].field_0 > sub_29794567[address(ext_call.return_data[0])].field_0 - 1:
        idx = sub_29794567[address(ext_call.return_data[0])].field_0 - 1
        while sub_29794567[address(ext_call.return_data[0])].field_0 > idx:
            sub_29794567[address(ext_call.return_data[0])][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_29794567[address(msg.sender)].field_0++
    sub_29794567[address(msg.sender)][sub_29794567[address(msg.sender)].field_0].field_0 = arg1
    sub_f5eb2dec[arg1] = sub_29794567[address(msg.sender)].field_0 - 1
}

function sub_d47d467c(?) {
    mem[96] = tokensForSale.length
    if not tokensForSale.length:
        mem[(32 * tokensForSale.length) + 128] = tokensForSale.length
        mem[(64 * tokensForSale.length) + 160] = tokensForSale.length
        mem[64] = (98 * tokensForSale.length) + 192
        idx = 0
        while idx < tokensForSale.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = tokensForSale[idx].field_0
            require idx < tokensForSale.length
            mem[mem[64] + 4] = tokensForSale[idx].field_0
            require ext_code.size(this.address)
            staticcall this.address.0x6352211e with:
                    gas gas_remaining wei
                   args tokensForSale[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * tokensForSale.length) + 128]
            mem[(32 * idx) + (32 * tokensForSale.length) + 160] = address(ext_call.return_data[0])
            require idx < tokensForSale.length
            mem[0] = tokensForSale[idx].field_0
            mem[32] = 7
            require idx < mem[(64 * tokensForSale.length) + 160]
            mem[(32 * idx) + (64 * tokensForSale.length) + 192] = tokenPrices[stor6[idx].field_0]
            idx = idx + 1
            continue 
        _50 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _52 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_50 + 32] = (32 * _52) + 128
        mem[(32 * _52) + _50 + 128] = mem[(32 * tokensForSale.length) + 128]
        _95 = mem[(32 * tokensForSale.length) + 128]
        mem[(32 * _52) + _50 + 160 len floor32(mem[(32 * tokensForSale.length) + 128])] = mem[(32 * tokensForSale.length) + 160 len floor32(mem[(32 * tokensForSale.length) + 128])]
        mem[_50 + 64] = (32 * _95) + (32 * _52) + 160
        mem[(32 * _95) + (32 * _52) + _50 + 160] = mem[(64 * tokensForSale.length) + 160]
        _111 = mem[(64 * tokensForSale.length) + 160]
        mem[(32 * _95) + (32 * _52) + _50 + 192 len floor32(mem[(64 * tokensForSale.length) + 160])] = mem[(64 * tokensForSale.length) + 192 len floor32(mem[(64 * tokensForSale.length) + 160])]
        return memory
          from mem[64]
           len (32 * _111) + (32 * _95) + (32 * _52) + _50 + -mem[64] + 192
    mem[128 len 32 * tokensForSale.length] = code.data[8848 len 32 * tokensForSale.length]
    mem[(32 * tokensForSale.length) + 128] = tokensForSale.length
    mem[(32 * tokensForSale.length) + 160 len 32 * tokensForSale.length] = code.data[8848 len 32 * tokensForSale.length]
    mem[(64 * tokensForSale.length) + 160] = tokensForSale.length
    mem[64] = (98 * tokensForSale.length) + 192
    mem[(64 * tokensForSale.length) + 192 len 32 * tokensForSale.length] = code.data[8848 len 32 * tokensForSale.length]
    idx = 0
    while idx < tokensForSale.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = tokensForSale[idx].field_0
        require idx < tokensForSale.length
        mem[mem[64] + 4] = tokensForSale[idx].field_0
        require ext_code.size(this.address)
        staticcall this.address.0x6352211e with:
                gas gas_remaining wei
               args tokensForSale[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * tokensForSale.length) + 128]
        mem[(32 * idx) + (32 * tokensForSale.length) + 160] = address(ext_call.return_data[0])
        require idx < tokensForSale.length
        mem[0] = tokensForSale[idx].field_0
        mem[32] = 7
        require idx < mem[(64 * tokensForSale.length) + 160]
        mem[(32 * idx) + (64 * tokensForSale.length) + 192] = tokenPrices[stor6[idx].field_0]
        idx = idx + 1
        continue 
    _55 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _57 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * _57) + 128
    mem[(32 * _57) + _55 + 128] = mem[(32 * tokensForSale.length) + 128]
    _98 = mem[(32 * tokensForSale.length) + 128]
    mem[(32 * _57) + _55 + 160 len floor32(mem[(32 * tokensForSale.length) + 128])] = mem[(32 * tokensForSale.length) + 160 len floor32(mem[(32 * tokensForSale.length) + 128])]
    mem[_55 + 64] = (32 * _98) + (32 * _57) + 160
    mem[(32 * _98) + (32 * _57) + _55 + 160] = mem[(64 * tokensForSale.length) + 160]
    _114 = mem[(64 * tokensForSale.length) + 160]
    mem[(32 * _98) + (32 * _57) + _55 + 192 len floor32(mem[(64 * tokensForSale.length) + 160])] = mem[(64 * tokensForSale.length) + 192 len floor32(mem[(64 * tokensForSale.length) + 160])]
    return memory
      from mem[64]
       len (32 * _114) + (32 * _98) + (32 * _57) + _55 + -mem[64] + 192
}



}
