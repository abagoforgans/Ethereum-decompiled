contract main {




// =====================  Runtime code  =====================


const name = 'Bitview'

const symbol = 'BV'


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
uint256 sub_9d1288fb;
uint32 stor4;
uint256 sub_c71e261f;
mapping of address sub_96b5d992;
mapping of uint256 balanceOf;
mapping of address sub_fdb33429;
array of uint256 sub_317676bf;
address erc721MetadataAddress;
array of uint256 sub_990581b6;
mapping of address sub_78669280;
mapping of uint256 sub_fac9c51f;
array of uint256 sub_5501d42d;
mapping of uint256 sub_46cb96fa;
array of uint8 stor15;
mapping of address sub_fffb1479;
mapping of uint256 sub_3108e4d7;
mapping of uint256 sub_b3557522;
uint256 sub_ad842028;
array of uint256 stor20;
mapping of address sub_f0104323;
mapping of uint256 sub_1b57cd44;
array of uint256 sub_ca083be2;
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

function sub_1b57cd44(?) {
    require calldata.size - 4 >= 32
    return sub_1b57cd44[arg1]
}

function sub_3108e4d7(?) {
    require calldata.size - 4 >= 32
    return sub_3108e4d7[arg1]
}

function sub_317676bf(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_317676bf[arg1]
    return sub_317676bf[arg1][arg2]
}

function sub_46cb96fa(?) {
    require calldata.size - 4 >= 32
    return sub_46cb96fa[arg1]
}

function sub_5501d42d(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_5501d42d[arg1]
    return sub_5501d42d[arg1][arg2]
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

function sub_78669280(?) {
    require calldata.size - 4 >= 32
    return sub_78669280[arg1]
}

function sub_96b5d992(?) {
    require calldata.size - 4 >= 32
    return sub_96b5d992[arg1]
}

function sub_990581b6(?) {
    return uint256(sub_990581b6[arg1][0 len sub_990581b6[arg1].length])
}

function sub_9d1288fb(?) {
    return sub_9d1288fb
}

function sub_9db797f0(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor15.length
    return bool(uint8(stor15[arg1]))
}

function sub_ad842028(?) {
    return sub_ad842028
}

function cooAddress() {
    return cooAddress
}

function sub_b3557522(?) {
    require calldata.size - 4 >= 32
    return sub_b3557522[arg1]
}

function erc721Metadata() {
    return erc721MetadataAddress
}

function sub_c71e261f(?) {
    return uint256(sub_c71e261f)
}

function sub_ca083be2(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_ca083be2[arg1]
    return sub_ca083be2[arg1][arg2]
}

function sub_cdd22c93(?) {
    require calldata.size - 4 >= 32
    return sub_317676bf[arg1]
}

function ownershipTokenCount(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_e52ab74b(?) {
    require calldata.size - 4 >= 32
    return sub_5501d42d[arg1]
}

function sub_f0104323(?) {
    require calldata.size - 4 >= 32
    return sub_f0104323[arg1]
}

function sub_fac9c51f(?) {
    require calldata.size - 4 >= 32
    return sub_fac9c51f[arg1]
}

function sub_fdb33429(?) {
    require calldata.size - 4 >= 32
    return sub_fdb33429[arg1]
}

function sub_fffb1479(?) {
    require calldata.size - 4 >= 32
    return sub_fffb1479[arg1]
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
    require uint256(sub_c71e261f) == uint32(stor4)
    uint256(sub_c71e261f)++
    emit 0x982bb66d: msg.sender, uint256(sub_c71e261f)
    balanceOf[address(msg.sender)]++
    sub_96b5d992[uint256(stor4)] = msg.sender
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

function sub_85ac7882(?) {
    require calldata.size - 4 >= 192
    require sub_96b5d992[arg1] != msg.sender
    if arg2 > 0:
        if sub_b3557522[arg5][arg6] == arg2:
            revert with 0, 'Signature Already Used'
    signer = erecover(sha3(arg1), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == sub_96b5d992[arg1]
    require sub_78669280[arg2]
    require sub_78669280[arg2] != msg.sender
    stor15.length++
    uint8(stor15[stor15.length]) = uint8(arg3)
    require stor15.length == uint32(stor15.length)
    emit 0xa10f25ef: msg.sender, stor15.length
    sub_fffb1479[stor15.length] = msg.sender
    sub_5501d42d[arg2]++
    sub_5501d42d[arg2][sub_5501d42d[arg2]] = stor15.length
    sub_3108e4d7[stor15.length] = arg2
    sub_b3557522[arg5][arg6] = arg2
    return stor15.length
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[14752 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= uint256(sub_c71e261f):
        mem[0] = idx
        mem[32] = 5
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

function sub_95787d26(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= sub_ad842028
    require sub_78669280[arg1]
    require sub_78669280[arg1] != msg.sender
    stor20.length++
    uint256(stor20[stor20.length]) = msg.value
    require stor20.length == uint32(stor20.length)
    sub_f0104323[stor20.length] = msg.sender
    sub_1b57cd44[stor20.length] = arg1
    require sub_5501d42d[arg1]
    call sub_78669280[arg1] with:
       value 70 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < sub_5501d42d[arg1]:
        require idx < sub_5501d42d[arg1]
        call sub_fffb1479[stor13[arg1][idx]] with:
           value msg.value - (70 * msg.value / 100) / sub_5501d42d[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < sub_5501d42d[arg1]
        sub_ca083be2[stor20.length]++
        sub_ca083be2[stor20.length][sub_ca083be2[stor20.length]] = sub_5501d42d[arg1][idx]
        mem[0] = arg1
        mem[32] = 13
        idx = idx + 1
        continue 
    emit 0x6ea1e5e0: msg.sender, stor20.length
    return stor20.length
}

function sub_200b1e64(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg2.length > 0
    require arg2.length <= 256
    require sub_96b5d992[arg1] != msg.sender
    mem[ceil32(arg2.length) + 160] = arg4
    mem[ceil32(arg2.length) + 192] = arg5
    mem[ceil32(arg2.length) + 128] = 64
    _8 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    if sub_46cb96fa[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]]:
        revert with 0, 'Signature Already Used'
    mem[ceil32(arg2.length) + 416] = arg5
    signer = erecover(sha3(arg1), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == sub_96b5d992[arg1]
    mem[ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + arg2.length + 416] = 0
    sub_990581b6.length++
    uint256(sub_990581b6[sub_990581b6.length][]) = Array(len=arg2.length, data=arg2[all])
    require sub_990581b6.length == uint32(sub_990581b6.length)
    mem[(2 * ceil32(arg2.length)) + 416] = msg.sender
    mem[(2 * ceil32(arg2.length)) + 448] = sub_990581b6.length
    emit 0xe819187a: mem[(2 * ceil32(arg2.length)) + 416 len ceil32(arg2.length) + 64]
    sub_78669280[stor10.length] = msg.sender
    sub_fac9c51f[stor10.length] = arg1
    sub_317676bf[arg1]++
    sub_317676bf[arg1][sub_317676bf[arg1]] = sub_990581b6.length
    sub_46cb96fa[_8] = arg1
    mem[(2 * ceil32(arg2.length)) + 416] = sub_990581b6.length
    return memory
      from (2 * ceil32(arg2.length)) + 416
       len ceil32(arg2.length) + 32
}



}
