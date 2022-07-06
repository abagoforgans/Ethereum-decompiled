contract main {




// =====================  Runtime code  =====================


address owner;
address sub_3a00cce5Address;
address sub_81d933fbAddress;
uint256 rate;
uint256 sub_7729d84e;
uint256 sub_9cb6527f;
uint8 salePaused;
uint8 sub_4c95a06a; offset 8
uint8 isOpenForPublic; offset 16
uint256 stor6; offset 16
uint256 stor6; offset 8
uint256 sub_3bb0e139;
uint256 sub_bc116d24;
uint256 sub_d5315edc;
uint256 sub_f9b243eb;
mapping of struct weaponDetails;
mapping of uint256 sub_d77a871c;
mapping of uint256 sub_ffd9397f;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint256 userNonce;

function sub_106cbf90(?) {
    require calldata.size - 4 >= 32
    return weaponDetails[arg1].field_0, weaponDetails[arg1].field_256, weaponDetails[arg1].field_512
}

function rate() {
    return rate
}

function sub_3a00cce5(?) {
    return sub_3a00cce5Address
}

function sub_3bb0e139(?) {
    return sub_3bb0e139
}

function getWeaponDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    return weaponDetails[arg1].field_512, weaponDetails[arg1].field_0, weaponDetails[arg1].field_256
}

function sub_4c95a06a(?) {
    return bool(sub_4c95a06a)
}

function salePaused() {
    return bool(salePaused)
}

function sub_668d40ce(?) {
    require calldata.size - 4 >= 64
    return bool(stor15[address(arg1)][address(arg2)])
}

function sub_6716c248(?) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function getUserNonce(address arg1) {
    require calldata.size - 4 >= 32
    return userNonce[address(arg1)]
}

function isOpenForPublic() {
    return bool(isOpenForPublic)
}

function sub_7674ad5e(?) {
    return sub_f9b243eb
}

function sub_7729d84e(?) {
    return sub_7729d84e
}

function sub_81d933fb(?) {
    return sub_81d933fbAddress
}

function owner() {
    return owner
}

function sub_9cb6527f(?) {
    return sub_9cb6527f
}

function sub_bc116d24(?) {
    return sub_bc116d24
}

function sub_d5315edc(?) {
    return sub_d5315edc
}

function sub_d77a871c(?) {
    require calldata.size - 4 >= 32
    return sub_d77a871c[arg1]
}

function isOnSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function sub_f9b243eb(?) {
    return sub_f9b243eb
}

function sub_ffd9397f(?) {
    require calldata.size - 4 >= 32
    return sub_ffd9397f[arg1]
}

function kill(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 == 123456789987654321
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function pauseSale() {
    require msg.sender == owner
    salePaused = 1
}

function unpauseSale() {
    require msg.sender == owner
    salePaused = 0
}

function sub_206ff093(?) {
    require msg.sender == owner
    Mask(248, 0, stor6.field_8) = 1
}

function sub_419859e5(?) {
    require msg.sender == owner
    Mask(248, 0, stor6.field_8) = 0
}

function updateRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rate = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_4fcf26e6(?) {
    require calldata.size - 4 >= 64
    return sha3(0, this.address, userNonce[address(arg1)], arg2)
}

function sub_e4f4cbc7(?) {
    require calldata.size - 4 >= 96
    return sha3(0, this.address, userNonce[address(arg1)], arg2, arg3)
}

function sub_effd3b47(?) {
    require calldata.size - 4 >= 96
    return sha3(0, this.address, userNonce[address(arg1)], arg2, arg3)
}

function sub_d298f9d7(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor16[address(arg1)] = uint8(arg2)
}

function sub_81f7f5df(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(240, 0, stor6.field_16) = Mask(240, 0, arg1)
}

function updateCommission(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_7729d84e = arg1
    sub_9cb6527f = arg2
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require stor15[address(msg.sender)][address(arg1)]
    stor15[address(msg.sender)][address(arg1)] = 0
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require not stor15[address(msg.sender)][address(arg1)]
    stor15[address(msg.sender)][address(arg1)] = 1
}

function sub_d594cd36(?) {
    require calldata.size - 4 >= 32
    return weaponDetails[stor12[arg1]].field_512, 
           weaponDetails[stor12[arg1]].field_0,
           weaponDetails[stor12[arg1]].field_256,
           sub_d77a871c[arg1]
}

function getSigner(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function calculateCommission(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        if sub_9cb6527f:
            return (0 / sub_9cb6527f / 100)
    else:
        if arg1:
            if arg1 * sub_7729d84e / arg1 == sub_7729d84e:
                if sub_9cb6527f:
                    return (arg1 * sub_7729d84e / sub_9cb6527f / 100)
    revert
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawAnyERC721Token(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a0d8690c(?) {
    require calldata.size - 4 >= 160
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require sha3(0, this.address, userNonce[address(signer)], arg5) == arg1
    require not stor15[address(signer)][address(arg5)]
    stor15[address(signer)][address(arg5)] = 1
    require userNonce[address(signer)] + 1 >= userNonce[address(signer)]
    require userNonce[address(signer)] + 1 >= 1
    userNonce[address(signer)]++
}

function updateSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not salePaused
    require stor14[arg1]
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    if weaponDetails[arg1].field_512 != msg.sender:
        require stor15[stor11[arg1].field_512][address(msg.sender)]
    if not arg2:
        require sub_9cb6527f
        weaponDetails[arg1].field_0 = arg2
        weaponDetails[arg1].field_256 = 0 / sub_9cb6527f / 100
    else:
        require arg2
        require arg2 * sub_7729d84e / arg2 == sub_7729d84e
        require sub_9cb6527f
        weaponDetails[arg1].field_0 = arg2
        weaponDetails[arg1].field_256 = arg2 * sub_7729d84e / sub_9cb6527f / 100
    weaponDetails[arg1].field_512 = weaponDetails[arg1].field_512
    emit 0xbec36fd0: weaponDetails[arg1].field_512, msg.sender, arg1, arg2
}

function cancelSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not salePaused
    require stor14[arg1]
    require not salePaused
    require stor14[arg1]
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    if weaponDetails[arg1].field_512 != msg.sender:
        require stor15[stor11[arg1].field_512][address(msg.sender)]
    stor14[arg1] = 0
    weaponDetails[arg1].field_0 = 0
    weaponDetails[arg1].field_256 = 0
    weaponDetails[arg1].field_512 = 0
    weaponDetails[arg1].field_768 = 0
    if sub_ffd9397f[arg1] == sub_f9b243eb:
        sub_ffd9397f[arg1] = 0
        sub_d77a871c[stor13[arg1]] = 0
    else:
        sub_ffd9397f[stor12[stor10]] = sub_ffd9397f[arg1]
        sub_d77a871c[stor13[arg1]] = sub_d77a871c[stor10]
        sub_ffd9397f[arg1] = 0
        sub_d77a871c[stor10] = 0
    require 1 <= sub_f9b243eb
    sub_f9b243eb--
    require sub_bc116d24 + 1 >= sub_bc116d24
    require sub_bc116d24 + 1 >= 1
    sub_bc116d24++
    require ext_code.size(sub_3a00cce5Address)
    call sub_3a00cce5Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), weaponDetails[arg1].field_512, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb51a8a93: msg.sender, arg1
}

function sub_cedf6f91(?) payable {
    require calldata.size - 4 >= 64
    require not salePaused
    require not sub_4c95a06a
    require stor14[arg1]
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    if arg2 != msg.sender:
        require stor15[address(arg2)][address(msg.sender)]
    require rate > 0
    require rate
    require weaponDetails[arg1].field_0 / rate > 0
    require msg.value == weaponDetails[arg1].field_0 / rate
    require weaponDetails[arg1].field_256 <= weaponDetails[arg1].field_0
    require ext_code.size(sub_81d933fbAddress)
    call sub_81d933fbAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= weaponDetails[arg1].field_0 - weaponDetails[arg1].field_256
    stor14[arg1] = 0
    weaponDetails[arg1].field_0 = 0
    weaponDetails[arg1].field_256 = 0
    weaponDetails[arg1].field_512 = 0
    weaponDetails[arg1].field_768 = 0
    if sub_ffd9397f[arg1] == sub_f9b243eb:
        sub_ffd9397f[arg1] = 0
        sub_d77a871c[stor13[arg1]] = 0
    else:
        sub_ffd9397f[stor12[stor10]] = sub_ffd9397f[arg1]
        sub_d77a871c[stor13[arg1]] = sub_d77a871c[stor10]
        sub_ffd9397f[arg1] = 0
        sub_d77a871c[stor10] = 0
    require 1 <= sub_f9b243eb
    sub_f9b243eb--
    require sub_d5315edc + 1 >= sub_d5315edc
    require sub_d5315edc + 1 >= 1
    sub_d5315edc++
    require ext_code.size(sub_81d933fbAddress)
    call sub_81d933fbAddress.0xa9059cbb with:
         gas gas_remaining wei
        args weaponDetails[arg1].field_512, weaponDetails[arg1].field_0 - weaponDetails[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3a00cce5Address)
    call sub_3a00cce5Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6002c39: address(arg2), weaponDetails[arg1].field_512, weaponDetails[arg1].field_0, msg.sender, weaponDetails[arg1].field_256, Array(len=3, data='ETH')
}

function sub_e100fd6e(?) {
    require calldata.size - 4 >= 64
    require not salePaused
    require stor14[arg1]
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    if arg2 != msg.sender:
        require stor15[address(arg2)][address(msg.sender)]
    require ext_code.size(sub_81d933fbAddress)
    staticcall sub_81d933fbAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= weaponDetails[arg1].field_0
    stor14[arg1] = 0
    weaponDetails[arg1].field_0 = 0
    weaponDetails[arg1].field_256 = 0
    weaponDetails[arg1].field_512 = 0
    weaponDetails[arg1].field_768 = 0
    if sub_ffd9397f[arg1] == sub_f9b243eb:
        sub_ffd9397f[arg1] = 0
        sub_d77a871c[stor13[arg1]] = 0
    else:
        sub_ffd9397f[stor12[stor10]] = sub_ffd9397f[arg1]
        sub_d77a871c[stor13[arg1]] = sub_d77a871c[stor10]
        sub_ffd9397f[arg1] = 0
        sub_d77a871c[stor10] = 0
    require 1 <= sub_f9b243eb
    sub_f9b243eb--
    if weaponDetails[arg1].field_0 > 0:
        require weaponDetails[arg1].field_256 <= weaponDetails[arg1].field_0
        require ext_code.size(sub_81d933fbAddress)
        call sub_81d933fbAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), weaponDetails[arg1].field_512, weaponDetails[arg1].field_0 - weaponDetails[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if weaponDetails[arg1].field_256 > 0:
        require ext_code.size(sub_81d933fbAddress)
        call sub_81d933fbAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), owner, weaponDetails[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require sub_d5315edc + 1 >= sub_d5315edc
    require sub_d5315edc + 1 >= 1
    sub_d5315edc++
    require ext_code.size(sub_3a00cce5Address)
    call sub_3a00cce5Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6002c39: address(arg2), weaponDetails[arg1].field_512, weaponDetails[arg1].field_0, msg.sender, weaponDetails[arg1].field_256, Array(len=3, data='RCC')
}

function sub_ddf02e9b(?) {
    require calldata.size - 4 >= 64
    require not salePaused
    require ext_code.size(sub_3a00cce5Address)
    staticcall sub_3a00cce5Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor15[ext_call.return_data[12 len 20]][address(msg.sender)]
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    require not stor14[arg1]
    require ext_code.size(sub_3a00cce5Address)
    staticcall sub_3a00cce5Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require sub_9cb6527f
        require ext_code.size(sub_3a00cce5Address)
        call sub_3a00cce5Address.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_d77a871c[stor10 + 1] = arg1
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_ffd9397f[arg1] = sub_f9b243eb + 1
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_f9b243eb++
        weaponDetails[arg1].field_0 = arg2
        weaponDetails[arg1].field_256 = 0 / sub_9cb6527f / 100
    else:
        require arg2
        require arg2 * sub_7729d84e / arg2 == sub_7729d84e
        require sub_9cb6527f
        require ext_code.size(sub_3a00cce5Address)
        call sub_3a00cce5Address.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_d77a871c[stor10 + 1] = arg1
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_ffd9397f[arg1] = sub_f9b243eb + 1
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_f9b243eb++
        weaponDetails[arg1].field_0 = arg2
        weaponDetails[arg1].field_256 = arg2 * sub_7729d84e / sub_9cb6527f / 100
    weaponDetails[arg1].field_512 = address(ext_call.return_data[0])
    stor14[arg1] = 1
    require sub_3bb0e139 + 1 >= sub_3bb0e139
    require sub_3bb0e139 + 1 >= 1
    sub_3bb0e139++
    emit OrderPlaced(address(ext_call.return_data[0]), msg.sender, arg1, arg2);
}

function sub_db14663f(?) {
    require calldata.size - 4 >= 192
    require not salePaused
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require sha3(0, this.address, userNonce[address(signer)], arg5, arg6) == arg1
    if arg6 != address(signer):
        require stor15[address(arg6)][address(signer)]
    require ext_code.size(sub_81d933fbAddress)
    staticcall sub_81d933fbAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg6), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= weaponDetails[arg5].field_0
    stor14[arg5] = 0
    weaponDetails[arg5].field_0 = 0
    weaponDetails[arg5].field_256 = 0
    weaponDetails[arg5].field_512 = 0
    weaponDetails[arg5].field_768 = 0
    if sub_ffd9397f[arg5] == sub_f9b243eb:
        sub_ffd9397f[arg5] = 0
        sub_d77a871c[stor13[arg5]] = 0
    else:
        sub_ffd9397f[stor12[stor10]] = sub_ffd9397f[arg5]
        sub_d77a871c[stor13[arg5]] = sub_d77a871c[stor10]
        sub_ffd9397f[arg5] = 0
        sub_d77a871c[stor10] = 0
    require 1 <= sub_f9b243eb
    sub_f9b243eb--
    if weaponDetails[arg5].field_0 > 0:
        require weaponDetails[arg5].field_256 <= weaponDetails[arg5].field_0
        require ext_code.size(sub_81d933fbAddress)
        call sub_81d933fbAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg6), weaponDetails[arg5].field_512, weaponDetails[arg5].field_0 - weaponDetails[arg5].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if weaponDetails[arg5].field_256 > 0:
        require ext_code.size(sub_81d933fbAddress)
        call sub_81d933fbAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg6), owner, weaponDetails[arg5].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require sub_d5315edc + 1 >= sub_d5315edc
    require sub_d5315edc + 1 >= 1
    sub_d5315edc++
    require ext_code.size(sub_3a00cce5Address)
    call sub_3a00cce5Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg6), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6002c39: address(arg6), weaponDetails[arg5].field_512, weaponDetails[arg5].field_0, msg.sender, weaponDetails[arg5].field_256, Array(len=3, data='RCC')
    require userNonce[address(signer)] + 1 >= userNonce[address(signer)]
    require userNonce[address(signer)] + 1 >= 1
    userNonce[address(signer)]++
}

function sub_4b226196(?) {
    require calldata.size - 4 >= 192
    require not salePaused
    if not isOpenForPublic:
        require stor16[address(msg.sender)]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require sha3(0, this.address, userNonce[address(signer)], arg5, arg6) == arg1
    require not stor14[arg5]
    require ext_code.size(sub_3a00cce5Address)
    staticcall sub_3a00cce5Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(signer) != ext_call.return_data[12 len 20]:
        require stor15[ext_call.return_data[12 len 20]][address(signer)]
    if not arg6:
        require sub_9cb6527f
        require ext_code.size(sub_3a00cce5Address)
        call sub_3a00cce5Address.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_d77a871c[stor10 + 1] = arg5
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_ffd9397f[arg5] = sub_f9b243eb + 1
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_f9b243eb++
        weaponDetails[arg5].field_0 = arg6
        weaponDetails[arg5].field_256 = 0 / sub_9cb6527f / 100
    else:
        require arg6
        require arg6 * sub_7729d84e / arg6 == sub_7729d84e
        require sub_9cb6527f
        require ext_code.size(sub_3a00cce5Address)
        call sub_3a00cce5Address.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_d77a871c[stor10 + 1] = arg5
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_ffd9397f[arg5] = sub_f9b243eb + 1
        require sub_f9b243eb + 1 >= sub_f9b243eb
        require sub_f9b243eb + 1 >= 1
        sub_f9b243eb++
        weaponDetails[arg5].field_0 = arg6
        weaponDetails[arg5].field_256 = arg6 * sub_7729d84e / sub_9cb6527f / 100
    weaponDetails[arg5].field_512 = address(ext_call.return_data[0])
    stor14[arg5] = 1
    require sub_3bb0e139 + 1 >= sub_3bb0e139
    require sub_3bb0e139 + 1 >= 1
    sub_3bb0e139++
    emit OrderPlaced(address(ext_call.return_data[0]), msg.sender, arg5, arg6);
    require userNonce[address(signer)] + 1 >= userNonce[address(signer)]
    require userNonce[address(signer)] + 1 >= 1
    userNonce[address(signer)]++
}



}
