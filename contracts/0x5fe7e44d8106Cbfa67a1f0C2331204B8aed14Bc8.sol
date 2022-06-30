contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor51;

function sub_fc252feb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor51[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_59d21ad9(?) payable {
    create contract with 0 wei
                    code: code.data[908 len 4760], msg.sender, 96, 128, 0, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor51[address(create.new_address)] = 1
    emit IdentityCreated(address(create.new_address));
}

function sub_c4ff1c23(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 5048 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 5048] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 5080 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    create contract with 0 wei
                    code: code.data[908 len 4760], address(arg1), Array(len=(32 * arg2.length) + 128, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 5048 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor51[address(create.new_address)] = 1
    emit IdentityCreated(address(create.new_address));
}



}
