contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
array of struct sub_6e1cd95f;
mapping of uint8 stor3;
address tokenAddress;

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() payable {
    return bool(uint8(stor1.field_160))
}

function sub_6e1cd95f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6e1cd95f.length
    return sub_6e1cd95f[arg1].field_0, sub_6e1cd95f[arg1].field_256, sub_6e1cd95f[arg1].field_512, sub_6e1cd95f[arg1].field_768
}

function owner() payable {
    return owner
}

function isDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function sub_9c3e91d8(?) payable {
    return sub_6e1cd95f.length
}

function token() payable {
    return tokenAddress
}

function destroy() payable {
    require msg.sender == owner
    selfdestruct(msg.sender)
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

function renouncePauser() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceDistributor() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit DistributorRemoved(msg.sender);
}

function unpause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor3[address(msg.sender)]:
        revert with 0, 'sender is not a distributor'
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit DistributorAdded(arg1);
}

function sub_763b40b5(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 >= sub_6e1cd95f.length:
        revert with 0, 'index is out of bound'
    if arg2 <= 0:
        revert with 0, 'ratioDTV cannot be zero'
    if arg3 <= 0:
        revert with 0, 'ratioDecimals cannot be zero'
    require arg1 < sub_6e1cd95f.length
    emit 0xee0eb5da: sub_6e1cd95f[arg1].field_512, sub_6e1cd95f[arg1].field_768, arg2, arg3, arg1, sub_6e1cd95f[arg1].field_0, sub_6e1cd95f[arg1].field_256
    sub_6e1cd95f[arg1].field_512 = arg2
    sub_6e1cd95f[arg1].field_768 = arg3
}

function sub_8d8e0acc(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= sub_6e1cd95f.length:
        revert with 0, 'index is out of bound'
    emit 0xe9a043fd: sub_6e1cd95f[arg1].field_512, sub_6e1cd95f[arg1].field_768, arg1, sub_6e1cd95f[arg1].field_0, sub_6e1cd95f[arg1].field_256
    idx = arg1
    while idx < sub_6e1cd95f.length - 1:
        require idx + 1 < sub_6e1cd95f.length
        require idx < sub_6e1cd95f.length
        mem[0] = 2
        sub_6e1cd95f[idx].field_0 = sub_6e1cd95f[idx + 1].field_0
        sub_6e1cd95f[idx].field_256 = sub_6e1cd95f[idx + 1].field_256
        sub_6e1cd95f[idx].field_512 = sub_6e1cd95f[idx + 1].field_512
        sub_6e1cd95f[idx].field_768 = sub_6e1cd95f[idx + 1].field_768
        idx = idx + 1
        continue 
    sub_6e1cd95f.length--
    if sub_6e1cd95f.length > sub_6e1cd95f.length - 1:
        idx = 4 * sub_6e1cd95f.length - 1
        while 4 * sub_6e1cd95f.length > idx:
            sub_6e1cd95f[idx].field_0 = 0
            sub_6e1cd95f[idx].field_256 = 0
            sub_6e1cd95f[idx].field_512 = 0
            sub_6e1cd95f[idx].field_768 = 0
            idx = idx + 4
            continue 
}

function sub_cf802e1e(?) payable {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f6c6f636b656457616c6c657420616464726573732063616e6e6f74206265207a6572,
                    mem[199 len 29]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65756e6c6f636b57616c6c657420616464726573732063616e6e6f74206265207a6572,
                    mem[199 len 29]
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0xfe6c6f636b656457616c6c657420616e6420756e6c6f636b57616c6c6574206164647265737365732063616e6e6f74206265207468652073616d,
                    mem[222 len 6]
    if arg3 <= 0:
        revert with 0, 'ratioDTV cannot be zero'
    if arg4 <= 0:
        revert with 0, 'ratioDecimals cannot be zero'
    sub_6e1cd95f.length++
    sub_6e1cd95f[sub_6e1cd95f.length].field_0 = arg1
    sub_6e1cd95f[sub_6e1cd95f.length].field_256 = arg2
    sub_6e1cd95f[sub_6e1cd95f.length].field_512 = arg3
    sub_6e1cd95f[sub_6e1cd95f.length].field_768 = arg4
    emit 0x92e3a88d: arg3, arg4, arg1, arg2
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor1.field_160)
    require msg.sender
    if not stor3[address(msg.sender)]:
        revert with 0, 'sender is not a distributor'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[31 len 1] > 0
    require 10^ext_call.return_data[31 len 1]
    if arg1 / 10^ext_call.return_data[31 len 1] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f6461696c79547261646564566f6c756d65206973206e6f7420696e20746f6b656e20756e69,
                    mem[202 len 26]
    idx = 0
    s = 0
    while idx < sub_6e1cd95f.length:
        mem[0] = 2
        if not arg1:
            require 10^sub_6e1cd95f[idx].field_768 > 0
            require 10^sub_6e1cd95f[idx].field_768
            mem[100] = sub_6e1cd95f[idx].field_0
            mem[132] = sub_6e1cd95f[idx].field_256
            mem[164] = 0 / 10^sub_6e1cd95f[idx].field_768
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_6e1cd95f[idx].field_0, sub_6e1cd95f[idx].field_256, 0 / 10^sub_6e1cd95f[idx].field_768
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require s + (0 / 10^sub_6e1cd95f[idx].field_768) >= s
            idx = idx + 1
            s = s + (0 / 10^sub_6e1cd95f[idx].field_768)
            continue 
        require arg1
        require arg1 * sub_6e1cd95f[idx].field_512 / arg1 == sub_6e1cd95f[idx].field_512
        require 10^sub_6e1cd95f[idx].field_768 > 0
        require 10^sub_6e1cd95f[idx].field_768
        mem[100] = sub_6e1cd95f[idx].field_0
        mem[132] = sub_6e1cd95f[idx].field_256
        mem[164] = arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args sub_6e1cd95f[idx].field_0, sub_6e1cd95f[idx].field_256, arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require s + (arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768) >= s
        idx = idx + 1
        s = s + (arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768)
        continue 
    emit Distributed(arg1, s);
}



}
