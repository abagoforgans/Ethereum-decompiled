contract main {




// =====================  Runtime code  =====================


const name = 'Bitview'

const symbol = 'BV'


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
address sub_598844dcAddress;
uint256 sub_9d1288fb;
uint32 stor5;
uint256 sub_c71e261f;
mapping of address sub_96b5d992;
mapping of uint256 balanceOf;
mapping of address sub_fdb33429;
array of uint256 sub_317676bf;
address erc721MetadataAddress;
address newContractAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function totalSupply() {
    return uint256(sub_c71e261f)
}

function sub_317676bf(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_317676bf[arg1]
    return sub_317676bf[arg1][arg2]
}

function sub_598844dc(?) {
    return sub_598844dcAddress
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_96b5d992[arg1]
    return sub_96b5d992[arg1]
}

function newContractAddress() {
    return newContractAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_96b5d992(?) {
    require calldata.size - 4 >= 32
    return sub_96b5d992[arg1]
}

function sub_9d1288fb(?) {
    return sub_9d1288fb
}

function cooAddress() {
    return cooAddress
}

function erc721Metadata() {
    return erc721MetadataAddress
}

function sub_c71e261f(?) {
    return uint256(sub_c71e261f)
}

function sub_cdd22c93(?) {
    require calldata.size - 4 >= 32
    return sub_317676bf[arg1]
}

function ownershipTokenCount(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_fdb33429(?) {
    require calldata.size - 4 >= 32
    return sub_fdb33429[arg1]
}

function _fallback() payable {
    revert
}

function sub_807fa82d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == cfoAddress
    sub_9d1288fb = arg1
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function setMetadataAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    erc721MetadataAddress = arg1
}

function sub_474b951e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    sub_598844dcAddress = arg1
}

function setNewAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
}

function sub_3ffe60c0(?) {
    require calldata.size - 4 >= 64
    require sub_598844dcAddress
    require msg.sender == sub_598844dcAddress
    sub_317676bf[arg1]++
    sub_317676bf[arg1][sub_317676bf[arg1]] = arg2
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    require not newContractAddress
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor2.field_160)
    require sub_96b5d992[arg2] == msg.sender
    sub_fdb33429[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    call cfoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_97ee9e76(?) payable {
    require msg.value == sub_9d1288fb
    require uint256(sub_c71e261f) == uint32(stor5)
    uint256(sub_c71e261f)++
    emit 0x982bb66d: msg.sender, uint256(sub_c71e261f)
    balanceOf[address(msg.sender)]++
    sub_96b5d992[uint256(stor5)] = msg.sender
    emit 0x70a29548: 0, msg.sender, uint256(sub_c71e261f)
    return uint256(sub_c71e261f)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor2.field_160)
    require arg2
    require arg2 != this.address
    require sub_fdb33429[arg3] == msg.sender
    require sub_96b5d992[arg3] == arg1
    balanceOf[address(arg2)]++
    sub_96b5d992[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        sub_fdb33429[arg3] = 0
    emit 0x70a29548: address(arg1), address(arg2), arg3
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('supportsInterface(bytes4)')):
        return True
    if Mask(32, 224, arg1) == Mask(32, 224, sha3('totalSupply()') xor sha3('balanceOf(address)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('safeTransferFrom(address,address', ',uint256)') xor sha3('tokensOfOwner(address)')):
        return True
    return (Mask(32, 224, arg1) == Mask(32, 224, sha3('name()') xor sha3('symbol()')))
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[9210 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= uint256(sub_c71e261f):
        mem[0] = idx
        mem[32] = 6
        if sub_96b5d992[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}



}
