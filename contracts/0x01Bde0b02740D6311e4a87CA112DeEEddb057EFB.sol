contract main {




// =====================  Runtime code  =====================


#
#  - sub_ab5abd5f(?)
#
mapping of uint8 stor0;
address versionAddress;
address registryAddress;
address sub_5967d7e8Address;
address sub_2b34963cAddress;
address sub_116c719fAddress;
address sub_f778c105Address;
address sub_e8b822dbAddress;
address sub_2bd90a59Address;
address vaultFactoryAddress;
array of address funds;
mapping of address sub_b6c3ddf0;
mapping of struct sub_32e143d6;
mapping of struct stor13;
address authorityAddress;
address owner;

function sub_0a726fe5(?) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function sub_116c719f(?) {
    return sub_116c719fAddress
}

function getFundById(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < funds.length
    return funds[arg1]
}

function sub_2b34963c(?) {
    return sub_2b34963cAddress
}

function sub_2bd90a59(?) {
    return sub_2bd90a59Address
}

function sub_32e143d6(?) {
    require calldata.size - 4 >= 32
    return sub_32e143d6[arg1].field_0, 
           sub_32e143d6[arg1].field_256,
           sub_32e143d6[arg1].field_512,
           sub_32e143d6[arg1].field_768,
           sub_32e143d6[arg1].field_1024,
           sub_32e143d6[arg1].field_1280,
           sub_32e143d6[arg1].field_1536,
           sub_32e143d6[arg1].field_1792,
           sub_32e143d6[arg1].field_2048,
           sub_32e143d6[arg1].field_2304,
           sub_32e143d6[arg1].field_2560,
           sub_32e143d6[arg1].field_2816
}

function version() {
    return versionAddress
}

function sub_5967d7e8(?) {
    return sub_5967d7e8Address
}

function isInstance(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function registry() {
    return registryAddress
}

function funds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < funds.length
    return funds[arg1]
}

function owner() {
    return owner
}

function sub_b6c3ddf0(?) {
    require calldata.size - 4 >= 32
    return sub_b6c3ddf0[arg1]
}

function authority() {
    return authorityAddress
}

function vaultFactory() {
    return vaultFactoryAddress
}

function sub_e8b822db(?) {
    return sub_e8b822dbAddress
}

function sub_f778c105(?) {
    return sub_f778c105Address
}

function _fallback() payable {
    revert
}

function getLastFundId() {
    return (funds.length - 1)
}

function engine() {
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function mlnToken() {
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function priceSource() {
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_d6ee80a9(?) {
    require calldata.size - 4 >= 32
    mem[128] = stor13[arg1].field_0
    idx = 128
    s = 0
    while stor13[arg1].length + 96 > idx:
        mem[idx + 32] = stor13[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor13[arg1].length, data=mem[128 len ceil32(stor13[arg1].length)]), stor13[arg1].field_768
}

function shutDownFund(address arg1) {
    require calldata.size - 4 >= 32
    if sub_b6c3ddf0[msg.sender] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Conditions not met for fund shutdown'
    require ext_code.size(arg1)
    call arg1.shutDownFund() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function sub_7a3f5c87(?) {
    require calldata.size - 4 >= 32
    mem[64] = (32 * stor13[address(arg1)].field_256) + 128
    mem[96] = stor13[address(arg1)].field_256
    if not stor13[address(arg1)].field_256:
        mem[(32 * stor13[address(arg1)].field_256) + 128] = 32
        mem[(32 * stor13[address(arg1)].field_256) + 160] = stor13[address(arg1)].field_256
        idx = 0
        s = 128
        t = (32 * stor13[address(arg1)].field_256) + 192
        while idx < stor13[address(arg1)].field_256:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor13[address(arg1)].field_256) + 128
           len (96 * stor13[address(arg1)].field_256) + 64
    mem[128] = stor13[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * stor13[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = stor13[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor13[address(arg1)].field_256) + 128] = 32
    mem[(32 * stor13[address(arg1)].field_256) + 160] = stor13[address(arg1)].field_256
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor13[address(arg1)].field_256:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor13[address(arg1)].field_256) + -mem[64] + 192
}

function createVault() payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_1536:
        revert with 0, 'This step has already been run'
    require ext_code.size(vaultFactoryAddress)
    call vaultFactoryAddress.createInstance(address arg1) with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_1536 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function createShares() payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_1024:
        revert with 0, 'This step has already been run'
    require ext_code.size(sub_e8b822dbAddress)
    call sub_e8b822dbAddress.createInstance(address arg1) with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_1024 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function createPolicyManager() payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_768:
        revert with 0, 'This step has already been run'
    require ext_code.size(sub_f778c105Address)
    call sub_f778c105Address.createInstance(address arg1) with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_768 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function sub_86ecdc4f(?) payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_512:
        revert with 0, 'This step has already been run'
    idx = 0
    s = 0
    t = 228
    while idx < stor13[msg.sender].field_1024:
        mem[t] = stor13[msg.sender][s + 4].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_116c719fAddress)
    call sub_116c719fAddress.0x65925b51 with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender], Array(len=stor13[msg.sender].field_1024, data=mem[228 len 32 * stor13[msg.sender].field_1024]), sub_32e143d6[msg.sender].field_2048
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_512 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function sub_1f2d1531(?) payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_0:
        revert with 0, 'This step has already been run'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 260
    while idx < stor13[msg.sender].field_1024:
        mem[t] = stor13[msg.sender][s + 4].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_5967d7e8Address)
    call sub_5967d7e8Address.0xf04929e5 with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender], stor13[msg.sender].field_768, address(ext_call.return_data[0]), Array(len=stor13[msg.sender].field_1024, data=mem[ceil32(return_data.size) + 260 len 32 * stor13[msg.sender].field_1024])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_0 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function sub_04478c31(?) payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_1280:
        revert with 0, 'This step has already been run'
    idx = 0
    s = 0
    t = 260
    while idx < stor13[msg.sender].field_256:
        mem[t] = stor13[msg.sender][s + 1].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * stor13[msg.sender].field_256) + 260] = stor13[msg.sender].field_512
    idx = 0
    s = 0
    t = (32 * stor13[msg.sender].field_256) + 292
    while idx < stor13[msg.sender].field_512:
        mem[t] = stor13[msg.sender][s + 2].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_2bd90a59Address)
    call sub_2bd90a59Address.0x7aa253f with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender], Array(len=stor13[msg.sender].field_256, data=mem[260 len (32 * stor13[msg.sender].field_256) + (32 * stor13[msg.sender].field_512) + 32]), (32 * stor13[msg.sender].field_256) + 160, sub_32e143d6[msg.sender].field_2048
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_1280 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function createFeeManager() payable {
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0, 'Component preprequisites not met'
    if sub_32e143d6[msg.sender].field_256:
        revert with 0, 'This step has already been run'
    idx = 0
    s = 0
    t = 324
    while idx < stor13[msg.sender].field_1280:
        mem[t] = stor13[msg.sender][s + 5].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * stor13[msg.sender].field_1280) + 324] = stor13[msg.sender].field_1536
    idx = 0
    s = 0
    t = (32 * stor13[msg.sender].field_1280) + 356
    while idx < stor13[msg.sender].field_1536:
        mem[t] = stor13[msg.sender][s + 6].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = (32 * stor13[msg.sender].field_1280) + (32 * stor13[msg.sender].field_1536) + 388
    while idx < stor13[msg.sender].field_1792:
        mem[t] = stor13[msg.sender][s + 7].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_2b34963cAddress)
    call sub_2b34963cAddress.0x8dc6ba27 with:
         gas gas_remaining wei
        args sub_b6c3ddf0[msg.sender], stor13[msg.sender].field_768, Array(len=stor13[msg.sender].field_1280, data=mem[324 len (32 * stor13[msg.sender].field_1280) + (32 * stor13[msg.sender].field_1536) + 32], stor13[msg.sender].field_1792, mem[(32 * stor13[msg.sender].field_1280) + (32 * stor13[msg.sender].field_1536) + 388 len 32 * stor13[msg.sender].field_1792]), (32 * stor13[msg.sender].field_1280) + 224, (32 * stor13[msg.sender].field_1280) + (32 * stor13[msg.sender].field_1536) + 256, registryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_32e143d6[msg.sender].field_256 = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}

function completeSetup() payable {
    if stor0[stor11[msg.sender]]:
        revert with 0, 'Setup already complete'
    if not sub_b6c3ddf0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    if not sub_32e143d6[msg.sender].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Components must be set before completing setup'
    stor0[stor11[msg.sender]] = 1
    mem[96] = sub_32e143d6[msg.sender].field_0
    mem[128] = sub_32e143d6[msg.sender].field_256
    mem[160] = sub_32e143d6[msg.sender].field_512
    mem[192] = sub_32e143d6[msg.sender].field_768
    mem[224] = sub_32e143d6[msg.sender].field_1024
    mem[256] = sub_32e143d6[msg.sender].field_1280
    mem[288] = sub_32e143d6[msg.sender].field_1536
    mem[320] = sub_32e143d6[msg.sender].field_1792
    mem[352] = sub_32e143d6[msg.sender].field_2048
    mem[384] = sub_32e143d6[msg.sender].field_2304
    mem[416] = sub_32e143d6[msg.sender].field_2560
    mem[448] = sub_32e143d6[msg.sender].field_2816
    mem[480] = 0x30ed725500000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 96
    t = 484
    while idx < 12:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_b6c3ddf0[msg.sender])
    call sub_b6c3ddf0[msg.sender].mem[480 len 4] with:
         gas gas_remaining wei
        args mem[484 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_b6c3ddf0[msg.sender])
    call sub_b6c3ddf0[msg.sender].0xf1a07269 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_b6c3ddf0[msg.sender])
    call sub_b6c3ddf0[msg.sender].0xb73515eb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    funds.length++
    funds[funds.length] = sub_b6c3ddf0[msg.sender]
    if not stor13[msg.sender].field_0:
        require ext_code.size(registryAddress)
        call registryAddress.0x3e45bbf with:
             gas gas_remaining wei
            args sub_b6c3ddf0[msg.sender], msg.sender, Array(len=stor13[msg.sender].field_0, data=Mask(248, 8, stor13[msg.sender].field_0))
    else:
        if stor13[msg.sender].field_0 != 1:
            require ext_code.size(registryAddress)
            call registryAddress.0x3e45bbf with:
                 gas gas_remaining wei
                args mem[484 len -484]
        else:
            idx = 0
            s = 0
            while idx < stor13[msg.sender].field_1:
                mem[idx + 612] = stor13[msg.sender][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(registryAddress)
            call registryAddress.0x3e45bbf with:
                 gas gas_remaining wei
                args sub_b6c3ddf0[msg.sender], msg.sender, Array(len=2 * Mask(256, -1, stor13[msg.sender].field_1), data=mem[612 len ceil32(stor13[msg.sender].field_1)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = sub_32e143d6[msg.sender].field_0
    mem[512] = sub_32e143d6[msg.sender].field_256
    mem[544] = sub_32e143d6[msg.sender].field_512
    mem[576] = sub_32e143d6[msg.sender].field_768
    mem[608] = sub_32e143d6[msg.sender].field_1024
    mem[640] = sub_32e143d6[msg.sender].field_1280
    mem[672] = sub_32e143d6[msg.sender].field_1536
    mem[704] = sub_32e143d6[msg.sender].field_1792
    mem[736] = sub_32e143d6[msg.sender].field_2048
    mem[768] = sub_32e143d6[msg.sender].field_2304
    mem[800] = sub_32e143d6[msg.sender].field_2560
    mem[832] = sub_32e143d6[msg.sender].field_2816
    idx = 0
    s = 480
    t = 864
    while idx < 12:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xd64c30c5: mem[864 len 384], msg.sender, sub_b6c3ddf0[msg.sender]
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].getAmguPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    require ext_code.size(registryAddress)
    call registryAddress.nativeAsset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x20531bc9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    call registryAddress.0x8a471df9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7e3bfc2f with:
         gas gas_remaining wei
        args 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficent AMGU and/or incentive'
    require ext_code.size(registryAddress)
    call registryAddress.0xc9d4623f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].payAmguInEther() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - ext_call.return_data[0] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Refund failed'
}



}
