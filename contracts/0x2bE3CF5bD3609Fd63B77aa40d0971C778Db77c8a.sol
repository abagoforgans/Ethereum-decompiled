contract main {




// =====================  Runtime code  =====================


address hubAddress;
mapping of uint256 sub_b2ccba82;
mapping of struct sub_1535f574;
mapping of struct sub_1aa063a7;

function sub_1535f574(?) {
    return sub_1535f574[arg1].field_1280
}

function sub_19a60ed2(?) {
    return sub_1535f574[arg1].field_1536
}

function sub_1aa063a7(?) {
    return sub_1aa063a7[arg1][address(arg2)].field_512
}

function hub() {
    return hubAddress
}

function sub_38d525f1(?) {
    return sub_1aa063a7[arg1][address(arg2)].field_0
}

function sub_530bde3d(?) {
    return sub_1aa063a7[arg1][address(arg2)].field_256
}

function sub_6c833cf5(?) {
    return sub_1535f574[arg1].field_768
}

function sub_a2657315(?) {
    return sub_1535f574[arg1].field_0
}

function sub_b2ccba82(?) {
    return sub_b2ccba82[arg1]
}

function sub_b65d8f76(?) {
    return sub_1aa063a7[arg1][arg2].field_0, sub_1aa063a7[arg1][arg2].field_256, sub_1aa063a7[arg1][arg2].field_512
}

function sub_c2fb6096(?) {
    return sub_1535f574[arg1].field_512
}

function sub_d31b4fda(?) {
    return sub_1535f574[arg1].field_256
}

function offer(bytes32 arg1) {
    return sub_1535f574[arg1].field_0, 
           sub_1535f574[arg1].field_256,
           sub_1535f574[arg1].field_512,
           sub_1535f574[arg1].field_768,
           sub_1535f574[arg1].field_1024,
           sub_1535f574[arg1].field_1280,
           sub_1535f574[arg1].field_1536,
           sub_1535f574[arg1].field_1792,
           sub_1535f574[arg1].field_2048,
           sub_1535f574[arg1].field_2304
}

function sub_e845c667(?) {
    return sub_1535f574[arg1].field_2304
}

function sub_ea1ef450(?) {
    return sub_1535f574[arg1].field_1024
}

function sub_eca72480(?) {
    return sub_1535f574[arg1].field_2048
}

function sub_f06f8da7(?) {
    return sub_1535f574[arg1].field_1792
}

function _fallback() payable {
    revert
}

function sub_c7eb4522(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    hubAddress = arg1
}

function sub_df85fbd0(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_b2ccba82[arg1] = arg2
}

function sub_c8ce8d54(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_0 = arg2
}

function sub_9cdfa98d(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_512 = arg2
}

function sub_9e0bf37b(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_256 = arg2
}

function sub_b2e64acf(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_768 = arg2
}

function sub_09991ce6(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_1024 = arg2
}

function sub_0d61a8e3(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_2048 = arg2
}

function sub_2181e89a(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_1536 = arg2
}

function sub_39dbeb31(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_1792 = arg2
}

function sub_d63fea56(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_1280 = arg2
}

function sub_e3d908a3(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_2304 = arg2
}

function sub_324310ee(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1aa063a7[arg1][address(arg2)].field_0 = arg3
}

function sub_05c6ff60(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1aa063a7[arg1][address(arg2)].field_256 = arg3
}

function sub_d38be5a0(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1aa063a7[arg1][address(arg2)].field_512 = arg3
}

function sub_aa1d1f2b(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_1536 = arg2
    sub_1535f574[arg1].field_1792 = arg3
    sub_1535f574[arg1].field_2048 = arg4
}

function sub_935e88ee(?) {
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_0 = arg2
    sub_1535f574[arg1].field_256 = arg3
    sub_1535f574[arg1].field_512 = arg4
    sub_1535f574[arg1].field_768 = arg5
    if arg6 != sub_1535f574[arg1].field_1024:
        sub_1535f574[arg1].field_1024 = arg6
    sub_1535f574[arg1].field_1280 = arg7
}

function sub_17d79cd9(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(hubAddress)
    call hubAddress.0x16279055 with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Function can only be called by ontracts!'
    sub_1535f574[arg1].field_2304 = block.timestamp
    require 0 < arg2.length
    sub_1aa063a7[arg1][mem[140 len 20]].field_0 = sub_1535f574[arg1].field_768
    require 0 < arg3.length
    require 0 < arg2.length
    if sub_1aa063a7[arg1][mem[140 len 20]].field_512 != mem[(32 * arg2.length) + 191 len 1]:
        require 0 < arg3.length
        require 0 < arg2.length
        sub_1aa063a7[arg1][mem[140 len 20]].field_512 = mem[(32 * arg2.length) + 191 len 1]
        sub_1aa063a7[arg1][mem[140 len 20]].field_520 = 0
    require 1 < arg2.length
    sub_1aa063a7[arg1][mem[172 len 20]].field_0 = sub_1535f574[arg1].field_768
    require 1 < arg3.length
    require 1 < arg2.length
    if sub_1aa063a7[arg1][mem[172 len 20]].field_512 != mem[(32 * arg2.length) + 223 len 1]:
        require 1 < arg3.length
        require 1 < arg2.length
        sub_1aa063a7[arg1][mem[172 len 20]].field_512 = mem[(32 * arg2.length) + 223 len 1]
        sub_1aa063a7[arg1][mem[172 len 20]].field_520 = 0
    require 2 < arg2.length
    sub_1aa063a7[arg1][mem[204 len 20]].field_0 = sub_1535f574[arg1].field_768
    require 2 < arg3.length
    require 2 < arg2.length
    if sub_1aa063a7[arg1][mem[204 len 20]].field_512 != mem[(32 * arg2.length) + 255 len 1]:
        require 2 < arg3.length
        require 2 < arg2.length
        sub_1aa063a7[arg1][mem[204 len 20]].field_512 = mem[(32 * arg2.length) + 255 len 1]
        sub_1aa063a7[arg1][mem[204 len 20]].field_520 = 0
}



}
