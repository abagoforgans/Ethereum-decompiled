contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_b2c01b18;
address sub_eaeac2fdAddress;
array of struct allocations;

function allocations(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allocations[arg1].field_0
    return allocations[arg1][arg2].field_0, allocations[arg1][arg2].field_256
}

function owner() payable {
    return owner
}

function sub_b2c01b18(?) payable {
    return sub_b2c01b18
}

function sub_eaeac2fd(?) payable {
    return sub_eaeac2fdAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAvailableBalance() payable {
    require ext_code.size(sub_eaeac2fdAddress)
    staticcall sub_eaeac2fdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_b2c01b18 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - sub_b2c01b18)
}

function withdrawUnallocatedTokens() payable {
    require msg.sender == owner
    require ext_code.size(sub_eaeac2fdAddress)
    staticcall sub_eaeac2fdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_b2c01b18 <= ext_call.return_data[0]
    if ext_call.return_data[0] - sub_b2c01b18 <= 0:
        revert with 0, 'All tokens are locked in escrow'
    require ext_code.size(sub_eaeac2fdAddress)
    call sub_eaeac2fdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] - sub_b2c01b18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function allocate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7743616e6e6f742061737369676e20746f6b656e7320746f207a65726f20616464726573,
                    mem[200 len 28]
    if arg2 <= 0:
        revert with 0, 'Cannot assign zero tokens'
    require ext_code.size(sub_eaeac2fdAddress)
    staticcall sub_eaeac2fdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_b2c01b18 + arg2 >= sub_b2c01b18
    if sub_b2c01b18 + arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    74,
                    0xfe496e73756666696369656e7420636f6e747261637420746f6b656e2062616c616e636520746f20616c6c6f63617465206164646974696f6e616c2066756e647320746f20657363726f,
                    mem[238 len 22]
    allocations[address(arg1)].field_0++
    allocations[address(arg1)][allocations[address(arg1)].field_0].field_0 = arg2
    allocations[address(arg1)][allocations[address(arg1)].field_0].field_256 = block.timestamp + stor1
    require sub_b2c01b18 + arg2 >= sub_b2c01b18
    sub_b2c01b18 += arg2
    emit Allocate(arg2, block.timestamp + stor1, arg1);
}

function lockedBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    if allocations[address(arg1)].field_0:
        mem[128 len 32 * allocations[address(arg1)].field_0] = code.data[6627 len 32 * allocations[address(arg1)].field_0]
    mem[(32 * allocations[address(arg1)].field_0) + 128] = allocations[address(arg1)].field_0
    if allocations[address(arg1)].field_0:
        mem[(32 * allocations[address(arg1)].field_0) + 160 len 32 * allocations[address(arg1)].field_0] = code.data[6627 len 32 * allocations[address(arg1)].field_0]
    idx = 0
    while idx < allocations[address(arg1)].field_0:
        require idx < allocations[address(arg1)].field_0
        require idx < allocations[address(arg1)].field_0
        mem[(32 * idx) + 128] = allocations[address(arg1)][idx].field_0
        require idx < mem[(32 * allocations[address(arg1)].field_0) + 128]
        mem[(32 * idx) + (32 * allocations[address(arg1)].field_0) + 160] = allocations[address(arg1)][idx].field_256
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    mem[(64 * allocations[address(arg1)].field_0) + 160] = 64
    mem[(64 * allocations[address(arg1)].field_0) + 224] = allocations[address(arg1)].field_0
    mem[(64 * allocations[address(arg1)].field_0) + 256 len floor32(allocations[address(arg1)].field_0)] = mem[128 len floor32(allocations[address(arg1)].field_0)]
    mem[(64 * allocations[address(arg1)].field_0) + 192] = (32 * allocations[address(arg1)].field_0) + 96
    mem[(98 * allocations[address(arg1)].field_0) + 256] = mem[(32 * allocations[address(arg1)].field_0) + 128]
    mem[(98 * allocations[address(arg1)].field_0) + 288 len floor32(mem[(32 * allocations[address(arg1)].field_0) + 128])] = mem[(32 * allocations[address(arg1)].field_0) + 160 len floor32(mem[(32 * allocations[address(arg1)].field_0) + 128])]
    return memory
      from (64 * allocations[address(arg1)].field_0) + 160
       len (32 * mem[(32 * allocations[address(arg1)].field_0) + 128]) + (161 * allocations[address(arg1)].field_0) + 128
}

function withdraw() payable {
    if allocations[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c4163636f756e7420686173206e6f74206265656e20616c6c6f636174656420616e7920746f6b656e,
                    mem[205 len 23]
    idx = 0
    s = 0
    while idx < allocations[address(msg.sender)].field_0:
        require idx < allocations[address(msg.sender)].field_0
        if block.timestamp <= allocations[address(msg.sender)][idx].field_256:
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require idx < allocations[address(msg.sender)].field_0
        require s + allocations[address(msg.sender)][idx].field_0 >= s
        require idx < allocations[address(msg.sender)].field_0
        allocations[address(msg.sender)][idx].field_0 = 0
        mem[0] = msg.sender
        mem[32] = 4
        idx = idx + 1
        s = s + allocations[address(msg.sender)][idx].field_0
        continue 
    if s <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x724e6f20746f6b656e732063757272656e746c7920617661696c61626c6520666f7220776974686472617761,
                    mem[208 len 20]
    require ext_code.size(sub_eaeac2fdAddress)
    call sub_eaeac2fdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734661696c656420746f207472616e7366657220746f6b656e7320746f20636f6e7472696275746f,
                    mem[204 len 24]
    require s <= sub_b2c01b18
    sub_b2c01b18 -= s
    emit Withdraw(s, block.timestamp, msg.sender);
    return s
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if allocations[address(arg1)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c4163636f756e7420686173206e6f74206265656e20616c6c6f636174656420616e7920746f6b656e,
                    mem[205 len 23]
    idx = 0
    s = 0
    while idx < allocations[address(arg1)].field_0:
        require idx < allocations[address(arg1)].field_0
        require s + allocations[address(arg1)][idx].field_0 >= s
        require idx < allocations[address(arg1)].field_0
        allocations[address(arg1)][idx].field_0 = 0
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + allocations[address(arg1)][idx].field_0
        continue 
    if s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x724e6f20746f6b656e732063757272656e746c7920617661696c61626c6520666f7220776974686472617761,
                    mem[208 len 20]
    require ext_code.size(sub_eaeac2fdAddress)
    call sub_eaeac2fdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer tokens'
    require s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 <= sub_b2c01b18
    sub_b2c01b18 += -1 * s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0
    emit Withdraw(s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0, block.timestamp, arg1);
    emit Release(s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0, block.timestamp, arg1);
    return (s * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0 * allocations[address(arg1)].field_0)
}



}
