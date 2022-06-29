contract main {




// =====================  Runtime code  =====================


address owner;
address valueTokenAddress;
address sub_d348050cAddress;
mapping of struct stakeRequests;
uint8 stor4;

function stakeRequests(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return stakeRequests[arg1].field_0, 
           stakeRequests[arg1].field_256,
           stakeRequests[arg1].field_512,
           stakeRequests[arg1].field_768,
           stakeRequests[arg1].field_1024,
           stakeRequests[arg1].field_1280
}

function owner() {
    return owner
}

function sub_d348050c(?) {
    return sub_d348050cAddress
}

function valueToken() {
    return valueTokenAddress
}

function destroy() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c207468652066756e6374696f,
                    0x2e00000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(valueTokenAddress)
    staticcall valueTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'ValueToken balance should be 0.'
    require ext_code.size(sub_d348050cAddress)
    staticcall sub_d348050cAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BrandedToken balance should be 0.'
    require ext_code.size(sub_d348050cAddress)
    staticcall sub_d348050cAddress.stakeRequestHashes(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'In progress stake requests are present.'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c207468652066756e6374696f,
                    0x2e00000000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'EIP20 token address is zero.'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EIP20token approve returned false.'
    return 1
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c207468652066756e6374696f,
                    0x2e00000000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'EIP20 token address is zero.'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EIP20Token transfer returned false.'
    return 1
}

function revokeStakeRequest(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c207468652066756e6374696f,
                    0x2e00000000000000000000000000000000000000000000000000000000000000
    stakeRequests[arg1].field_0 = 0
    stakeRequests[arg1].field_256 = 0
    stakeRequests[arg1].field_512 = 0
    stakeRequests[arg1].field_768 = 0
    stakeRequests[arg1].field_1024 = 0
    stakeRequests[arg1].field_1280 = 0
    if 0 >= stakeRequests[arg1].field_0:
        revert with 0, 'Stake request not found.'
    require ext_code.size(sub_d348050cAddress)
    call sub_d348050cAddress.0xcc3488ab with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BrandedToken revokeStakeRequest returned false.'
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, stakeRequests[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ValueToken transfer returned false.'
    return 1
}

function sub_11272e72(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c207468652066756e6374696f,
                    0x2e00000000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'Gateway address is zero.'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Gateway address is same as owner address.'
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ValueToken transferFrom returned false.'
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ValueToken approve returned false.'
    require ext_code.size(arg1)
    call arg1.0x212dbdbe with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function sub_bc25c8c5(?) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c207468652066756e6374696f,
                    0x2e00000000000000000000000000000000000000000000000000000000000000
    if stor4:
        revert with 0, 'Mutex is already acquired.'
    stor4 = 1
    if arg1 <= 0:
        revert with 0, 'Stake amount is zero.'
    require ext_code.size(sub_d348050cAddress)
    staticcall sub_d348050cAddress.convertToBrandedTokens(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_mintBT should match converted _stakeVT.'
    if not arg3:
        revert with 0, 'Gateway address is zero.'
    if owner == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Gateway address is same as owner address.'
    if not arg4:
        revert with 0, 'Beneficiary address is zero.'
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ValueToken transferFrom returned false.'
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_d348050cAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ValueToken approve returned false.'
    require ext_code.size(sub_d348050cAddress)
    call sub_d348050cAddress.requestStake(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stakeRequests[ext_call.return_data[0]].field_0 = arg1
    stakeRequests[ext_call.return_data[0]].field_256 = arg3
    stakeRequests[ext_call.return_data[0]].field_512 = arg4
    stakeRequests[ext_call.return_data[0]].field_768 = arg5
    stakeRequests[ext_call.return_data[0]].field_1024 = arg6
    stakeRequests[ext_call.return_data[0]].field_1280 = arg7
    stor4 = 0
    return ext_call.return_data[0]
}

function sub_e9b77113(?) {
    require calldata.size - 4 >= 160
    stakeRequests[arg1].field_0 = 0
    stakeRequests[arg1].field_256 = 0
    stakeRequests[arg1].field_512 = 0
    stakeRequests[arg1].field_768 = 0
    stakeRequests[arg1].field_1024 = 0
    stakeRequests[arg1].field_1280 = 0
    if stakeRequests[arg1].field_0 <= 0:
        revert with 0, 'Stake request not found.'
    require ext_code.size(stakeRequests[arg1].field_256)
    call stakeRequests[arg1].field_256.0x943dfef1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ValueToken transferFrom returned false.'
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakeRequests[arg1].field_256, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ValueToken approve returned false.'
    require ext_code.size(sub_d348050cAddress)
    call sub_d348050cAddress.acceptStakeRequest(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint8 arg4) with:
         gas gas_remaining wei
        args arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BrandedToken acceptStakeRequest returned false.'
    require ext_code.size(sub_d348050cAddress)
    staticcall sub_d348050cAddress.convertToBrandedTokens(uint256 arg1) with:
            gas gas_remaining wei
           args stakeRequests[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d348050cAddress)
    call sub_d348050cAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakeRequests[arg1].field_256, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BrandedToken approve returned false.'
    require ext_code.size(stakeRequests[arg1].field_256)
    call stakeRequests[arg1].field_256.0x6bb12049 with:
         gas gas_remaining wei
        args ext_call.return_data[0], stakeRequests[arg1].field_512, stakeRequests[arg1].field_768, stakeRequests[arg1].field_1024, stakeRequests[arg1].field_1280, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
