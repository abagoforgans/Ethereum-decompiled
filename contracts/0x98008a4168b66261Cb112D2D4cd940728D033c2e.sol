contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint64 stor6; offset 160

function _fallback() payable {
    stor2 = 0
    stor6 = 0
    stor0 = msg.sender
    return code.data[130 len 11156]
}



// =====================  Runtime code  =====================


const name = 'DragonBit'

const symbol = 'DB'


address contractOwner;
array of struct dragon;
uint256 stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address dragonIndexToApproved;
uint64 stor6; offset 160
address erc721MetadataAddress;

function totalSupply() {
    return dragon.length
}

function dragonIndexToOwner(uint256 arg1) {
    return ownerOf[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function dragonIndexToApproved(uint256 arg1) {
    return dragonIndexToApproved[arg1]
}

function erc721Metadata() {
    return erc721MetadataAddress
}

function contractOwner() {
    return contractOwner
}

function getDragon(uint256 arg1) {
    require arg1 < dragon.length
    return dragon[arg1].field_0, 
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_0,
           dragon[arg1].field_256,
           dragon[arg1].field_512
}

function _fallback() payable {
    revert
}

function setMetadataAddress(address arg1) {
    require msg.sender == contractOwner
    erc721MetadataAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == contractOwner
    if arg1:
        contractOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    dragonIndexToApproved[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function random(uint64 arg1, uint8 arg2) {
    stor6 = uint64(sha3(sha3(block.hash(block.number - arg2), stor6), block.timestamp))
    require arg1
    return uint64(stor6 % arg1)
}

function withdrawBalance() {
    require msg.sender == contractOwner
    call contractOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyDragon(uint256 arg1) payable {
    require arg1 < dragon.length
    require not ownerOf[arg1]
    require msg.value >= dragon[arg1].field_256
    emit Birth(msg.sender, arg1);
    stor2--
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(0, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require ownerOf[arg2] == msg.sender
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        dragonIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require dragonIndexToApproved[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        dragonIndexToApproved[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('supportsInterface(bytes4)')):
        return True
    return (Mask(32, 224, arg1) == Mask(32, 224, sha3('name()') xor sha3('symbol()') xor sha3('totalSupply()') xor sha3('balanceOf(address)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('transfer(address,uint256)') xor sha3('transferFrom(address,address,uin', 't256)') xor sha3('tokensOfOwner(address)') xor sha3('tokenMetadata(uint256,string)')))
}

function tokensOnSale() {
    if not stor2:
        return ''
    idx = 0
    s = 0
    while idx < dragon.length:
        mem[0] = idx
        mem[32] = 3
        if ownerOf[idx]:
            idx = idx + 1
            s = s
            continue 
        require s < stor2
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor2) + 256 len floor32(stor2)] = mem[192 len floor32(stor2)]
    return Array(len=stor2, data=mem[192 len floor32(stor2)], mem[(32 * stor2) + floor32(stor2) + 256 len (32 * stor2) - floor32(stor2)]), 
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    idx = 0
    s = 0
    while idx < dragon.length:
        mem[0] = idx
        mem[32] = 3
        if ownerOf[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 256 len floor32(balanceOf[address(arg1)])] = mem[192 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[192 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 256 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function tokenMetadata(uint256 arg1, string arg2) {
    require erc721MetadataAddress
    mem[356 len arg2.length] = arg2[all]
    require ext_code.size(erc721MetadataAddress)
    call erc721MetadataAddress.getMetadata(uint256 rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    mem[256 len 160] = ext_call.return_data[0 len 160]
    require ext_call.success
    mem[416] = 0
    mem[448] = 0
    _msize = max(124, arg2.length)
    mem[_msize + 356] = ext_call.return_data[128]
    mem[(_msize + 356) + 32 len floor32(ext_call.return_data[128])] = mem[256 len floor32(ext_call.return_data[128])]
    mem[(_msize + 356) + floor32(ext_call.return_data[128]) + -(ext_call.return_data[128] % 32) + 64 len ext_call.return_data[128] % 32] = mem[floor32(ext_call.return_data[128]) + -(ext_call.return_data[128] % 32) + 288 len ext_call.return_data[128] % 32]
    return Array(len=ext_call.return_data[128], data=mem[(_msize + 356) + 32 len ext_call.return_data[128]])
}

function tokensForFight() {
    if not dragon.length - stor2 - balanceOf[address(msg.sender)]:
        return ''
    mem[160] = dragon.length - stor2 - balanceOf[address(msg.sender)]
    idx = 0
    s = 0
    while idx < dragon.length:
        mem[0] = idx
        mem[32] = 3
        if not ownerOf[idx]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 3
        if ownerOf[idx] == msg.sender:
            idx = idx + 1
            s = s
            continue 
        require s < dragon.length - stor2 - balanceOf[address(msg.sender)]
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * dragon.length - stor2 - balanceOf[address(msg.sender)]) + 192] = 32
    mem[(32 * dragon.length - stor2 - balanceOf[address(msg.sender)]) + 224] = dragon.length - stor2 - balanceOf[address(msg.sender)]
    mem[(32 * dragon.length - stor2 - balanceOf[address(msg.sender)]) + 256 len floor32(dragon.length - stor2 - balanceOf[address(msg.sender)])] = mem[192 len floor32(dragon.length - stor2 - balanceOf[address(msg.sender)])]
    return 32, mem[(32 * dragon.length - stor2 - balanceOf[address(msg.sender)]) + 224 len (32 * dragon.length - stor2 - balanceOf[address(msg.sender)]) + 32], 
}

function createDragon(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5, uint8 arg6, uint8 arg7, uint8 arg8, uint16 arg9, uint16 arg10) {
    require msg.sender == contractOwner
    dragon.length++
    if not dragon.length <= dragon.length + 1:
        idx = (3 * dragon.length) + 3
        while 3 * dragon.length > idx:
            dragon[idx].field_0 = 0
            dragon[idx].field_8 = 0
            dragon[idx].field_16 = 0
            dragon[idx].field_24 = 0
            dragon[idx].field_32 = 0
            dragon[idx].field_40 = 0
            dragon[idx].field_48 = 0
            dragon[idx].field_56 = 0
            dragon[idx].field_64 = 0
            dragon[idx].field_256 = 0
            dragon[idx].field_512 = 0
            idx = idx + 3
            continue 
    dragon[dragon.length].field_0 = arg1
    dragon[dragon.length].field_8 = arg2
    dragon[dragon.length].field_16 = arg3
    dragon[dragon.length].field_24 = arg4
    dragon[dragon.length].field_32 = arg5
    dragon[dragon.length].field_40 = arg6
    dragon[dragon.length].field_48 = arg7
    dragon[dragon.length].field_56 = arg8
    dragon[dragon.length].field_64 = arg9
    dragon[dragon.length].field_256 = arg10
    dragon[dragon.length].field_272 = 0
    dragon[dragon.length].field_512 = 0
    require dragon.length == uint32(dragon.length)
    stor2++
    return dragon.length
}

function fight(uint256 arg1, uint256 arg2) {
    require ownerOf[arg1] == msg.sender
    require ownerOf[arg2] != msg.sender
    require ownerOf[arg2]
    require arg1 < dragon.length
    require arg2 < dragon.length
    stor6 = uint64(sha3(sha3(block.hash(block.number - 1), stor6), block.timestamp))
    require dragon[arg1].field_0
    stor6 = uint64(sha3(sha3(block.hash(block.number - 1), stor6), block.timestamp))
    require dragon[arg2].field_8
    stor6 = uint64(sha3(sha3(block.hash(block.number - 2), stor6), block.timestamp))
    require dragon[arg1].field_8
    stor6 = uint64(sha3(sha3(block.hash(block.number - 2), stor6), block.timestamp))
    require dragon[arg2].field_0
    stor6 = uint64(sha3(sha3(block.hash(block.number - 3), stor6), block.timestamp))
    require dragon[arg1].field_0
    stor6 = uint64(sha3(sha3(block.hash(block.number - 3), stor6), block.timestamp))
    require dragon[arg2].field_8
    stor6 = uint64(sha3(sha3(block.hash(block.number - 4), stor6), block.timestamp))
    require dragon[arg1].field_8
    stor6 = uint64(sha3(sha3(block.hash(block.number - 4), stor6), block.timestamp))
    require dragon[arg2].field_0
    emit Fight(arg1, arg2, uint64(stor6 % dragon[arg1].field_0) > uint64(stor6 % dragon[arg2].field_8), uint64(stor6 % dragon[arg1].field_8) > uint64(stor6 % dragon[arg2].field_0));
    return uint64(stor6 % dragon[arg1].field_0) > uint64(stor6 % dragon[arg2].field_8), 
           uint64(stor6 % dragon[arg1].field_8) > uint64(stor6 % dragon[arg2].field_0),
           uint64(stor6 % dragon[arg1].field_0) > uint64(stor6 % dragon[arg2].field_8),
           uint64(stor6 % dragon[arg1].field_8) > uint64(stor6 % dragon[arg2].field_0)
}

function createTestData() {
    require msg.sender == contractOwner
    dragon.length++
    if not dragon.length <= dragon.length + 1:
        idx = (3 * dragon.length) + 3
        while 3 * dragon.length > idx:
            dragon[idx].field_0 = 0
            dragon[idx].field_8 = 0
            dragon[idx].field_16 = 0
            dragon[idx].field_24 = 0
            dragon[idx].field_32 = 0
            dragon[idx].field_40 = 0
            dragon[idx].field_48 = 0
            dragon[idx].field_56 = 0
            dragon[idx].field_64 = 0
            dragon[idx].field_256 = 0
            dragon[idx].field_512 = 0
            idx = idx + 3
            continue 
    dragon[dragon.length].field_0 = 1
    dragon[dragon.length].field_8 = 2
    dragon[dragon.length].field_16 = 1
    dragon[dragon.length].field_24 = 1
    dragon[dragon.length].field_32 = 1
    dragon[dragon.length].field_40 = 1
    dragon[dragon.length].field_48 = 1
    dragon[dragon.length].field_56 = 1
    dragon[dragon.length].field_64 = 1
    dragon[dragon.length].field_72 = 0
    dragon[dragon.length].field_256 = 10^15
    dragon[dragon.length].field_512 = 0
    require dragon.length == uint32(dragon.length)
    stor2++
    balanceOf[address(msg.sender)]++
    ownerOf[stor1.length] = msg.sender
    emit Transfer(0, msg.sender, dragon.length);
    stor2--
    dragon.length++
    if not dragon.length <= dragon.length + 1:
        idx = (3 * dragon.length) + 3
        while 3 * dragon.length > idx:
            dragon[idx].field_0 = 0
            dragon[idx].field_8 = 0
            dragon[idx].field_16 = 0
            dragon[idx].field_24 = 0
            dragon[idx].field_32 = 0
            dragon[idx].field_40 = 0
            dragon[idx].field_48 = 0
            dragon[idx].field_56 = 0
            dragon[idx].field_64 = 0
            dragon[idx].field_256 = 0
            dragon[idx].field_512 = 0
            idx = idx + 3
            continue 
    dragon[dragon.length].field_0 = 2
    dragon[dragon.length].field_8 = 6
    dragon[dragon.length].field_16 = 2
    dragon[dragon.length].field_24 = 2
    dragon[dragon.length].field_32 = 2
    dragon[dragon.length].field_40 = 2
    dragon[dragon.length].field_48 = 2
    dragon[dragon.length].field_56 = 2
    dragon[dragon.length].field_64 = 2
    dragon[dragon.length].field_72 = 0
    dragon[dragon.length].field_256 = 10^15
    dragon[dragon.length].field_512 = 0
    require dragon.length == uint32(dragon.length)
    stor2++
    balanceOf[address(msg.sender)]++
    ownerOf[stor1.length] = msg.sender
    emit Transfer(0, msg.sender, dragon.length);
    stor2--
    dragon.length++
    if not dragon.length <= dragon.length + 1:
        idx = (3 * dragon.length) + 3
        while 3 * dragon.length > idx:
            dragon[idx].field_0 = 0
            dragon[idx].field_8 = 0
            dragon[idx].field_16 = 0
            dragon[idx].field_24 = 0
            dragon[idx].field_32 = 0
            dragon[idx].field_40 = 0
            dragon[idx].field_48 = 0
            dragon[idx].field_56 = 0
            dragon[idx].field_64 = 0
            dragon[idx].field_256 = 0
            dragon[idx].field_512 = 0
            idx = idx + 3
            continue 
    dragon[dragon.length].field_0 = 3
    dragon[dragon.length].field_8 = 2
    dragon[dragon.length].field_16 = 3
    dragon[dragon.length].field_24 = 3
    dragon[dragon.length].field_32 = 3
    dragon[dragon.length].field_40 = 1
    dragon[dragon.length].field_48 = 3
    dragon[dragon.length].field_56 = 3
    dragon[dragon.length].field_64 = 3
    dragon[dragon.length].field_72 = 0
    dragon[dragon.length].field_256 = 10^15
    dragon[dragon.length].field_512 = 0
    require dragon.length == uint32(dragon.length)
    stor2++
    dragon.length++
    if not dragon.length <= dragon.length + 1:
        idx = (3 * dragon.length) + 3
        while 3 * dragon.length > idx:
            dragon[idx].field_0 = 0
            dragon[idx].field_8 = 0
            dragon[idx].field_16 = 0
            dragon[idx].field_24 = 0
            dragon[idx].field_32 = 0
            dragon[idx].field_40 = 0
            dragon[idx].field_48 = 0
            dragon[idx].field_56 = 0
            dragon[idx].field_64 = 0
            dragon[idx].field_256 = 0
            dragon[idx].field_512 = 0
            idx = idx + 3
            continue 
    dragon[dragon.length].field_0 = 4
    dragon[dragon.length].field_8 = 4
    dragon[dragon.length].field_16 = 4
    dragon[dragon.length].field_24 = 4
    dragon[dragon.length].field_32 = 2
    dragon[dragon.length].field_40 = 2
    dragon[dragon.length].field_48 = 2
    dragon[dragon.length].field_56 = 4
    dragon[dragon.length].field_64 = 4
    dragon[dragon.length].field_72 = 0
    dragon[dragon.length].field_256 = 10^15
    dragon[dragon.length].field_512 = 0
    require dragon.length == uint32(dragon.length)
    stor2++
}



}
