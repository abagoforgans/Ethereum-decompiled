contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
mapping of uint8 stor2;
array of struct sub_6e1cd95f;
address tokenAddress;

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() payable {
    return bool(stor1)
}

function sub_6e1cd95f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6e1cd95f.length
    return sub_6e1cd95f[arg1].field_0, sub_6e1cd95f[arg1].field_256, sub_6e1cd95f[arg1].field_512, sub_6e1cd95f[arg1].field_768
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function sub_9c3e91d8(?) payable {
    return sub_6e1cd95f.length
}

function token() payable {
    return tokenAddress
}

function destroy() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceSigner() payable {
    require msg.sender
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
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

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor2[address(msg.sender)]
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function sub_763b40b5(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender
    require stor0[address(msg.sender)]
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
    require msg.sender
    require stor0[address(msg.sender)]
    if arg1 >= sub_6e1cd95f.length:
        revert with 0, 'index is out of bound'
    emit 0xe9a043fd: sub_6e1cd95f[arg1].field_512, sub_6e1cd95f[arg1].field_768, arg1, sub_6e1cd95f[arg1].field_0, sub_6e1cd95f[arg1].field_256
    idx = arg1
    while idx < sub_6e1cd95f.length - 1:
        require idx + 1 < sub_6e1cd95f.length
        require idx < sub_6e1cd95f.length
        mem[0] = 3
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
    require msg.sender
    require stor0[address(msg.sender)]
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
    mem[64] = 96
    require calldata.size - 4 >= 32
    require not stor1
    require msg.sender
    require stor2[address(msg.sender)]
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
        mem[0] = 3
        if not arg1:
            require 10^sub_6e1cd95f[idx].field_768 > 0
            require 10^sub_6e1cd95f[idx].field_768
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_6e1cd95f[idx].field_0, sub_6e1cd95f[idx].field_256, 0 / 10^sub_6e1cd95f[idx].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require s + (0 / 10^sub_6e1cd95f[idx].field_768) >= s
            mem[mem[64]] = sub_6e1cd95f[idx].field_512
            mem[mem[64] + 32] = sub_6e1cd95f[idx].field_768
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = 0 / 10^sub_6e1cd95f[idx].field_768
            emit 0x4f8320e5: sub_6e1cd95f[idx].field_512, sub_6e1cd95f[idx].field_768, arg1, 0 / 10^sub_6e1cd95f[idx].field_768, block.timestamp, sub_6e1cd95f[idx].field_0, sub_6e1cd95f[idx].field_256
            idx = idx + 1
            s = s + (0 / 10^sub_6e1cd95f[idx].field_768)
            continue 
        require arg1
        require arg1 * sub_6e1cd95f[idx].field_512 / arg1 == sub_6e1cd95f[idx].field_512
        require 10^sub_6e1cd95f[idx].field_768 > 0
        require 10^sub_6e1cd95f[idx].field_768
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args sub_6e1cd95f[idx].field_0, sub_6e1cd95f[idx].field_256, arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require s + (arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768) >= s
        mem[mem[64]] = sub_6e1cd95f[idx].field_512
        mem[mem[64] + 32] = sub_6e1cd95f[idx].field_768
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768
        emit 0x4f8320e5: sub_6e1cd95f[idx].field_512, sub_6e1cd95f[idx].field_768, arg1, arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768, block.timestamp, sub_6e1cd95f[idx].field_0, sub_6e1cd95f[idx].field_256
        idx = idx + 1
        s = s + (arg1 * sub_6e1cd95f[idx].field_512 / 10^sub_6e1cd95f[idx].field_768)
        continue 
    emit 0x47b6f7bd: arg1, s, block.timestamp
}



}
