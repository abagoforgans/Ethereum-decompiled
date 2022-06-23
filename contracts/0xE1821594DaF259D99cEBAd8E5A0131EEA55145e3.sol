contract main {




// =====================  Runtime code  =====================


#
#  - sub_423d16ab(?)
#
const name = 'Angel Battle Token'

const symbol = 'ABT'

const baseTokenURI = Array(len=33, data=0xfe68747470733a2f2f7777772e616e67656c626174746c65732e636f6d2f555249, mem[161 len 31], mem[223 len 1])


uint16 totalSeraphims; offset 160
address creatorAddress;
mapping of uint8 stor1;
uint8 isMaintenanceMode;
mapping of uint8 stor3;
uint256 totalTokens;
array of uint256 sub_ecb054d0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor9;
array of uint32 currentTokenNumbers;
array of uint32 sub_267d020c;
uint16 stor30; offset 160
uint16 stor30; offset 176
uint16 stor30; offset 192
uint16 stor30; offset 208
uint16 stor30; offset 224
uint16 stor30; offset 240
bool stor31; offset 256
uint8 stor31; offset 96
uint8 stor31; offset 128
uint8 stor31; offset 160
uint8 stor31; offset 192
uint8 stor31; offset 224
uint16 stor31;
uint16 stor31; offset 16
uint16 stor31; offset 32
uint16 stor31; offset 48
uint16 stor31; offset 64
uint16 stor31; offset 80
uint32 stor31; offset 104
uint32 stor31; offset 136
uint32 stor31; offset 168
uint32 stor31; offset 200
uint32 stor31; offset 232
uint8 stor32;
uint32 stor32; offset 8
array of uint256 sub_d96e2ebd;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint256 stor46;
uint256 stor47;
uint256 stor48;
uint256 stor49;
uint256 stor50;
uint256 stor51;
uint256 stor52;
uint256 stor53;
uint256 stor54;
uint256 stor55;
uint256 stor56;
uint256 stor57;
uint256 stor58;
uint256 stor59;
array of uint256 sub_b3370c4e;
uint256 stor61;
uint256 stor62;
uint256 stor63;
uint256 stor64;
uint256 stor65;
uint256 stor66;
uint256 stor67;
uint256 stor68;
uint256 stor69;
uint256 stor70;
uint256 stor71;
uint256 stor72;
uint256 stor73;
uint256 stor74;
uint256 stor75;
uint256 stor76;
uint256 stor77;
mapping of struct sub_de06212c;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return totalTokens
}

function sub_267d020c(?) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return uint32(sub_267d020c[uint8(arg1)])
}

function seraphims(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function currentTokenNumbers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return uint32(currentTokenNumbers[uint8(arg1)])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function isMaintenanceMode() {
    return bool(isMaintenanceMode)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function maxTokenNumbers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return uint32(sub_267d020c[uint8(arg1)])
}

function sub_b3370c4e(?) {
    require calldata.size - 4 >= 32
    require arg1 < 18
    return sub_b3370c4e[arg1]
}

function totalSeraphims() {
    return totalSeraphims
}

function sub_d96e2ebd(?) {
    require calldata.size - 4 >= 32
    require arg1 < 24
    return sub_d96e2ebd[arg1]
}

function sub_de06212c(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_de06212c[arg1][2].field_0
    idx = 128
    s = 0
    while sub_de06212c[arg1][2].length + 96 > idx:
        mem[idx + 32] = sub_de06212c[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_de06212c[arg1].field_0, 
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           Array(len=sub_de06212c[arg1][2].length, data=mem[128 len sub_de06212c[arg1][2].length]),
           sub_de06212c[arg1].field_768,
           sub_de06212c[arg1].field_768,
           sub_de06212c[arg1].field_768,
           sub_de06212c[arg1].field_768,
           sub_de06212c[arg1].field_768
}

function creatorAddress() {
    return creatorAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor9[address(arg1)][address(arg2)])
}

function sub_ecb054d0(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_ecb054d0[arg1]
    return sub_ecb054d0[arg1][arg2]
}

function sub_fd0b4304(?) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return uint32(currentTokenNumbers[uint8(arg1)])
}

function _fallback() payable {
    revert
}

function updateMaintenanceMode(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == creatorAddress
    isMaintenanceMode = uint8(arg1)
}

function sub_19b77e52(?) {
    require calldata.size - 4 >= 64
    require bool(stor1[msg.sender]) == 1
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1].field_768 = arg2
}

function sub_3fef5fd9(?) {
    require calldata.size - 4 >= 64
    require bool(stor1[msg.sender]) == 1
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1].field_928 = arg2
}

function sub_ae92c75d(?) {
    require calldata.size - 4 >= 64
    require bool(stor1[msg.sender]) == 1
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1].field_912 = arg2
}

function sub_14ed236f(?) {
    require calldata.size - 4 >= 32
    require bool(stor1[msg.sender]) == 1
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1].field_848 = uint64(block.timestamp)
}

function sub_4df7267f(?) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_ecb054d0[address(arg1)]:
        return 0
    require arg2 < sub_ecb054d0[address(arg1)]
    return sub_ecb054d0[address(arg1)][arg2]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor9[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setLastBattleTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require bool(stor1[msg.sender]) == 1
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1].field_784 = uint64(block.timestamp)
}

function getRandomNumber(uint16 arg1, uint8 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require uint16(arg1 + -arg2 + 1)
    return uint8((arg3 + block.hash(block.number - 1) % uint16(arg1 + -arg2 + 1)) + arg2)
}

function addSERAPHIM(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == creatorAddress
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        totalSeraphims = uint16(totalSeraphims + 1)
}

function removeSERAPHIM(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == creatorAddress
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
        totalSeraphims = uint16(totalSeraphims - 1)
}

function getPrice(uint8 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 24:
        return sub_d96e2ebd[arg1]
    if arg1 <= 42:
        return 0
    if arg1 >= 61:
        return 0
    require uint8(arg1 - 43) < 18
    return sub_b3370c4e[uint8(arg1 - 43)]
}

function withdrawEther() {
    require msg.sender == creatorAddress
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c8cd5c3f(?) {
    require msg.sender == creatorAddress
    idx = 43
    while idx < 60:
        uint256(sub_267d020c[0.125 / idx]) = 200 * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and uint256(sub_267d020c[0.125 / idx])
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor9[stor6[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    require 1 <= balanceOf[msg.sender]
    balanceOf[msg.sender]--
    ownerOf[arg1] = 0
    emit 0x2fddf252: msg.sender, 0, arg1
}

function sub_750c1667(?) {
    require calldata.size - 4 >= 64
    require msg.sender == creatorAddress
    if arg1 < 24:
        sub_d96e2ebd[arg1] = arg2
    else:
        if arg1 > 42:
            if arg1 < 61:
                require uint8(arg1 - 43) < 18
                sub_b3370c4e[uint8(arg1 - 43)] = arg2
}

function sub_53bbfa82(?) {
    require calldata.size - 4 >= 128
    require bool(stor1[msg.sender]) == 1
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1].field_280 = arg2
        sub_de06212c[arg1].field_296 = arg4
        sub_de06212c[arg1].field_312 = arg3
        sub_de06212c[arg1].field_328 = 0
}

function setName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ownerOf[arg1]
    require msg.sender == ownerOf[arg1]
    if arg1 == sub_de06212c[arg1].field_0:
        sub_de06212c[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_c70edb68(?) {
    require msg.sender == creatorAddress
    sub_b3370c4e.length = 2 * 10^16
    stor61 = 6 * 10^16
    stor62 = 4 * 10^16
    stor63 = 25 * 10^12 * 3600
    stor64 = 8 * 10^16
    stor65 = 16 * 10^16
    stor66 = 6 * 10^16
    stor67 = 12 * 10^16
    stor68 = 6 * 10^16
    stor69 = 12 * 10^16
    stor70 = 6 * 10^16
    stor71 = 12 * 10^16
    stor72 = 2 * 10^17
    stor73 = 2 * 10^17
    stor74 = 2 * 10^17
    stor75 = 2 * 10^17
    stor76 = 5 * 10^17
    stor77 = 6 * 10^17
}

function sub_36e74354(?) {
    require msg.sender == creatorAddress
    sub_d96e2ebd.length = 0
    stor37 = 3 * 10^16
    stor38 = 185 * 10^12 * 3600
    stor39 = 8 * 10^17
    stor40 = 10^16
    stor41 = 10^16
    stor42 = 2 * 10^16
    stor43 = 25 * 10^15
    stor44 = 16 * 10^15
    stor45 = 5 * 10^12 * 3600
    stor46 = 14 * 10^15
    stor47 = 2 * 10^16
    stor48 = 24 * 10^15
    stor49 = 28 * 10^15
    stor50 = 4 * 10^16
    stor51 = 5 * 10^16
    stor52 = 53 * 10^15
    stor53 = 6 * 10^16
    stor54 = 65 * 10^15
    stor55 = 7 * 10^16
    stor56 = 75 * 10^15
    stor57 = 8 * 10^16
    stor58 = 85 * 10^15
    stor59 = 25 * 10^12 * 3600
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    sub_ecb054d0[address(arg2)]++
    sub_ecb054d0[address(arg2)][sub_ecb054d0[address(arg2)]] = arg3
    emit 0x2fddf252: arg1, arg2, arg3
}

function sub_5833b608(?) {
    require msg.sender == creatorAddress
    sub_267d020c.length = '2' or Mask(64, 192, '-') or 0 or 0 or Mask(64, 192, sub_267d020c.length) or Mask(64, 192, uint64(sub_267d020c.length)) or address('-') or 0xfa000000000000000000000000 or 4611686018427387904000 or uint64(sub_267d020c.length)
    idx = 6
    while idx < 15:
        uint256(sub_267d020c[0.125 / idx]) = 45 * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and uint256(sub_267d020c[0.125 / idx])
        idx = idx + 1
        continue 
    idx = 15
    while idx < 24:
        uint256(sub_267d020c[0.125 / idx]) = 65 * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and uint256(sub_267d020c[0.125 / idx])
        idx = idx + 1
        continue 
}

function sub_436a6960(?) {
    require calldata.size - 4 >= 32
    mem[896] = sub_de06212c[arg1][2].field_0
    idx = 896
    s = 0
    while sub_de06212c[arg1][2].length + 864 > idx:
        mem[idx + 32] = sub_de06212c[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    return sub_de06212c[arg1].field_256, 
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           sub_de06212c[arg1].field_256,
           Array(len=sub_de06212c[arg1][2].length, data=mem[896 len sub_de06212c[arg1][2].length]),
           sub_de06212c[arg1].field_768,
           sub_de06212c[arg1].field_768,
           sub_de06212c[arg1].field_768,
           ownerOf[arg1],
           sub_de06212c[arg1].field_768
}

function sub_3194878d(?) {
    require msg.sender == creatorAddress
    uint16(stor30.field_160) = 5000
    uint16(stor30.field_176) = 0
    uint16(stor30.field_192) = 5000
    uint16(stor30.field_208) = 0
    uint16(stor30.field_224) = 5000
    uint16(stor30.field_240) = 0
    uint16(stor31.field_0) = 5000
    uint16(stor31.field_16) = 0
    uint16(stor31.field_32) = 500
    uint16(stor31.field_48) = 0
    uint16(stor31.field_64) = 500
    uint16(stor31.field_80) = 0
    uint8(stor31.field_96) = 200
    stor31.field_104 % 16777216 = 0
    stor31.field_256 % 1 = 0
    stor31.field_256 % 1 = 0
    stor31.field_256 % 1 = 0
    uint8(stor31.field_128) = 200
    stor31.field_136 % 16777216 = 0
    uint8(stor31.field_160) = 200
    stor31.field_168 % 16777216 = 0
    uint8(stor31.field_192) = 100
    stor31.field_200 % 16777216 = 0
    uint8(stor31.field_224) = 100
    stor31.field_232 % 16777216 = 0
    uint8(stor32.field_0) = 50
    stor32.field_8 % 16777216 = 0
}

function sub_3278963c(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    require 1 <= balanceOf[msg.sender]
    balanceOf[msg.sender]--
    ownerOf[arg1] = 0
    idx = 896
    s = 0
    while sub_de06212c[arg1][2].length + 864 > idx:
        mem[idx + 32] = sub_de06212c[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    require sub_de06212c[arg1].field_256 < 100
    if uint32(currentTokenNumbers[uint8(stor79[arg1].field_256)]) >= 1:
        require sub_de06212c[arg1].field_256 < 100
        uint256(currentTokenNumbers[stor79[arg1].field_259]) = uint32(uint32(currentTokenNumbers[uint8(stor79[arg1].field_256)]) - 1) * 256^(4 * sub_de06212c[arg1].field_256 % 8) or !(test266151307() * 256^(4 * sub_de06212c[arg1].field_256 % 8)) and uint256(currentTokenNumbers[stor79[arg1].field_259])
    emit 0x2fddf252: msg.sender, 0, arg1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    sub_ecb054d0[address(arg2)]++
    sub_ecb054d0[address(arg2)][sub_ecb054d0[address(arg2)]] = arg3
    emit 0x2fddf252: arg1, arg2, arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function sub_12e23234(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0, 0, 1
    if 1 == arg1:
        return 0, 1, 0
    if 2 == arg1:
        return 1, 0, 1
    if 3 == arg1:
        return 1, 1, 0
    if 4 == arg1:
        return 1, 0, 0
    if 5 == arg1:
        return 0, 1, 0
    if 6 == arg1:
        return 1, 0, 1
    if arg1 != 7:
        if 8 == arg1:
            return 1, 1, 0
        if 9 == arg1:
            return 0, 0, 1
        if 10 == arg1:
            return 1, 0, 0
        if 11 == arg1:
            return 0, 1, 0
        if 12 == arg1:
            return 1, 0, 1
        if arg1 != 13:
            if 14 == arg1:
                return 1, 1, 0
            if 15 == arg1:
                return 0, 0, 1
            if 16 == arg1:
                return 1, 0, 0
            if 17 == arg1:
                return 0, 1, 0
            if 18 == arg1:
                return 1, 0, 1
            if arg1 != 19:
                if 20 == arg1:
                    return 1, 1, 0
                if 21 == arg1:
                    return 0, 0, 1
                if 22 == arg1:
                    return 1, 0, 0
                if arg1 != 23:
                    return 0
    return 0, 1, 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    sub_ecb054d0[address(arg2)]++
    sub_ecb054d0[address(arg2)][sub_ecb054d0[address(arg2)]] = arg3
    emit 0x2fddf252: arg1, arg2, arg3
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

function sub_ab5c83b1(?) {
    require calldata.size - 4 >= 288
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    require bool(stor1[msg.sender]) == 1
    require arg2 < 100
    if uint32(currentTokenNumbers[uint8(arg2)]) >= uint32(sub_267d020c[uint8(arg2)]):
        require arg2 < 100
        require not uint32(sub_267d020c[uint8(arg2)])
    require arg2 < 100
    sub_de06212c[stor4].field_264 = arg3
    sub_de06212c[stor4].field_256 = arg2
    sub_de06212c[stor4].field_280 = arg4
    sub_de06212c[stor4].field_296 = arg5
    sub_de06212c[stor4].field_312 = arg6
    sub_de06212c[stor4][2][].field_0 = Array(len=arg7.length, data=arg7[all])
    sub_de06212c[stor4].field_768 = arg8
    sub_de06212c[stor4].field_0 = totalTokens
    sub_de06212c[stor4].field_768 = arg8
    sub_de06212c[stor4].field_784 = uint64(block.timestamp)
    sub_de06212c[stor4].field_848 = uint64(block.timestamp)
    sub_de06212c[stor4].field_912 = 0
    sub_de06212c[stor4].field_928 = arg9
    require arg1
    require not ownerOf[stor4]
    ownerOf[stor4] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    sub_ecb054d0[address(arg1)]++
    sub_ecb054d0[address(arg1)][sub_ecb054d0[address(arg1)]] = totalTokens
    emit 0x2fddf252: 0, arg1, totalTokens
    totalTokens++
    require arg2 < 100
    uint256(currentTokenNumbers[uint8(arg2) / 8]) = uint32(uint32(currentTokenNumbers[uint8(arg2)]) + 1) * 256^(4 * arg2 % 8) or uint256(currentTokenNumbers[uint8(arg2) / 8]) and !(test266151307() * 256^(4 * arg2 % 8))
}

function sub_1bc595f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 100
    require uint32(sub_267d020c[uint8(arg1)]) > uint32(currentTokenNumbers[uint8(arg1)])
    require uint8(arg1 - 43) < 18
    require msg.value >= sub_b3370c4e[uint8(arg1 - 43)]
    require arg1 >= 43
    require arg1 <= 60
    require bool(stor1[msg.sender]) == 1
    require arg1 < 100
    if uint32(currentTokenNumbers[uint8(arg1)]) >= uint32(sub_267d020c[uint8(arg1)]):
        require arg1 < 100
        require not uint32(sub_267d020c[uint8(arg1)])
    require arg1 < 100
    sub_de06212c[stor4].field_264 = 0
    sub_de06212c[stor4].field_256 = arg1
    sub_de06212c[stor4].field_280 = 0
    sub_de06212c[stor4].field_296 = 0
    sub_de06212c[stor4].field_312 = 0
    sub_de06212c[stor4].field_512 = 0
    sub_de06212c[stor4].field_513 = 0
    sub_de06212c[stor4].field_520 = mem[128 len 31]
    idx = 0
    while sub_de06212c[stor4][2].length + 31 / 32 > idx:
        sub_de06212c[stor4][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_de06212c[stor4].field_768 = 0
    sub_de06212c[stor4].field_0 = totalTokens
    sub_de06212c[stor4].field_768 = 0
    sub_de06212c[stor4].field_784 = uint64(block.timestamp)
    sub_de06212c[stor4].field_848 = uint64(block.timestamp)
    sub_de06212c[stor4].field_912 = 0
    require msg.sender
    require not ownerOf[stor4]
    ownerOf[stor4] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    sub_ecb054d0[address(msg.sender)]++
    sub_ecb054d0[address(msg.sender)][sub_ecb054d0[address(msg.sender)]] = totalTokens
    emit 0x2fddf252: 0, msg.sender, totalTokens
    totalTokens++
    require arg1 < 100
    uint256(currentTokenNumbers[uint8(arg1) / 8]) = uint32(uint32(currentTokenNumbers[uint8(arg1)]) + 1) * 256^(4 * arg1 % 8) or uint256(currentTokenNumbers[uint8(arg1) / 8]) and !(test266151307() * 256^(4 * arg1 % 8))
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 33
    mem[128 len 33] = 0xfe68747470733a2f2f7777772e616e67656c626174746c65732e636f6d2f555249
    if not arg1:
        mem[192] = 1
        mem[224] = '0'
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 34
        mem[384 len 34] = code.data[14404 len 34]
        idx = 0
        s = 0
        while idx < 33:
            require idx < 33
            require s < 34
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 33
        while idx < 1:
            require idx < 1
            require s < 34
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 34
        while idx < 0:
            require idx < 0
            require s < 34
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 34
        while idx < 0:
            require idx < 0
            require s < 34
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 34
        while idx < 0:
            require idx < 0
            require s < 34
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=34, data=mem[384], mem[446 len 2])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[192]
            mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _261 = mem[64]
        mem[64] = mem[64] + 32
        mem[_261] = 0
        _262 = mem[64]
        mem[64] = mem[64] + 32
        mem[_262] = 0
        _263 = mem[64]
        mem[64] = mem[64] + 32
        mem[_263] = 0
        _272 = mem[192]
        _273 = mem[96]
        _274 = mem[64]
        mem[mem[64]] = mem[96] + mem[192]
        mem[64] = mem[64] + floor32(_273 + _272 + 31) + 32
        if not _273 + _272:
            _423 = mem[96]
            idx = 0
            s = 0
            while idx < _423:
                require idx < mem[96]
                require s < mem[_274]
                mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _569 = mem[192]
            idx = 0
            s = _423
            while idx < _569:
                require idx < mem[192]
                require s < mem[_274]
                mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
                _569 = mem[192]
                idx = idx + 1
                s = s + 1
                continue 
            _691 = mem[_261]
            idx = 0
            s = _423 + _569
            while idx < _691:
                require idx < mem[_261]
                require s < mem[_274]
                mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_261'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_261'), ('var', 0)), 32))), 0) - 256
                _691 = mem[_261]
                idx = idx + 1
                s = s + 1
                continue 
            _789 = mem[_262]
            idx = 0
            s = _423 + _569 + _691
            while idx < _789:
                require idx < mem[_262]
                require s < mem[_274]
                mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_262'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_262'), ('var', 0)), 32))), 0) - 256
                _789 = mem[_262]
                idx = idx + 1
                s = s + 1
                continue 
            _857 = mem[_263]
            idx = 0
            s = _423 + _569 + _691 + _789
            while idx < _857:
                require idx < mem[_263]
                require s < mem[_274]
                mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) - 256
                _857 = mem[_263]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_274]
            _875 = mem[_274]
            mem[mem[64] + 64 len ceil32(mem[_274])] = mem[_274 + 32 len ceil32(mem[_274])]
            if not _875 % 32:
                return 32, mem[mem[64] + 32 len _875 + 32]
            mem[floor32(_875) + mem[64] + 64] = mem[floor32(_875) + mem[64] + -(_875 % 32) + 96 len _875 % 32]
            return 32, mem[mem[64] + 32 len floor32(_875) + 64]
        mem[_274 + 32 len _273 + _272] = code.data[14404 len _273 + _272]
        _424 = mem[96]
        idx = 0
        s = 0
        while idx < _424:
            require idx < mem[96]
            require s < mem[_274]
            mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _570 = mem[192]
        idx = 0
        s = _424
        while idx < _570:
            require idx < mem[192]
            require s < mem[_274]
            mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _570 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _692 = mem[_261]
        idx = 0
        s = _424 + _570
        while idx < _692:
            require idx < mem[_261]
            require s < mem[_274]
            mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_261'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_261'), ('var', 0)), 32))), 0) - 256
            _692 = mem[_261]
            idx = idx + 1
            s = s + 1
            continue 
        _790 = mem[_262]
        idx = 0
        s = _424 + _570 + _692
        while idx < _790:
            require idx < mem[_262]
            require s < mem[_274]
            mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_262'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_262'), ('var', 0)), 32))), 0) - 256
            _790 = mem[_262]
            idx = idx + 1
            s = s + 1
            continue 
        _858 = mem[_263]
        idx = 0
        s = _424 + _570 + _692 + _790
        while idx < _858:
            require idx < mem[_263]
            require s < mem[_274]
            mem[_274 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_263'), ('var', 0)), 32))), 0) - 256
            _858 = mem[_263]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_274]
        _878 = mem[_274]
        mem[mem[64] + 64 len ceil32(mem[_274])] = mem[_274 + 32 len ceil32(mem[_274])]
        if not _878 % 32:
            return 32, mem[mem[64] + 32 len _878 + 32]
        mem[floor32(_878) + mem[64] + 64] = mem[floor32(_878) + mem[64] + -(_878 % 32) + 96 len _878 % 32]
        return 32, mem[mem[64] + 32 len floor32(_878) + 64]
    mem[224 len s] = code.data[14404 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[192]
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _264 = mem[64]
    mem[64] = mem[64] + 32
    mem[_264] = 0
    _265 = mem[64]
    mem[64] = mem[64] + 32
    mem[_265] = 0
    _266 = mem[64]
    mem[64] = mem[64] + 32
    mem[_266] = 0
    _278 = mem[192]
    _279 = mem[96]
    _280 = mem[64]
    mem[mem[64]] = mem[96] + mem[192]
    mem[64] = mem[64] + floor32(_279 + _278 + 31) + 32
    if not _279 + _278:
        _425 = mem[96]
        idx = 0
        s = 0
        while idx < _425:
            require idx < mem[96]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _571 = mem[192]
        idx = 0
        s = _425
        while idx < _571:
            require idx < mem[192]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _571 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _693 = mem[_264]
        idx = 0
        s = _425 + _571
        while idx < _693:
            require idx < mem[_264]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) - 256
            _693 = mem[_264]
            idx = idx + 1
            s = s + 1
            continue 
        _791 = mem[_265]
        idx = 0
        s = _425 + _571 + _693
        while idx < _791:
            require idx < mem[_265]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) - 256
            _791 = mem[_265]
            idx = idx + 1
            s = s + 1
            continue 
        _859 = mem[_266]
        idx = 0
        s = _425 + _571 + _693 + _791
        while idx < _859:
            require idx < mem[_266]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) - 256
            _859 = mem[_266]
            idx = idx + 1
            s = s + 1
            continue 
        _879 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_280]
        _881 = mem[_280]
        mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
        if not _881 % 32:
            return 32, mem[mem[64] + 32 len _881 + 32]
        mem[floor32(_881) + mem[64] + 64] = mem[floor32(_881) + mem[64] + -(_881 % 32) + 96 len _881 % 32]
        return memory
          from mem[64]
           len floor32(_881) + _879 + -mem[64] + 96
    mem[_280 + 32 len _279 + _278] = code.data[14404 len _279 + _278]
    _426 = mem[96]
    idx = 0
    s = 0
    while idx < _426:
        require idx < mem[96]
        require s < mem[_280]
        mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _572 = mem[192]
    idx = 0
    s = _426
    while idx < _572:
        require idx < mem[192]
        require s < mem[_280]
        mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
        _572 = mem[192]
        idx = idx + 1
        s = s + 1
        continue 
    _694 = mem[_264]
    idx = 0
    s = _426 + _572
    while idx < _694:
        require idx < mem[_264]
        require s < mem[_280]
        mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_264'), ('var', 0)), 32))), 0) - 256
        _694 = mem[_264]
        idx = idx + 1
        s = s + 1
        continue 
    _792 = mem[_265]
    idx = 0
    s = _426 + _572 + _694
    while idx < _792:
        require idx < mem[_265]
        require s < mem[_280]
        mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_265'), ('var', 0)), 32))), 0) - 256
        _792 = mem[_265]
        idx = idx + 1
        s = s + 1
        continue 
    _860 = mem[_266]
    idx = 0
    s = _426 + _572 + _694 + _792
    while idx < _860:
        require idx < mem[_266]
        require s < mem[_280]
        mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_266'), ('var', 0)), 32))), 0) - 256
        _860 = mem[_266]
        idx = idx + 1
        s = s + 1
        continue 
    _882 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_280]
    _884 = mem[_280]
    mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
    if not _884 % 32:
        return 32, mem[mem[64] + 32 len _884 + 32]
    mem[floor32(_884) + mem[64] + 64] = mem[floor32(_884) + mem[64] + -(_884 % 32) + 96 len _884 % 32]
    return memory
      from mem[64]
       len floor32(_884) + _882 + -mem[64] + 96
}



}
